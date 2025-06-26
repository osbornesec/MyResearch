#!/bin/bash
# Automated Quality Gates and Enforcement Rules
# Prevents atomic principle violations in new content
# Part of the PKM Quality Assurance Framework

set -e  # Exit on any error

# Configuration
RESEARCH_DIR="/mnt/f/Research"
TEMP_DIR="/tmp/quality-gates"
LOG_FILE="${RESEARCH_DIR}/00-System/Scripts/logs/quality-gates-$(date +%Y-%m-%d).log"
RULES_CONFIG="${RESEARCH_DIR}/00-System/Configuration/quality-rules.yaml"

# Create necessary directories
mkdir -p "$(dirname "$LOG_FILE")"
mkdir -p "$TEMP_DIR"
mkdir -p "$(dirname "$RULES_CONFIG")"

# Logging function
log() {
    echo "$(date '+%Y-%m-%d %H:%M:%S'): $1" | tee -a "$LOG_FILE"
}

# Quality Rules Configuration
create_quality_rules_config() {
    if [[ ! -f "$RULES_CONFIG" ]]; then
        log "Creating quality rules configuration"
        cat > "$RULES_CONFIG" << 'EOF'
# Quality Gates Configuration
# Atomic Principle Enforcement Rules

# File Size Limits
max_lines_critical: 1000    # Immediate rejection
max_lines_warning: 500      # Flag for review
max_lines_atomic: 100       # Atomic notes limit
min_lines_atomic: 10        # Minimum viable atomic note

# Connection Requirements
min_connections_atomic: 2   # Minimum links for atomic notes
min_connections_evergreen: 3 # Minimum for permanent notes

# State Management
required_states:
  - fleeting
  - permanent
  - archived

# Title Quality Rules
min_title_length: 10
max_title_length: 80
forbidden_title_patterns:
  - "comprehensive"
  - "complete guide"
  - "everything about"
  - "multiple"
  - "various"
  - "different"

# Structural Requirements
required_frontmatter:
  - state
  - type
  - created
required_sections_atomic:
  - "Core Concept"
  - "Connections"

# Domain-Specific Rules
atomic_directories:
  - "01-AI-and-LLMs/atomic-notes"
  - "02-Software-Development/atomic-notes"
  - "03-Business-Analysis/atomic-notes"
  - "04-API-Documentation/atomic-notes"
  - "05-Templates-and-Generators/atomic-notes"
EOF
        log "Quality rules configuration created at $RULES_CONFIG"
    fi
}

# Function to check file size compliance
check_file_size() {
    local file="$1"
    local line_count=$(wc -l < "$file")
    local filename=$(basename "$file")
    
    # Check if it's in an atomic-notes directory
    if echo "$file" | grep -q "/atomic-notes/"; then
        if [[ $line_count -gt 100 ]]; then
            echo "REJECT: Atomic note exceeds 100 lines ($line_count)"
            return 1
        fi
    else
        if [[ $line_count -gt 1000 ]]; then
            echo "REJECT: File exceeds critical limit ($line_count lines)"
            return 1
        elif [[ $line_count -gt 500 ]]; then
            echo "WARNING: File exceeds warning limit ($line_count lines)"
            return 2
        fi
    fi
    
    return 0
}

