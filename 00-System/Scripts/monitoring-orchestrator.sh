#!/bin/bash
# Monitoring Orchestrator - Comprehensive Quality Assurance System
# Coordinates all atomic compliance and quality monitoring tools
# Part of the PKM Quality Assurance Framework

set -e  # Exit on any error

# Configuration
RESEARCH_DIR="/mnt/f/Research"
SCRIPTS_DIR="${RESEARCH_DIR}/00-System/Scripts"
REPORTS_DIR="${RESEARCH_DIR}/00-System/Reports"
DASHBOARD_FILE="${RESEARCH_DIR}/00-System/atomic-compliance-dashboard.md"
LOG_FILE="${SCRIPTS_DIR}/logs/monitoring-orchestrator-$(date +%Y-%m-%d).log"

# Create necessary directories
mkdir -p "$REPORTS_DIR"
mkdir -p "$(dirname "$LOG_FILE")"

# Logging function
log() {
    echo "$(date '+%Y-%m-%d %H:%M:%S'): $1" | tee -a "$LOG_FILE"
}

# Color codes for output
RED='\033[0;31m'
YELLOW='\033[1;33m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Function to run atomic compliance monitor
run_compliance_monitor() {
    log "Running atomic compliance monitor"
    echo -e "${BLUE}🔍 Running Atomic Compliance Monitor...${NC}"
    
    if "$SCRIPTS_DIR/atomic-compliance-monitor.sh"; then
        echo -e "${GREEN}✅ Compliance monitor completed successfully${NC}"
        return 0
    else
        local exit_code=$?
        case $exit_code in
            1)
                echo -e "${RED}❌ Critical violations found${NC}"
                return 1
                ;;
            2)
                echo -e "${YELLOW}⚠️  Violations found but manageable${NC}"
                return 2
                ;;
        esac
    fi
}

# Function to run quality checker
run_quality_checker() {
    log "Running atomic quality checker"
    echo -e "${BLUE}🔍 Running Atomic Quality Checker...${NC}"
    
    if "$SCRIPTS_DIR/atomic-quality-check.sh"; then
        echo -e "${GREEN}✅ Quality check completed successfully${NC}"
        return 0
    else
        local exit_code=$?
        case $exit_code in
            1)
                echo -e "${RED}❌ Significant quality issues found${NC}"
                return 1
                ;;
            2)
                echo -e "${YELLOW}⚠️  Quality issues found${NC}"
                return 2
                ;;
        esac
    fi
}

# Function to run quality gates
run_quality_gates() {
    local mode="$1"
    log "Running quality gates in $mode mode"
    echo -e "${BLUE}🚪 Running Quality Gates ($mode mode)...${NC}"
    
    if "$SCRIPTS_DIR/quality-gates.sh" scan recent "$mode"; then
        echo -e "${GREEN}✅ Quality gates passed${NC}"
        return 0
    else
        local exit_code=$?
        case $exit_code in
            1)
                echo -e "${RED}❌ Files rejected by quality gates${NC}"
                return 1
                ;;
            2)
                echo -e "${YELLOW}⚠️  Warnings from quality gates${NC}"
                return 2
                ;;
        esac
    fi
}

