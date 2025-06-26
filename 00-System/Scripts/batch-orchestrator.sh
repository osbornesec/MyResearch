#!/bin/bash
# Scalable Batch Orchestrator - Enterprise Knowledge Processing Pipeline
# Coordinates parallel processing, resource optimization, and quality assurance
# Designed for processing hundreds of documents with intelligent resource management

set -e

# Configuration
RESEARCH_DIR="/mnt/f/Research"
INGEST_DIR="${RESEARCH_DIR}/00-System/Ingest"
SCRIPTS_DIR="${RESEARCH_DIR}/00-System/Scripts"
REPORTS_DIR="${RESEARCH_DIR}/00-System/Reports"
TEMP_DIR="/tmp/batch-processing-$$"
LOG_FILE="${SCRIPTS_DIR}/logs/batch-orchestrator-$(date +%Y-%m-%d).log"

# Processing configuration
MAX_PARALLEL_JOBS=4
BATCH_SIZE=10
RATE_LIMIT_DELAY=1
MEMORY_THRESHOLD=80
CPU_THRESHOLD=80

# Statistics tracking
TOTAL_DOCUMENTS=0
PROCESSED_DOCUMENTS=0
FAILED_DOCUMENTS=0
ATOMIC_NOTES_CREATED=0
CONNECTIONS_DISCOVERED=0
PROCESSING_TIME=0

# Create necessary directories
mkdir -p "$TEMP_DIR"
mkdir -p "$(dirname "$LOG_FILE")"
mkdir -p "$REPORTS_DIR"

# Cleanup function
cleanup() {
    log "INFO" "Cleaning up temporary files"
    rm -rf "$TEMP_DIR"
    
    # Kill any background jobs
    jobs -p | xargs -r kill 2>/dev/null || true
}
trap cleanup EXIT

# Logging function with structured output
log() {
    local level="$1"
    local message="$2"
    local timestamp=$(date '+%Y-%m-%d %H:%M:%S')
    echo "[$timestamp] [$level]: $message" | tee -a "$LOG_FILE"
}

# Color codes
RED='\033[0;31m'
YELLOW='\033[1;33m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
NC='\033[0m'

# System resource monitoring
check_system_resources() {
    local cpu_usage=$(top -bn1 | grep "Cpu(s)" | awk '{print $2}' | sed 's/%us,//')
    local memory_usage=$(free | awk 'FNR==2{printf "%.0f", $3/($3+$4)*100}')
    
    # Convert to integer for comparison
    cpu_usage=${cpu_usage%.*}
    memory_usage=${memory_usage%.*}
    
    if [[ $cpu_usage -gt $CPU_THRESHOLD || $memory_usage -gt $MEMORY_THRESHOLD ]]; then
        log "WARNING" "High resource usage: CPU ${cpu_usage}%, Memory ${memory_usage}%"
        return 1
    fi
    
    log "DEBUG" "Resource usage: CPU ${cpu_usage}%, Memory ${memory_usage}%"
    return 0
}

# Intelligent batch size adjustment based on document complexity
adjust_batch_size() {
    local document_dir="$1"
    local avg_size=$(find "$document_dir" -name "*.md" -exec wc -l {} \; | awk '{sum+=$1; count++} END {if(count>0) print int(sum/count); else print 100}')
    
    if [[ $avg_size -gt 1000 ]]; then
        echo "3"  # Large documents - smaller batches
    elif [[ $avg_size -gt 500 ]]; then
        echo "6"  # Medium documents
    else
        echo "12" # Small documents - larger batches
    fi
}

# Priority-based document queue management
create_processing_queue() {
    local source_dir="$1"
    local queue_file="$TEMP_DIR/processing_queue.txt"
    
    log "INFO" "Creating processing queue from: $source_dir"
    
    # Priority 1: High-value technical documents
    find "$source_dir" -name "*.md" -exec grep -l "ATRG\|Critical\|Security\|Configuration" {} \; | sed 's/$/|priority-1/' > "$queue_file"
    
    # Priority 2: API and technical documentation
    find "$source_dir" -name "*.md" -exec grep -l "API\|endpoint\|authentication\|procedure" {} \; | grep -v -f <(cut -d'|' -f1 "$queue_file") | sed 's/$/|priority-2/' >> "$queue_file"
    
    # Priority 3: General documentation
    find "$source_dir" -name "*.md" -type f | grep -v -f <(cut -d'|' -f1 "$queue_file") | sed 's/$/|priority-3/' >> "$queue_file"
    
    # Shuffle within priority groups for balanced processing
    sort "$queue_file" | shuf --random-source=<(date +%s | sha256sum) > "${queue_file}.shuffled"
    mv "${queue_file}.shuffled" "$queue_file"
    
    local total_docs=$(wc -l < "$queue_file")
    log "INFO" "Processing queue created with $total_docs documents"
    echo "$queue_file"
}