# Function to check title quality
check_title_quality() {
    local file="$1"
    local filename=$(basename "$file" .md)
    local length=${#filename}
    
    # Check length
    if [[ $length -lt 10 ]]; then
        echo "WARNING: Title too short ($length chars)"
        return 2
    elif [[ $length -gt 80 ]]; then
        echo "WARNING: Title too long ($length chars)"
        return 2
    fi
    
    # Check for forbidden patterns
    local title_lower=$(echo "$filename" | tr '[:upper:]' '[:lower:]')
    if echo "$title_lower" | grep -qE "(comprehensive|complete guide|everything about|multiple|various|different)"; then
        echo "REJECT: Title suggests multi-concept content"
        return 1
    fi
    
    # Check for numbered patterns that suggest list content
    if echo "$filename" | grep -qE "^[0-9]+-.*-[0-9]+"; then
        echo "WARNING: Numbered title pattern suggests multi-concept"
        return 2
    fi
    
    return 0
}

# Function to check frontmatter compliance
check_frontmatter() {
    local file="$1"
    
    # Check if frontmatter exists
    if ! grep -q "^---" "$file"; then
        echo "REJECT: Missing frontmatter"
        return 1
    fi
    
    # Extract frontmatter
    local frontmatter=$(sed -n '/^---$/,/^---$/p' "$file" | head -n -1 | tail -n +2)
    
    # Check required fields
    if ! echo "$frontmatter" | grep -q "^state:"; then
        echo "REJECT: Missing state field"
        return 1
    fi
    
    if ! echo "$frontmatter" | grep -q "^type:"; then
        echo "WARNING: Missing type field"
        return 2
    fi
    
    if ! echo "$frontmatter" | grep -q "^created:"; then
        echo "WARNING: Missing created field"
        return 2
    fi
    
    return 0
}

# Function to check atomic note structure
check_atomic_structure() {
    local file="$1"
    
    # Only check files in atomic-notes directories
    if ! echo "$file" | grep -q "/atomic-notes/"; then
        return 0
    fi
    
    local content=$(cat "$file")
    
    # Check for required sections
    if ! echo "$content" | grep -q "## Core Concept"; then
        echo "WARNING: Atomic note missing 'Core Concept' section"
        return 2
    fi
    
    # Check for connections
    local connection_count=0
    connection_count=$((connection_count + $(echo "$content" | grep -c '\[\[.*\]\]')))
    connection_count=$((connection_count + $(echo "$content" | grep -c '^#[a-zA-Z]')))
    
    if [[ $connection_count -lt 2 ]]; then
        echo "WARNING: Atomic note has insufficient connections ($connection_count)"
        return 2
    fi
    
    return 0
}

# Function to check semantic linking quality
check_semantic_linking() {
    local file="$1"
    local content=$(cat "$file")
    
    # Count different types of links
    local wiki_links=$(echo "$content" | grep -c '\[\[.*\]\]' || echo 0)
    local semantic_links=$(echo "$content" | grep -c '#supports\|#refutes\|#builds-on\|#source' || echo 0)
    
    if [[ $wiki_links -gt 5 && $semantic_links -eq 0 ]]; then
        echo "SUGGESTION: Consider using semantic links (#supports, #refutes, etc.)"
        return 3
    fi
    
    return 0
}

# Function to check directory placement
check_directory_placement() {
    local file="$1"
    local content=$(cat "$file")
    
    # Check if atomic-type content is in wrong location
    if echo "$content" | grep -q "^state:.*atomic" && ! echo "$file" | grep -q "/atomic-notes/"; then
        echo "REJECT: Atomic note not in atomic-notes directory"
        return 1
    fi
    
    # Check if non-atomic content is in atomic directory
    if echo "$file" | grep -q "/atomic-notes/" && ! echo "$content" | grep -q "^state:.*atomic\|^type:.*atomic"; then
        echo "WARNING: Non-atomic content in atomic-notes directory"
        return 2
    fi
    
    return 0
}

# Main quality gate function
run_quality_gates() {
    local file="$1"
    local gate_mode="${2:-strict}" # strict, permissive, audit
    
    log "Running quality gates on: $file (mode: $gate_mode)"
    
    local issues=()
    local max_severity=0
    
    # File size check
    if result=$(check_file_size "$file"); then
        [[ -n "$result" ]] && issues+=("$result")
    else
        case $? in
            1) max_severity=$((max_severity > 1 ? max_severity : 1)); issues+=("$result") ;;
            2) max_severity=$((max_severity > 2 ? max_severity : 2)); issues+=("$result") ;;
        esac
    fi
    
    # Title quality check
    if result=$(check_title_quality "$file"); then
        [[ -n "$result" ]] && issues+=("$result")
    else
        case $? in
            1) max_severity=$((max_severity > 1 ? max_severity : 1)); issues+=("$result") ;;
            2) max_severity=$((max_severity > 2 ? max_severity : 2)); issues+=("$result") ;;
        esac
    fi
    
    # Frontmatter check
    if result=$(check_frontmatter "$file"); then
        [[ -n "$result" ]] && issues+=("$result")
    else
        case $? in
            1) max_severity=$((max_severity > 1 ? max_severity : 1)); issues+=("$result") ;;
            2) max_severity=$((max_severity > 2 ? max_severity : 2)); issues+=("$result") ;;
        esac
    fi
    
    # Atomic structure check
    if result=$(check_atomic_structure "$file"); then
        [[ -n "$result" ]] && issues+=("$result")
    else
        case $? in
            2) max_severity=$((max_severity > 2 ? max_severity : 2)); issues+=("$result") ;;
        esac
    fi
    
    # Directory placement check
    if result=$(check_directory_placement "$file"); then
        [[ -n "$result" ]] && issues+=("$result")
    else
        case $? in
            1) max_severity=$((max_severity > 1 ? max_severity : 1)); issues+=("$result") ;;
            2) max_severity=$((max_severity > 2 ? max_severity : 2)); issues+=("$result") ;;
        esac
    fi
    
    # Semantic linking check
    if result=$(check_semantic_linking "$file"); then
        [[ -n "$result" ]] && issues+=("$result")
    else
        case $? in
            3) issues+=("$result") ;;
        esac
    fi
    
    # Report results
    local filename=$(basename "$file")
    
    if [[ ${#issues[@]} -eq 0 ]]; then
        echo "✅ PASS: $filename - No issues found"
        log "PASS: $filename"
        return 0
    else
        echo "Issues found in $filename:"
        printf '%s\n' "${issues[@]}"
        
        # Determine action based on severity and mode
        case "$gate_mode" in
            "strict")
                if [[ $max_severity -eq 1 ]]; then
                    echo "❌ REJECTED: Critical issues found"
                    log "REJECTED: $filename (Critical issues)"
                    return 1
                elif [[ $max_severity -eq 2 ]]; then
                    echo "⚠️  WARNING: Issues found but file accepted"
                    log "WARNING: $filename (Non-critical issues)"
                    return 2
                fi
                ;;
            "permissive")
                if [[ $max_severity -eq 1 ]]; then
                    echo "⚠️  WARNING: Critical issues found (permissive mode)"
                    log "WARNING_PERMISSIVE: $filename (Critical issues ignored)"
                    return 2
                fi
                ;;
            "audit")
                echo "📋 AUDIT: Issues logged for review"
                log "AUDIT: $filename (${#issues[@]} issues)"
                return 3
                ;;
        esac
        
        return 0
    fi
}

