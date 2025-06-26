#!/bin/bash
# Intelligent Document Processor - Automated Knowledge Extraction Pipeline
# Processes raw documents into atomic notes following PKM framework
# Integrates with existing monitoring infrastructure

set -e  # Exit on any error

# Configuration
RESEARCH_DIR="/mnt/f/Research"
INGEST_DIR="${RESEARCH_DIR}/00-System/Ingest"
SCRIPTS_DIR="${RESEARCH_DIR}/00-System/Scripts"
TEMPLATES_DIR="${RESEARCH_DIR}/00-System/Templates"
ATOMIC_NOTES_DIR="${RESEARCH_DIR}/00-System/atomic-notes"
LOG_FILE="${SCRIPTS_DIR}/logs/document-processor-$(date +%Y-%m-%d).log"

# Processing statistics
PROCESSED_COUNT=0
ATOMIC_NOTES_CREATED=0
CONNECTIONS_DISCOVERED=0
QUALITY_FAILURES=0

# Create necessary directories
mkdir -p "$ATOMIC_NOTES_DIR"
mkdir -p "$(dirname "$LOG_FILE")"

# Logging function with structured output
log() {
    local level="$1"
    local message="$2"
    echo "$(date '+%Y-%m-%d %H:%M:%S') [$level]: $message" | tee -a "$LOG_FILE"
}

# Color codes for output
RED='\033[0;31m'
YELLOW='\033[1;33m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
NC='\033[0m' # No Color

# Document classification based on content patterns
classify_document() {
    local file="$1"
    local filename=$(basename "$file")
    
    # Check for Check Point SK articles
    if [[ "$filename" =~ ^sk[0-9]+ ]] || grep -q "Check Point\|ATRG\|ClusterXL\|VPN\|SecureXL" "$file" 2>/dev/null; then
        echo "technical-checkpoint"
        return
    fi
    
    # Check for API documentation
    if grep -q "API\|REST\|endpoint\|authentication\|parameters" "$file" 2>/dev/null; then
        echo "api-documentation"
        return
    fi
    
    # Check for research papers
    if grep -q "Abstract\|Introduction\|Methodology\|Conclusion\|References" "$file" 2>/dev/null; then
        echo "research-paper"
        return
    fi
    
    # Check for configuration guides
    if grep -q "configuration\|setup\|installation\|deployment" "$file" 2>/dev/null; then
        echo "configuration-guide"
        return
    fi
    
    # Default classification
    echo "general-knowledge"
}

# Extract atomic concepts using pattern-based analysis
extract_atomic_concepts() {
    local file="$1"
    local doc_type="$2"
    local output_dir="$3"
    
    log "INFO" "Extracting atomic concepts from $(basename "$file")"
    
    local concepts_extracted=0
    
    case "$doc_type" in
        "technical-checkpoint")
            concepts_extracted=$(extract_checkpoint_concepts "$file" "$output_dir")
            ;;
        "api-documentation")
            concepts_extracted=$(extract_api_concepts "$file" "$output_dir")
            ;;
        "research-paper")
            concepts_extracted=$(extract_research_concepts "$file" "$output_dir")
            ;;
        "configuration-guide")
            concepts_extracted=$(extract_config_concepts "$file" "$output_dir")
            ;;
        *)
            concepts_extracted=$(extract_general_concepts "$file" "$output_dir")
            ;;
    esac
    
    echo "$concepts_extracted"
}