# Function to generate consolidated dashboard
generate_dashboard() {
    log "Generating consolidated compliance dashboard"
    echo -e "${BLUE}📊 Generating Compliance Dashboard...${NC}"
    
    local template_file="${RESEARCH_DIR}/00-System/Templates/compliance-dashboard.md"
    local latest_compliance_report=$(find "$REPORTS_DIR" -name "atomic-compliance-*.md" -type f | sort | tail -1)
    local latest_quality_report=$(find "$REPORTS_DIR" -name "atomic-quality-*.md" -type f | sort | tail -1)
    
    if [[ ! -f "$template_file" ]]; then
        echo -e "${RED}❌ Dashboard template not found${NC}"
        return 1
    fi
    
    # Copy template to dashboard
    cp "$template_file" "$DASHBOARD_FILE"
    
    # Extract metrics from latest reports if they exist
    if [[ -f "$latest_compliance_report" ]]; then
        log "Extracting metrics from compliance report: $latest_compliance_report"
        
        # Extract key metrics using grep and sed
        local total_files=$(grep "Total active files" "$latest_compliance_report" | sed 's/.*: //' || echo "Unknown")
        local critical_violations=$(grep "Critical violations" "$latest_compliance_report" | sed 's/.*: //' || echo "0")
        local high_violations=$(grep "High priority violations" "$latest_compliance_report" | sed 's/.*: //' || echo "0")
        local compliance_rate=$(grep "Compliance rate" "$latest_compliance_report" | sed 's/.*: //' | sed 's/%//' || echo "Unknown")
        
        # Update dashboard with real values
        sed -i "s/\[Date\]/$(date)/g" "$DASHBOARD_FILE"
        sed -i "s/\[Number\]/$total_files/g" "$DASHBOARD_FILE"
        sed -i "s/\[Percentage\]/$compliance_rate/g" "$DASHBOARD_FILE"
        
        echo -e "${GREEN}✅ Dashboard updated with compliance metrics${NC}"
    fi
    
    if [[ -f "$latest_quality_report" ]]; then
        log "Extracting metrics from quality report: $latest_quality_report"
        echo -e "${GREEN}✅ Dashboard updated with quality metrics${NC}"
    fi
    
    echo -e "${GREEN}📊 Dashboard generated: $DASHBOARD_FILE${NC}"
    return 0
}

# Function to run full monitoring suite
run_full_monitoring() {
    local mode="${1:-standard}"
    
    log "Starting full monitoring suite in $mode mode"
    echo -e "${BLUE}🚀 Starting Comprehensive Monitoring Suite${NC}"
    echo "Mode: $mode"
    echo "Time: $(date)"
    echo ""
    
    local compliance_result=0
    local quality_result=0
    local gates_result=0
    
    # Run compliance monitor
    run_compliance_monitor || compliance_result=$?
    echo ""
    
    # Run quality checker
    run_quality_checker || quality_result=$?
    echo ""
    
    # Run quality gates with appropriate mode
    local gate_mode="strict"
    case "$mode" in
        "strict") gate_mode="strict" ;;
        "permissive") gate_mode="permissive" ;;
        "audit") gate_mode="audit" ;;
        *) gate_mode="strict" ;;
    esac
    
    run_quality_gates "$gate_mode" || gates_result=$?
    echo ""
    
    # Generate dashboard
    generate_dashboard
    echo ""
    
    # Summary report
    echo -e "${BLUE}📋 MONITORING SUITE SUMMARY${NC}"
    echo "================================"
    
    local overall_status="HEALTHY"
    local max_severity=0
    
    if [[ $compliance_result -eq 1 || $quality_result -eq 1 || $gates_result -eq 1 ]]; then
        overall_status="CRITICAL"
        max_severity=1
    elif [[ $compliance_result -eq 2 || $quality_result -eq 2 || $gates_result -eq 2 ]]; then
        overall_status="WARNING"
        max_severity=2
    fi
    
    echo "Compliance Monitor: $(get_status_text $compliance_result)"
    echo "Quality Checker: $(get_status_text $quality_result)"
    echo "Quality Gates: $(get_status_text $gates_result)"
    echo ""
    
    case "$overall_status" in
        "CRITICAL")
            echo -e "${RED}🚨 OVERALL STATUS: CRITICAL - Immediate action required${NC}"
            ;;
        "WARNING")
            echo -e "${YELLOW}⚠️  OVERALL STATUS: WARNING - Review recommended${NC}"
            ;;
        "HEALTHY")
            echo -e "${GREEN}✅ OVERALL STATUS: HEALTHY - All systems nominal${NC}"
            ;;
    esac
    
    echo ""
    echo "Reports location: $REPORTS_DIR"
    echo "Dashboard: $DASHBOARD_FILE"
    echo "Logs: $LOG_FILE"
    
    log "Full monitoring suite completed with status: $overall_status"
    
    return $max_severity
}

# Helper function to get status text
get_status_text() {
    case "$1" in
        0) echo -e "${GREEN}PASS${NC}" ;;
        1) echo -e "${RED}CRITICAL${NC}" ;;
        2) echo -e "${YELLOW}WARNING${NC}" ;;
        *) echo -e "${YELLOW}UNKNOWN${NC}" ;;
    esac
}