# Function to scan files and apply quality gates
scan_and_gate() {
    local scan_mode="${1:-recent}" # recent, all, atomic-only
    local gate_mode="${2:-strict}"
    
    log "Starting quality gate scan (scan: $scan_mode, gate: $gate_mode)"
    
    local files_to_check=()
    
    case "$scan_mode" in
        "recent")
            # Check files modified in last 24 hours
            mapfile -t files_to_check < <(find "$RESEARCH_DIR" -name "*.md" -not -path "*/99-Archive/*" -not -path "*/Scripts/*" -mtime -1)
            ;;
        "all")
            # Check all active files
            mapfile -t files_to_check < <(find "$RESEARCH_DIR" -name "*.md" -not -path "*/99-Archive/*" -not -path "*/Scripts/*")
            ;;
        "atomic-only")
            # Check only atomic notes
            mapfile -t files_to_check < <(find "$RESEARCH_DIR" -path "*/atomic-notes/*.md")
            ;;
    esac
    
    if [[ ${#files_to_check[@]} -eq 0 ]]; then
        echo "No files to check"
        log "No files found for scanning"
        return 0
    fi
    
    echo "Checking ${#files_to_check[@]} files..."
    
    local passed=0
    local warned=0
    local rejected=0
    local audited=0
    
    for file in "${files_to_check[@]}"; do
        if [[ ! -f "$file" ]]; then continue; fi
        
        run_quality_gates "$file" "$gate_mode"
        case $? in
            0) ((passed++)) ;;
            1) ((rejected++)) ;;
            2) ((warned++)) ;;
            3) ((audited++)) ;;
        esac
    done
    
    # Summary
    echo ""
    echo "=== QUALITY GATE SUMMARY ==="
    echo "Files checked: ${#files_to_check[@]}"
    echo "Passed: $passed"
    echo "Warnings: $warned"
    echo "Rejected: $rejected"
    if [[ $audited -gt 0 ]]; then
        echo "Audited: $audited"
    fi
    
    log "Quality gate summary - Checked: ${#files_to_check[@]}, Passed: $passed, Warned: $warned, Rejected: $rejected"
    
    # Return appropriate exit code
    if [[ $rejected -gt 0 ]]; then
        return 1
    elif [[ $warned -gt 0 ]]; then
        return 2
    else
        return 0
    fi
}

# Main script execution
main() {
    create_quality_rules_config
    
    case "${1:-help}" in
        "check")
            if [[ -z "$2" ]]; then
                echo "Usage: $0 check <file_path> [strict|permissive|audit]"
                exit 1
            fi
            run_quality_gates "$2" "${3:-strict}"
            ;;
        "scan")
            scan_and_gate "${2:-recent}" "${3:-strict}"
            ;;
        "recent")
            scan_and_gate "recent" "strict"
            ;;
        "all")
            scan_and_gate "all" "permissive"
            ;;
        "atomic")
            scan_and_gate "atomic-only" "strict"
            ;;
        "audit")
            scan_and_gate "all" "audit"
            ;;
        "help"|*)
            echo "Atomic Quality Gates - Usage:"
            echo ""
            echo "  $0 check <file> [mode]     - Check single file"
            echo "  $0 scan [scope] [mode]     - Scan files"
            echo "  $0 recent                  - Check recent files (strict)"
            echo "  $0 all                     - Check all files (permissive)"
            echo "  $0 atomic                  - Check atomic notes (strict)"
            echo "  $0 audit                   - Audit all files (log only)"
            echo ""
            echo "Scopes: recent, all, atomic-only"
            echo "Modes: strict, permissive, audit"
            echo ""
            echo "Examples:"
            echo "  $0 check path/to/file.md strict"
            echo "  $0 scan recent strict"
            echo "  $0 all"
            ;;
    esac
}

# Execute main function with all arguments
main "$@"