# Process single document with error handling and metrics
process_document_safe() {
    local doc_file="$1"
    local priority="$2"
    local worker_id="$3"
    
    local start_time=$(date +%s)
    local doc_name=$(basename "$doc_file")
    local temp_log="$TEMP_DIR/worker_${worker_id}_$(date +%s).log"
    
    log "INFO" "Worker $worker_id processing: $doc_name (Priority: $priority)"
    
    # Process with timeout and error handling
    if timeout 300 "$SCRIPTS_DIR/document-processor.sh" single "$doc_file" > "$temp_log" 2>&1; then
        local end_time=$(date +%s)
        local processing_time=$((end_time - start_time))
        
        # Extract metrics from processing log
        local notes_created=$(grep -c "Created atomic note:" "$temp_log" 2>/dev/null || echo "0")
        local connections_found=$(grep "Connections discovered:" "$temp_log" | tail -1 | awk '{print $NF}' || echo "0")
        
        # Update global statistics (thread-safe)
        (
            flock 200
            echo "$(($(cat "$TEMP_DIR/processed_count.tmp" 2>/dev/null || echo "0") + 1))" > "$TEMP_DIR/processed_count.tmp"
            echo "$(($(cat "$TEMP_DIR/notes_count.tmp" 2>/dev/null || echo "0") + notes_created))" > "$TEMP_DIR/notes_count.tmp"
            echo "$(($(cat "$TEMP_DIR/connections_count.tmp" 2>/dev/null || echo "0") + connections_found))" > "$TEMP_DIR/connections_count.tmp"
            echo "$(($(cat "$TEMP_DIR/time_count.tmp" 2>/dev/null || echo "0") + processing_time))" > "$TEMP_DIR/time_count.tmp"
        ) 200>"$TEMP_DIR/stats.lock"
        
        log "INFO" "Worker $worker_id completed: $doc_name (${processing_time}s, ${notes_created} notes, ${connections_found} connections)"
        echo "SUCCESS|$doc_name|$processing_time|$notes_created|$connections_found"
    else
        local end_time=$(date +%s)
        local processing_time=$((end_time - start_time))
        
        # Update failure count
        (
            flock 200
            echo "$(($(cat "$TEMP_DIR/failed_count.tmp" 2>/dev/null || echo "0") + 1))" > "$TEMP_DIR/failed_count.tmp"
        ) 200>"$TEMP_DIR/stats.lock"
        
        log "ERROR" "Worker $worker_id failed: $doc_name (${processing_time}s)"
        echo "FAILED|$doc_name|$processing_time|0|0"
    fi
    
    # Cleanup worker log
    rm -f "$temp_log"
}