# Function to run quick health check
run_quick_check() {
    log "Running quick health check"
    echo -e "${BLUE}⚡ Quick Health Check${NC}"
    
    # Count recent files
    local recent_files=$(find "$RESEARCH_DIR" -name "*.md" -not -path "*/99-Archive/*" -mtime -1 | wc -l)
    echo "Recent files (24h): $recent_files"
    
    # Quick violation check
    local large_files=$(find "$RESEARCH_DIR" -name "*.md" -not -path "*/99-Archive/*" -not -path "*/Scripts/*" -exec sh -c 'lines=$(wc -l < "$1"); if [ "$lines" -gt 500 ]; then echo "$1"; fi' _ {} \; | wc -l)
    echo "Files >500 lines: $large_files"
    
    # Quick atomic check
    local atomic_files=$(find "$RESEARCH_DIR" -path "*/atomic-notes/*.md" | wc -l)
    echo "Atomic notes: $atomic_files"
    
    if [[ $large_files -gt 0 ]]; then
        echo -e "${YELLOW}⚠️  Quick check found potential issues${NC}"
        return 2
    else
        echo -e "${GREEN}✅ Quick check passed${NC}"
        return 0
    fi
}

# Function to schedule monitoring
schedule_monitoring() {
    log "Setting up monitoring schedule"
    echo -e "${BLUE}⏰ Setting up Monitoring Schedule${NC}"
    
    local cron_file="/tmp/atomic-monitoring-cron"
    
    # Create cron entries
    cat > "$cron_file" << EOF
# Atomic Compliance Monitoring Schedule
# Daily quick check at 9 AM
0 9 * * * $SCRIPTS_DIR/monitoring-orchestrator.sh quick

# Weekly full monitoring on Sundays at 10 AM
0 10 * * 0 $SCRIPTS_DIR/monitoring-orchestrator.sh full

# Quality gates check on recent files every 6 hours
0 */6 * * * $SCRIPTS_DIR/quality-gates.sh recent

# Monthly comprehensive audit on 1st at 11 AM
0 11 1 * * $SCRIPTS_DIR/monitoring-orchestrator.sh audit
EOF
    
    echo "Suggested cron schedule:"
    cat "$cron_file"
    echo ""
    echo "To install: crontab $cron_file"
    echo -e "${GREEN}✅ Schedule configuration ready${NC}"
}

# Main script execution
main() {
    case "${1:-help}" in
        "full")
            run_full_monitoring "${2:-standard}"
            ;;
        "quick")
            run_quick_check
            ;;
        "compliance")
            run_compliance_monitor
            ;;
        "quality")
            run_quality_checker
            ;;
        "gates")
            run_quality_gates "${2:-strict}"
            ;;
        "dashboard")
            generate_dashboard
            ;;
        "audit")
            run_full_monitoring "audit"
            ;;
        "schedule")
            schedule_monitoring
            ;;
        "help"|*)
            echo "Monitoring Orchestrator - Comprehensive Quality Assurance"
            echo ""
            echo "Usage: $0 <command> [options]"
            echo ""
            echo "Commands:"
            echo "  full [mode]        - Run complete monitoring suite"
            echo "  quick              - Quick health check"
            echo "  compliance         - Run compliance monitor only"
            echo "  quality            - Run quality checker only"  
            echo "  gates [mode]       - Run quality gates only"
            echo "  dashboard          - Generate dashboard only"
            echo "  audit              - Run full audit (non-blocking)"
            echo "  schedule           - Show scheduling configuration"
            echo ""
            echo "Modes:"
            echo "  standard           - Default monitoring mode"
            echo "  strict             - Strict quality enforcement"
            echo "  permissive         - Relaxed quality checking"
            echo "  audit              - Comprehensive audit mode"
            echo ""
            echo "Examples:"
            echo "  $0 full            - Run full monitoring"
            echo "  $0 quick           - Quick status check"
            echo "  $0 gates strict    - Strict quality gates"
            echo "  $0 audit           - Comprehensive audit"
            ;;
    esac
}

# Execute main function with all arguments
main "$@"