# Extract Check Point technical concepts
extract_checkpoint_concepts() {
    local file="$1"
    local output_dir="$2"
    local concepts=0
    
    # Extract technical procedures
    while IFS= read -r line; do
        if [[ "$line" =~ ^#+[[:space:]]*(.+) ]]; then
            local heading="${BASH_REMATCH[1]}"
            if [[ "$heading" =~ (Configuration|Troubleshooting|Procedure|Solution|Resolution) ]]; then
                create_atomic_note "$heading" "$output_dir" "checkpoint-procedure" "$file"
                ((concepts++))
            fi
        fi
    done < "$file"
    
    # Extract command patterns
    grep -n "^\s*\(cpinfo\|fw\|cphaprob\|cpconfig\|clish\)" "$file" 2>/dev/null | while IFS=: read -r line_num command; do
        local clean_command=$(echo "$command" | sed 's/^\s*//' | cut -d' ' -f1)
        create_atomic_note "$clean_command Command Usage" "$output_dir" "checkpoint-command" "$file"
        ((concepts++))
    done
    
    echo "$concepts"
}

# Extract API documentation concepts
extract_api_concepts() {
    local file="$1"
    local output_dir="$2"
    local concepts=0
    
    # Extract endpoint definitions
    grep -n "^\s*\(GET\|POST\|PUT\|DELETE\|PATCH\)" "$file" 2>/dev/null | while IFS=: read -r line_num endpoint; do
        local clean_endpoint=$(echo "$endpoint" | sed 's/^\s*//')
        create_atomic_note "API Endpoint: $clean_endpoint" "$output_dir" "api-endpoint" "$file"
        ((concepts++))
    done
    
    # Extract authentication methods
    grep -n "\(authentication\|auth\|token\|key\)" "$file" 2>/dev/null | head -5 | while IFS=: read -r line_num auth_line; do
        create_atomic_note "Authentication Method" "$output_dir" "api-auth" "$file"
        ((concepts++))
        break  # Only create one auth concept per document
    done
    
    echo "$concepts"
}

# Extract research paper concepts
extract_research_concepts() {
    local file="$1"
    local output_dir="$2"
    local concepts=0
    
    # Extract key findings from abstract or conclusion
    if grep -n "Abstract\|ABSTRACT" "$file" >/dev/null; then
        create_atomic_note "Research Abstract Key Points" "$output_dir" "research-finding" "$file"
        ((concepts++))
    fi
    
    # Extract methodology
    if grep -n "Methodology\|Methods\|Approach" "$file" >/dev/null; then
        create_atomic_note "Research Methodology" "$output_dir" "research-method" "$file"
        ((concepts++))
    fi
    
    echo "$concepts"
}

# Extract configuration concepts
extract_config_concepts() {
    local file="$1"
    local output_dir="$2"
    local concepts=0
    
    # Extract configuration steps
    grep -n "^\s*[0-9]\+\." "$file" 2>/dev/null | head -10 | while IFS=: read -r line_num step; do
        local clean_step=$(echo "$step" | sed 's/^\s*[0-9]\+\.\s*//')
        if [[ ${#clean_step} -gt 20 && ${#clean_step} -lt 100 ]]; then
            create_atomic_note "Configuration Step: $clean_step" "$output_dir" "config-step" "$file"
            ((concepts++))
        fi
    done
    
    echo "$concepts"
}

# Extract general concepts using headings and key phrases
extract_general_concepts() {
    local file="$1"
    local output_dir="$2"
    local concepts=0
    
    # Extract section headings as potential concepts
    while IFS= read -r line; do
        if [[ "$line" =~ ^#+[[:space:]]*(.+) ]]; then
            local heading="${BASH_REMATCH[1]}"
            if [[ ${#heading} -gt 10 && ${#heading} -lt 80 ]]; then
                create_atomic_note "$heading" "$output_dir" "general-concept" "$file"
                ((concepts++))
            fi
        fi
    done < "$file"
    
    echo "$concepts"
}

# Create atomic note with proper metadata and formatting
create_atomic_note() {
    local title="$1"
    local output_dir="$2"
    local concept_type="$3"
    local source_file="$4"
    
    # Sanitize title for filename
    local filename=$(echo "$title" | tr '[:upper:]' '[:lower:]' | sed 's/[^a-z0-9]/-/g' | sed 's/--*/-/g' | sed 's/^-\|-$//g')
    local note_file="${output_dir}/${filename}.md"
    
    # Avoid creating duplicate notes
    if [[ -f "$note_file" ]]; then
        return
    fi
    
    # Create atomic note with PKM-compliant structure
    cat > "$note_file" << EOF
---
state: fleeting
type: atomic-note
concept-type: $concept_type
created: $(date '+%Y-%m-%d')
source: $(basename "$source_file")
source-path: $source_file
atomic-compliance: validated
connection-candidates: []
---

# $title

## Core Concept
[Single concept extracted from source - requires manual refinement]

## Context
[Brief context explaining the relevance and application of this concept]

## Source Reference
- **Document**: $(basename "$source_file")
- **Type**: $concept_type
- **Extraction Date**: $(date '+%Y-%m-%d')

## Connection Potential
[Likely connections to existing vault concepts - to be developed]

## Next Steps
- [ ] Refine concept definition
- [ ] Establish connections to related notes
- [ ] Transition from fleeting to permanent status
EOF

    log "INFO" "Created atomic note: $filename"
    ((ATOMIC_NOTES_CREATED++))
}

# Discover potential connections to existing vault content
discover_connections() {
    local note_file="$1"
    local connections_found=0
    
    # Extract key terms from the note
    local key_terms=$(grep -h "^# \|## " "$note_file" | sed 's/^#* //' | tr '\n' ' ')
    
    # Search for related content in existing atomic notes
    if [[ -d "$RESEARCH_DIR/01-AI-and-LLMs/atomic-notes" ]]; then
        for term in $key_terms; do
            if [[ ${#term} -gt 3 ]]; then
                local matches=$(grep -l "$term" "$RESEARCH_DIR"/*/atomic-notes/*.md 2>/dev/null | wc -l)
                if [[ $matches -gt 0 ]]; then
                    log "INFO" "Found $matches potential connections for term: $term"
                    ((connections_found++))
                fi
            fi
        done
    fi
    
    echo "$connections_found"
}

# Process a single document through the complete pipeline
process_document() {
    local file="$1"
    local filename=$(basename "$file")
    
    log "INFO" "Processing document: $filename"
    echo -e "${BLUE}📄 Processing: $filename${NC}"
    
    # Step 1: Classify document
    local doc_type=$(classify_document "$file")
    log "INFO" "Classified as: $doc_type"
    echo "   Type: $doc_type"
    
    # Step 2: Create output directory for atomic notes
    local output_dir="${ATOMIC_NOTES_DIR}/$(date +%Y-%m-%d)-$(echo "$filename" | sed 's/\.md$//')"
    mkdir -p "$output_dir"
    
    # Step 3: Extract atomic concepts
    local concepts_count=$(extract_atomic_concepts "$file" "$doc_type" "$output_dir")
    echo "   Concepts extracted: $concepts_count"
    
    # Step 4: Discover connections for each created note
    local total_connections=0
    for note in "$output_dir"/*.md; do
        if [[ -f "$note" ]]; then
            local note_connections=$(discover_connections "$note")
            ((total_connections += note_connections))
        fi
    done
    echo "   Connections discovered: $total_connections"
    
    # Step 5: Move processed file
    local processed_dir="${INGEST_DIR}/processed/$(date +%Y-%m-%d)"
    mkdir -p "$processed_dir"
    mv "$file" "$processed_dir/"
    
    # Update statistics
    ((PROCESSED_COUNT++))
    ((CONNECTIONS_DISCOVERED += total_connections))
    
    echo -e "${GREEN}   ✅ Processing completed${NC}"
    log "INFO" "Document processing completed: $filename"
}

# Batch process all documents in raw-sources
process_batch() {
    local mode="${1:-standard}"
    local max_files="${2:-10}"
    
    log "INFO" "Starting batch processing in $mode mode (max $max_files files)"
    echo -e "${PURPLE}🚀 Starting Batch Document Processing${NC}"
    echo "Mode: $mode | Max files: $max_files"
    echo ""
    
    local processed_in_batch=0
    
    # Find documents to process
    while IFS= read -r file && [[ $processed_in_batch -lt $max_files ]]; do
        if [[ -f "$file" && "$file" =~ \.md$ ]]; then
            process_document "$file"
            ((processed_in_batch++))
            
            # Add delay for rate limiting
            if [[ "$mode" == "careful" ]]; then
                sleep 2
            fi
        fi
    done < <(find "$INGEST_DIR/raw-sources" -name "*.md" -type f | head -"$max_files")
    
    # Generate processing summary
    generate_processing_summary
}

# Generate comprehensive processing summary
generate_processing_summary() {
    local summary_file="${INGEST_DIR}/processed/processing-summary-$(date +%Y-%m-%d).md"
    
    cat > "$summary_file" << EOF
# Document Processing Summary

**Date**: $(date)
**Processing Session**: $(date '+%Y-%m-%d %H:%M:%S')

## Statistics

- **Documents Processed**: $PROCESSED_COUNT
- **Atomic Notes Created**: $ATOMIC_NOTES_CREATED
- **Connections Discovered**: $CONNECTIONS_DISCOVERED
- **Quality Failures**: $QUALITY_FAILURES

## Processing Rate

- **Average Notes per Document**: $(( ATOMIC_NOTES_CREATED / (PROCESSED_COUNT > 0 ? PROCESSED_COUNT : 1) ))
- **Average Connections per Document**: $(( CONNECTIONS_DISCOVERED / (PROCESSED_COUNT > 0 ? PROCESSED_COUNT : 1) ))

## Next Steps

1. Review atomic notes in \`$ATOMIC_NOTES_DIR\`
2. Refine fleeting notes to permanent status
3. Establish cross-domain connections
4. Run quality validation using existing monitoring infrastructure

## Integration with Monitoring

Process completed. Run quality checks:
\`\`\`bash
$SCRIPTS_DIR/monitoring-orchestrator.sh quality
\`\`\`
EOF

    echo -e "${GREEN}📊 Processing summary: $summary_file${NC}"
    log "INFO" "Processing summary generated"
}

# Main processing coordinator
main() {
    case "${1:-help}" in
        "single")
            if [[ -n "$2" && -f "$2" ]]; then
                process_document "$2"
            else
                echo "Usage: $0 single <file_path>"
                exit 1
            fi
            ;;
        "batch")
            local max_files="${2:-10}"
            process_batch "standard" "$max_files"
            ;;
        "careful")
            local max_files="${2:-5}"
            process_batch "careful" "$max_files"
            ;;
        "classify")
            if [[ -n "$2" && -f "$2" ]]; then
                echo "Document type: $(classify_document "$2")"
            else
                echo "Usage: $0 classify <file_path>"
                exit 1
            fi
            ;;
        "stats")
            echo "Document Processing Statistics"
            echo "=============================="
            echo "Raw sources pending: $(find "$INGEST_DIR/raw-sources" -name "*.md" | wc -l)"
            echo "Quality review pending: $(find "$INGEST_DIR/quality-review" -name "*.md" | wc -l)"
            echo "Atomic notes created: $(find "$ATOMIC_NOTES_DIR" -name "*.md" 2>/dev/null | wc -l)"
            echo "Last processing: $(ls -t "$INGEST_DIR/processed"/processing-summary-*.md 2>/dev/null | head -1 | xargs basename 2>/dev/null || echo "None")"
            ;;
        "help"|*)
            echo "Intelligent Document Processor - Automated Knowledge Extraction"
            echo ""
            echo "Usage: $0 <command> [options]"
            echo ""
            echo "Commands:"
            echo "  batch [max]        - Process batch of documents (default: 10)"
            echo "  careful [max]      - Careful processing with delays (default: 5)"
            echo "  single <file>      - Process single document"
            echo "  classify <file>    - Classify document type only"
            echo "  stats              - Show processing statistics"
            echo ""
            echo "Examples:"
            echo "  $0 batch 20        - Process up to 20 documents"
            echo "  $0 careful 5       - Careful processing of 5 documents"
            echo "  $0 single doc.md   - Process specific document"
            echo ""
            echo "Integration:"
            echo "  Integrates with monitoring: ./monitoring-orchestrator.sh"
            echo "  Creates atomic notes in: $ATOMIC_NOTES_DIR"
            echo "  Moves processed files to: $INGEST_DIR/processed/"
            ;;
    esac
}

# Execute main function
main "$@"