# Parallel batch processing with intelligent load balancing
process_batch_parallel() {
    local queue_file="$1"
    local batch_size="$2"
    local max_workers="$3"
    
    log "INFO" "Starting parallel batch processing (batch_size: $batch_size, max_workers: $max_workers)"
    echo -e "${PURPLE}🚀 Parallel Batch Processing${NC}"
    echo "Batch size: $batch_size | Max workers: $max_workers"
    echo ""
    
    local batch_num=0
    local active_jobs=0
    local worker_id=0
    
    # Initialize statistics files
    echo "0" > "$TEMP_DIR/processed_count.tmp"
    echo "0" > "$TEMP_DIR/failed_count.tmp"
    echo "0" > "$TEMP_DIR/notes_count.tmp"
    echo "0" > "$TEMP_DIR/connections_count.tmp"
    echo "0" > "$TEMP_DIR/time_count.tmp"
    
    while IFS='|' read -r doc_file priority; do
        if [[ ! -f "$doc_file" ]]; then
            continue
        fi
        
        # Wait for available worker slot
        while [[ $active_jobs -ge $max_workers ]]; do
            wait -n  # Wait for any background job to complete
            ((active_jobs--))
            
            # Check system resources
            if ! check_system_resources; then
                log "WARNING" "High resource usage detected, reducing worker count"
                max_workers=$((max_workers - 1))
                if [[ $max_workers -lt 1 ]]; then
                    max_workers=1
                fi
            fi
        done
        
        # Launch worker
        ((worker_id++))
        process_document_safe "$doc_file" "$priority" "$worker_id" &
        ((active_jobs++))
        
        # Rate limiting
        sleep "$RATE_LIMIT_DELAY"
        
        # Progress reporting
        if [[ $((worker_id % 10)) -eq 0 ]]; then
            local processed=$(cat "$TEMP_DIR/processed_count.tmp" 2>/dev/null || echo "0")
            local failed=$(cat "$TEMP_DIR/failed_count.tmp" 2>/dev/null || echo "0")
            echo -e "${BLUE}📊 Progress: $processed processed, $failed failed, $active_jobs active workers${NC}"
        fi
        
    done < "$queue_file"
    
    # Wait for all remaining jobs to complete
    log "INFO" "Waiting for remaining workers to complete"
    wait
    
    # Collect final statistics
    PROCESSED_DOCUMENTS=$(cat "$TEMP_DIR/processed_count.tmp" 2>/dev/null || echo "0")
    FAILED_DOCUMENTS=$(cat "$TEMP_DIR/failed_count.tmp" 2>/dev/null || echo "0")
    ATOMIC_NOTES_CREATED=$(cat "$TEMP_DIR/notes_count.tmp" 2>/dev/null || echo "0")
    CONNECTIONS_DISCOVERED=$(cat "$TEMP_DIR/connections_count.tmp" 2>/dev/null || echo "0")
    PROCESSING_TIME=$(cat "$TEMP_DIR/time_count.tmp" 2>/dev/null || echo "0")
    
    log "INFO" "Parallel batch processing completed"
}

# Run connection discovery on processed notes
run_connection_discovery() {
    local mode="$1"
    
    log "INFO" "Running connection discovery in $mode mode"
    echo -e "${CYAN}🔗 Running Connection Discovery${NC}"
    
    if [[ -x "$SCRIPTS_DIR/connection-discovery.sh" ]]; then
        if "$SCRIPTS_DIR/connection-discovery.sh" "$mode" > "$TEMP_DIR/connection_discovery.log" 2>&1; then
            # Extract connection statistics
            local connections=$(grep "Total Connections Created" "$TEMP_DIR/connection_discovery.log" | awk '{print $NF}' || echo "0")
            CONNECTIONS_DISCOVERED=$((CONNECTIONS_DISCOVERED + connections))
            echo "   Connections created: $connections"
            log "INFO" "Connection discovery completed successfully"
        else
            log "WARNING" "Connection discovery failed or not available"
            echo "   Connection discovery: FAILED"
        fi
    else
        log "WARNING" "Connection discovery script not found"
        echo "   Connection discovery: SKIPPED"
    fi
}

# Comprehensive quality validation
run_quality_validation() {
    log "INFO" "Running comprehensive quality validation"
    echo -e "${GREEN}🔍 Quality Validation${NC}"
    
    if [[ -x "$SCRIPTS_DIR/monitoring-orchestrator.sh" ]]; then
        if "$SCRIPTS_DIR/monitoring-orchestrator.sh" quality > "$TEMP_DIR/quality_validation.log" 2>&1; then
            echo "   Quality validation: PASSED"
            log "INFO" "Quality validation completed successfully"
        else
            echo "   Quality validation: WARNINGS"
            log "WARNING" "Quality validation found issues"
        fi
    else
        log "WARNING" "Quality validation script not found"
        echo "   Quality validation: SKIPPED"
    fi
}

# Generate comprehensive processing report
generate_comprehensive_report() {
    local start_time="$1"
    local end_time="$2"
    local total_time=$((end_time - start_time))
    
    local report_file="${REPORTS_DIR}/batch-processing-$(date +%Y-%m-%d-%H%M).md"
    
    cat > "$report_file" << EOF
# Comprehensive Batch Processing Report

**Processing Session**: $(date '+%Y-%m-%d %H:%M:%S')
**Duration**: ${total_time} seconds ($(($total_time / 60)) minutes)

## Executive Summary

This batch processing session successfully processed **$PROCESSED_DOCUMENTS documents** with a **$(calculate_success_rate)% success rate**, generating **$ATOMIC_NOTES_CREATED atomic notes** and discovering **$CONNECTIONS_DISCOVERED connections**.

## Processing Statistics

### Volume Metrics
- **Total Documents Queued**: $TOTAL_DOCUMENTS
- **Successfully Processed**: $PROCESSED_DOCUMENTS
- **Failed Processing**: $FAILED_DOCUMENTS
- **Success Rate**: $(calculate_success_rate)%

### Knowledge Generation
- **Atomic Notes Created**: $ATOMIC_NOTES_CREATED
- **Connections Discovered**: $CONNECTIONS_DISCOVERED
- **Average Notes per Document**: $(calculate_avg_notes_per_doc)
- **Average Connections per Document**: $(calculate_avg_connections_per_doc)

### Performance Metrics
- **Total Processing Time**: ${PROCESSING_TIME} seconds
- **Average Time per Document**: $(calculate_avg_time_per_doc) seconds
- **Throughput**: $(calculate_throughput) documents/minute
- **Efficiency Score**: $(calculate_efficiency_score)%

## Processing Configuration

- **Batch Size**: $BATCH_SIZE documents
- **Parallel Workers**: $MAX_PARALLEL_JOBS workers
- **Rate Limiting**: ${RATE_LIMIT_DELAY}s delay
- **Resource Monitoring**: CPU < ${CPU_THRESHOLD}%, Memory < ${MEMORY_THRESHOLD}%

## Quality Assurance

$(analyze_quality_metrics)

## Knowledge Network Impact

### Before Processing
- Existing atomic notes: $(count_existing_atomic_notes)
- Existing connections: $(count_existing_connections)

### After Processing  
- Total atomic notes: $(($(count_existing_atomic_notes) + ATOMIC_NOTES_CREATED))
- Total connections: $(($(count_existing_connections) + CONNECTIONS_DISCOVERED))
- Network growth: $(calculate_network_growth)%

## Processing Distribution

### By Document Type
$(analyze_document_types)

### By Priority
$(analyze_priority_distribution)

### By Processing Time
$(analyze_processing_time_distribution)

## Failure Analysis

$(analyze_failures)

## System Resource Utilization

$(analyze_resource_utilization)

## Recommendations

### Immediate Actions
1. Review failed documents for manual processing
2. Validate generated atomic notes for quality
3. Establish cross-domain connections manually where appropriate
4. Run full monitoring suite to ensure vault health

### Optimization Opportunities
$(generate_optimization_recommendations)

### Next Processing Session
- Recommended batch size: $(recommend_batch_size)
- Optimal worker count: $(recommend_worker_count)
- Suggested improvements: $(suggest_improvements)

## Integration Commands

### Quality Validation
\`\`\`bash
# Run comprehensive quality checks
$SCRIPTS_DIR/monitoring-orchestrator.sh full

# Validate atomic note compliance
$SCRIPTS_DIR/atomic-compliance-monitor.sh
\`\`\`

### Connection Enhancement
\`\`\`bash
# Discover additional connections
$SCRIPTS_DIR/connection-discovery.sh batch 15 100

# Validate connection quality
$SCRIPTS_DIR/connection-discovery.sh validate
\`\`\`

### Performance Monitoring
\`\`\`bash
# Monitor vault health
$SCRIPTS_DIR/monitoring-orchestrator.sh dashboard

# Check processing statistics
$SCRIPTS_DIR/batch-orchestrator.sh stats
\`\`\`

## Appendix

### Processing Timeline
$(generate_processing_timeline)

### Error Log Summary
$(summarize_error_logs)

### Resource Usage Graphs
[Resource monitoring data would be included here]

---

**Report Generated**: $(date)
**Processing Engine**: Scalable Batch Orchestrator v1.0
**Integration Status**: Fully integrated with PKM infrastructure
EOF

    echo -e "${GREEN}📊 Comprehensive report: $report_file${NC}"
    log "INFO" "Comprehensive processing report generated"
}

# Helper functions for report generation
calculate_success_rate() {
    if [[ $TOTAL_DOCUMENTS -gt 0 ]]; then
        echo $(( (PROCESSED_DOCUMENTS * 100) / TOTAL_DOCUMENTS ))
    else
        echo "0"
    fi
}

calculate_avg_notes_per_doc() {
    if [[ $PROCESSED_DOCUMENTS -gt 0 ]]; then
        echo $(( ATOMIC_NOTES_CREATED / PROCESSED_DOCUMENTS ))
    else
        echo "0"
    fi
}

calculate_avg_connections_per_doc() {
    if [[ $PROCESSED_DOCUMENTS -gt 0 ]]; then
        echo $(( CONNECTIONS_DISCOVERED / PROCESSED_DOCUMENTS ))
    else
        echo "0"
    fi
}

calculate_avg_time_per_doc() {
    if [[ $PROCESSED_DOCUMENTS -gt 0 ]]; then
        echo $(( PROCESSING_TIME / PROCESSED_DOCUMENTS ))
    else
        echo "0"
    fi
}

calculate_throughput() {
    if [[ $PROCESSING_TIME -gt 0 ]]; then
        echo $(( (PROCESSED_DOCUMENTS * 60) / PROCESSING_TIME ))
    else
        echo "0"
    fi
}

calculate_efficiency_score() {
    # Complex efficiency calculation based on multiple factors
    local success_rate=$(calculate_success_rate)
    local time_efficiency=$((100 - (PROCESSING_TIME / PROCESSED_DOCUMENTS > 60 ? 50 : 0)))
    echo $(( (success_rate + time_efficiency) / 2 ))
}

count_existing_atomic_notes() {
    find "$RESEARCH_DIR" -name "*.md" -path "*/atomic-notes/*" | wc -l
}

count_existing_connections() {
    find "$RESEARCH_DIR" -name "*.md" -path "*/atomic-notes/*" -exec grep -c "\[\[.*\]\]" {} \; 2>/dev/null | awk '{sum+=$1} END {print sum+0}'
}

calculate_network_growth() {
    local existing=$(count_existing_atomic_notes)
    if [[ $existing -gt 0 ]]; then
        echo $(( (ATOMIC_NOTES_CREATED * 100) / existing ))
    else
        echo "100"
    fi
}

# Main orchestration function
orchestrate_batch_processing() {
    local mode="${1:-standard}"
    local source_dir="${2:-$INGEST_DIR/raw-sources}"
    local max_documents="${3:-100}"
    
    local start_time=$(date +%s)
    
    log "INFO" "Starting batch processing orchestration"
    echo -e "${PURPLE}🎯 Batch Processing Orchestration${NC}"
    echo "Mode: $mode | Source: $source_dir | Max docs: $max_documents"
    echo "Time: $(date)"
    echo ""
    
    # Verify source directory exists and has content
    if [[ ! -d "$source_dir" ]]; then
        log "ERROR" "Source directory does not exist: $source_dir"
        exit 1
    fi
    
    local available_docs=$(find "$source_dir" -name "*.md" -type f | wc -l)
    if [[ $available_docs -eq 0 ]]; then
        log "WARNING" "No documents found in source directory"
        echo -e "${YELLOW}⚠️  No documents to process${NC}"
        return 0
    fi
    
    # Set processing limits
    TOTAL_DOCUMENTS=$(( available_docs < max_documents ? available_docs : max_documents ))
    
    # Adjust configuration based on mode
    case "$mode" in
        "turbo")
            MAX_PARALLEL_JOBS=6
            BATCH_SIZE=15
            RATE_LIMIT_DELAY=0.5
            ;;
        "careful")
            MAX_PARALLEL_JOBS=2
            BATCH_SIZE=5
            RATE_LIMIT_DELAY=2
            ;;
        "enterprise")
            MAX_PARALLEL_JOBS=8
            BATCH_SIZE=20
            RATE_LIMIT_DELAY=0.2
            ;;
        *)  # standard
            MAX_PARALLEL_JOBS=4
            BATCH_SIZE=$(adjust_batch_size "$source_dir")
            RATE_LIMIT_DELAY=1
            ;;
    esac
    
    echo "Configuration: $MAX_PARALLEL_JOBS workers, batch size $BATCH_SIZE"
    echo ""
    
    # Phase 1: Create processing queue
    echo -e "${BLUE}📋 Phase 1: Queue Creation${NC}"
    local queue_file=$(create_processing_queue "$source_dir")
    
    # Limit queue to max_documents
    head -"$TOTAL_DOCUMENTS" "$queue_file" > "${queue_file}.limited"
    mv "${queue_file}.limited" "$queue_file"
    
    # Phase 2: Parallel document processing
    echo -e "${BLUE}⚙️  Phase 2: Document Processing${NC}"
    process_batch_parallel "$queue_file" "$BATCH_SIZE" "$MAX_PARALLEL_JOBS"
    
    # Phase 3: Connection discovery
    echo -e "${BLUE}🔗 Phase 3: Connection Discovery${NC}"
    run_connection_discovery "batch"
    
    # Phase 4: Quality validation
    echo -e "${BLUE}🔍 Phase 4: Quality Validation${NC}"
    run_quality_validation
    
    # Phase 5: Report generation
    echo -e "${BLUE}📊 Phase 5: Report Generation${NC}"
    local end_time=$(date +%s)
    generate_comprehensive_report "$start_time" "$end_time"
    
    # Final summary
    local total_time=$((end_time - start_time))
    echo ""
    echo -e "${GREEN}🎉 BATCH PROCESSING COMPLETED${NC}"
    echo "==============================="
    echo "Documents processed: $PROCESSED_DOCUMENTS/$TOTAL_DOCUMENTS"
    echo "Success rate: $(calculate_success_rate)%"
    echo "Atomic notes created: $ATOMIC_NOTES_CREATED"
    echo "Connections discovered: $CONNECTIONS_DISCOVERED"
    echo "Total time: ${total_time}s ($(($total_time / 60))m)"
    echo "Throughput: $(calculate_throughput) docs/min"
    echo ""
    
    log "INFO" "Batch processing orchestration completed successfully"
}

# Command-line interface
main() {
    case "${1:-help}" in
        "standard")
            orchestrate_batch_processing "standard" "${2:-$INGEST_DIR/raw-sources}" "${3:-50}"
            ;;
        "turbo")
            orchestrate_batch_processing "turbo" "${2:-$INGEST_DIR/raw-sources}" "${3:-100}"
            ;;
        "careful")
            orchestrate_batch_processing "careful" "${2:-$INGEST_DIR/raw-sources}" "${3:-25}"
            ;;
        "enterprise")
            orchestrate_batch_processing "enterprise" "${2:-$INGEST_DIR/raw-sources}" "${3:-200}"
            ;;
        "stats")
            echo "Batch Processing Statistics"
            echo "=========================="
            echo "Available raw sources: $(find "$INGEST_DIR/raw-sources" -name "*.md" | wc -l)"
            echo "Quality review pending: $(find "$INGEST_DIR/quality-review" -name "*.md" | wc -l)"
            echo "Total atomic notes: $(count_existing_atomic_notes)"
            echo "Total connections: $(count_existing_connections)"
            echo "Processing reports: $(ls -1 "$REPORTS_DIR"/batch-processing-*.md 2>/dev/null | wc -l)"
            echo "Last batch: $(ls -t "$REPORTS_DIR"/batch-processing-*.md 2>/dev/null | head -1 | xargs basename 2>/dev/null || echo "None")"
            ;;
        "monitor")
            echo "Real-time Processing Monitor"
            echo "==========================="
            echo "System resources: $(check_system_resources && echo "HEALTHY" || echo "HIGH USAGE")"
            echo "Active processing: $(pgrep -f document-processor | wc -l) workers"
            echo "Temp files: $(ls -1 "$TEMP_DIR"/*.tmp 2>/dev/null | wc -l) active"
            ;;
        "help"|*)
            echo "Scalable Batch Orchestrator - Enterprise Knowledge Processing"
            echo ""
            echo "Usage: $0 <mode> [source_dir] [max_documents]"
            echo ""
            echo "Processing Modes:"
            echo "  standard           - Balanced processing (4 workers, 50 docs)"
            echo "  turbo              - Fast processing (6 workers, 100 docs)"  
            echo "  careful            - Conservative processing (2 workers, 25 docs)"
            echo "  enterprise         - High-volume processing (8 workers, 200 docs)"
            echo ""
            echo "Monitoring Commands:"
            echo "  stats              - Show processing statistics"
            echo "  monitor            - Real-time processing monitor"
            echo ""
            echo "Examples:"
            echo "  $0 standard                           - Process 50 docs with standard settings"
            echo "  $0 turbo /path/to/docs 100           - Fast processing of 100 docs"
            echo "  $0 enterprise /custom/path 500       - Enterprise processing of 500 docs"
            echo ""
            echo "Integration:"
            echo "  Works with: document-processor.sh, connection-discovery.sh"
            echo "  Monitors: monitoring-orchestrator.sh"
            echo "  Reports: $REPORTS_DIR"
            echo ""
            echo "Resource Requirements:"
            echo "  - CPU: <${CPU_THRESHOLD}% recommended"
            echo "  - Memory: <${MEMORY_THRESHOLD}% recommended"
            echo "  - Disk: Sufficient space for atomic notes and reports"
            ;;
    esac
}

# Execute main function
main "$@"