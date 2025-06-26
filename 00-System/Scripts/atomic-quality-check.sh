#!/bin/bash
# Atomic Note Quality Checker Script
# Validates atomic notes against quality standards
# Part of the PKM Quality Assurance Framework

set -e  # Exit on any error

# Configuration
RESEARCH_DIR="/mnt/f/Research"
REPORT_FILE="${RESEARCH_DIR}/00-System/Reports/atomic-quality-$(date +%Y-%m-%d).md"
LOG_FILE="${RESEARCH_DIR}/00-System/Scripts/logs/atomic-quality-$(date +%Y-%m-%d).log"

# Create necessary directories
mkdir -p "$(dirname "$REPORT_FILE")"
mkdir -p "$(dirname "$LOG_FILE")"

# Logging function
log() {
    echo "$(date '+%Y-%m-%d %H:%M:%S'): $1" | tee -a "$LOG_FILE"
}

# Start quality report
echo "# Atomic Note Quality Assessment Report" > "$REPORT_FILE"
echo "Generated: $(date)" >> "$REPORT_FILE"
echo "" >> "$REPORT_FILE"

log "Starting Atomic Note Quality Check"

echo "=== ATOMIC NOTE QUALITY CHECK ==="
echo "Date: $(date)"
echo ""

# Find all atomic note directories
atomic_dirs=$(find "$RESEARCH_DIR" -type d -name "atomic-notes")
total_atomic_files=0
quality_issues=0

if [[ -z "$atomic_dirs" ]]; then
    echo "No atomic-notes directories found"
    echo "No atomic-notes directories found" >> "$REPORT_FILE"
    exit 0
fi

# Function to check connection density
check_connection_density() {
    local file="$1"
    local connections=0
    
    # Count various types of connections
    connections=$((connections + $(grep -c '\[\[.*\]\]' "$file" 2>/dev/null || echo 0)))  # Wiki links
    connections=$((connections + $(grep -c '^#[a-zA-Z]' "$file" 2>/dev/null || echo 0)))  # Tags
    connections=$((connections + $(grep -c '#supports\|#refutes\|#builds-on\|#source' "$file" 2>/dev/null || echo 0)))  # Semantic links
    
    echo "$connections"
}

# Function to check note state
check_note_state() {
    local file="$1"
    
    if grep -q "^state:" "$file" 2>/dev/null; then
        grep "^state:" "$file" | head -1 | sed 's/state: *//'
    else
        echo "missing"
    fi
}

# Function to check concept API compliance
check_concept_api() {
    local file="$1"
    local filename=$(basename "$file" .md)
    
    # Check for multi-concept indicators in title
    if echo "$filename" | grep -qE "(and|or|comprehensive|guide|framework|multiple|various|different)"; then
        echo "potential-violation"
    elif echo "$filename" | grep -qE "^[0-9]+-"; then
        echo "numbered-title"
    elif [[ ${#filename} -lt 10 ]]; then
        echo "too-short"
    elif [[ ${#filename} -gt 80 ]]; then
        echo "too-long"
    else
        echo "compliant"
    fi
}

# Analyze each atomic notes directory
echo "$atomic_dirs" | while read -r dir; do
    if [[ ! -d "$dir" ]]; then continue; fi
    
    domain=$(dirname "$dir" | sed "s|$RESEARCH_DIR/||" | sed 's|/.*||')
    dir_name=$(dirname "$dir" | sed "s|$RESEARCH_DIR/||")
    
    echo ""
    echo "=== ANALYZING: $dir_name/atomic-notes ==="
    echo "## Analysis: $dir_name/atomic-notes" >> "$REPORT_FILE"
    echo "" >> "$REPORT_FILE"
    
    files_in_dir=$(find "$dir" -name "*.md" -type f)
    file_count=$(echo "$files_in_dir" | wc -w)
    
    if [[ $file_count -eq 0 ]]; then
        echo "No markdown files found in $dir"
        echo "- **Status**: Empty directory" >> "$REPORT_FILE"
        echo "" >> "$REPORT_FILE"
        continue
    fi
    
    echo "Found $file_count atomic notes"
    echo "- **Total files**: $file_count" >> "$REPORT_FILE"
    
    # Quality metrics
    low_connection_count=0
    missing_state_count=0
    title_violation_count=0
    oversized_count=0
    quality_compliant_count=0
    
    echo ""
    echo "QUALITY ISSUES FOUND:"
    echo "" >> "$REPORT_FILE"
    echo "### Quality Issues" >> "$REPORT_FILE"
    echo "" >> "$REPORT_FILE"
    
    # Check each file
    echo "$files_in_dir" | while read -r file; do
        if [[ ! -f "$file" ]]; then continue; fi
        
        filename=$(basename "$file")
        line_count=$(wc -l < "$file")
        connections=$(check_connection_density "$file")
        state=$(check_note_state "$file")
        concept_api=$(check_concept_api "$file")
        
        total_atomic_files=$((total_atomic_files + 1))
        issues_found=""
        
        # Check for oversized atomic notes (should be <100 lines)
        if [[ $line_count -gt 100 ]]; then
            issues_found="${issues_found}oversized($line_count lines) "
            oversized_count=$((oversized_count + 1))
        fi
        
        # Check for low connection density (should have >2 connections)
        if [[ $connections -lt 2 ]]; then
            issues_found="${issues_found}low-connections($connections) "
            low_connection_count=$((low_connection_count + 1))
        fi
        
        # Check for missing state
        if [[ "$state" == "missing" ]]; then
            issues_found="${issues_found}no-state "
            missing_state_count=$((missing_state_count + 1))
        fi
        
        # Check concept API compliance
        case "$concept_api" in
            "potential-violation")
                issues_found="${issues_found}multi-concept-title "
                title_violation_count=$((title_violation_count + 1))
                ;;
            "numbered-title")
                issues_found="${issues_found}numbered-title "
                title_violation_count=$((title_violation_count + 1))
                ;;
            "too-short")
                issues_found="${issues_found}title-too-short "
                title_violation_count=$((title_violation_count + 1))
                ;;
            "too-long")
                issues_found="${issues_found}title-too-long "
                title_violation_count=$((title_violation_count + 1))
                ;;
        esac
        
        # Report issues if found
        if [[ -n "$issues_found" ]]; then
            echo "- **$filename**: $issues_found" >> "$REPORT_FILE"
            echo "$filename: $issues_found"
            quality_issues=$((quality_issues + 1))
        else
            quality_compliant_count=$((quality_compliant_count + 1))
        fi
    done
    
    # Summary for this directory
    echo "" >> "$REPORT_FILE"
    echo "### Directory Summary" >> "$REPORT_FILE"
    echo "" >> "$REPORT_FILE"
    {
        echo "- **Quality compliant**: $quality_compliant_count/$file_count"
        echo "- **Oversized notes**: $oversized_count"
        echo "- **Low connection density**: $low_connection_count"
        echo "- **Missing state metadata**: $missing_state_count"
        echo "- **Title violations**: $title_violation_count"
    } | tee -a "$REPORT_FILE"
    
    # Calculate compliance rate for directory
    if [[ $file_count -gt 0 ]]; then
        compliance_rate=$(echo "scale=1; $quality_compliant_count * 100 / $file_count" | bc -l 2>/dev/null || echo "N/A")
        echo "- **Compliance rate**: ${compliance_rate}%" >> "$REPORT_FILE"
        echo "Compliance rate: ${compliance_rate}%"
    fi
    
    echo "" >> "$REPORT_FILE"
    echo ""
done

# Check for atomic notes outside atomic-notes directories
echo ""
echo "ATOMIC NOTES IN WRONG LOCATIONS:"
echo "## Misplaced Atomic Notes" >> "$REPORT_FILE"
echo "" >> "$REPORT_FILE"

misplaced_notes=$(find "$RESEARCH_DIR" -name "*.md" -not -path "*/atomic-notes/*" -not -path "*/99-Archive/*" -not -path "*/Scripts/*" -not -path "*/Attachments/*" -exec grep -l "^state:.*atomic" {} \; 2>/dev/null | head -10)

if [[ -n "$misplaced_notes" ]]; then
    echo "$misplaced_notes" | while read -r file; do
        relative_path=$(echo "$file" | sed "s|$RESEARCH_DIR/||")
        echo "- $relative_path" >> "$REPORT_FILE"
        echo "$relative_path"
    done
else
    echo "No misplaced atomic notes found" >> "$REPORT_FILE"
    echo "No misplaced atomic notes found"
fi

echo "" >> "$REPORT_FILE"

# Check for proper semantic linking
echo ""
echo "SEMANTIC LINKING ANALYSIS:"
echo "## Semantic Linking Quality" >> "$REPORT_FILE"
echo "" >> "$REPORT_FILE"

semantic_links=$(grep -r "#supports\|#refutes\|#builds-on\|#source" "$RESEARCH_DIR" --include="*.md" -h | wc -l)
generic_links=$(grep -r '\[\[.*\]\]' "$RESEARCH_DIR" --include="*.md" -h | wc -l)

{
    echo "- **Semantic links found**: $semantic_links"
    echo "- **Generic wiki links**: $generic_links"
    
    if [[ $semantic_links -gt 0 ]]; then
        semantic_ratio=$(echo "scale=1; $semantic_links * 100 / ($semantic_links + $generic_links)" | bc -l 2>/dev/null || echo "N/A")
        echo "- **Semantic link ratio**: ${semantic_ratio}%"
    else
        echo "- **Semantic link ratio**: 0%"
    fi
} | tee -a "$REPORT_FILE"

echo "" >> "$REPORT_FILE"

# Generate overall statistics
echo ""
echo "OVERALL QUALITY METRICS:"
echo "## Overall Quality Assessment" >> "$REPORT_FILE"
echo "" >> "$REPORT_FILE"

total_atomic_dirs=$(echo "$atomic_dirs" | wc -l)
total_files_checked=$(find "$RESEARCH_DIR" -path "*/atomic-notes/*.md" | wc -l)

{
    echo "- **Atomic note directories**: $total_atomic_dirs"
    echo "- **Total atomic files checked**: $total_files_checked"
    echo "- **Files with quality issues**: $quality_issues"
    
    if [[ $total_files_checked -gt 0 ]]; then
        overall_compliance=$(echo "scale=1; ($total_files_checked - $quality_issues) * 100 / $total_files_checked" | bc -l 2>/dev/null || echo "N/A")
        echo "- **Overall compliance rate**: ${overall_compliance}%"
    else
        echo "- **Overall compliance rate**: N/A"
    fi
} | tee -a "$REPORT_FILE"

# Generate improvement recommendations
echo "" >> "$REPORT_FILE"
echo "## Improvement Recommendations" >> "$REPORT_FILE"
echo "" >> "$REPORT_FILE"

if [[ $oversized_count -gt 0 ]]; then
    echo "1. **Split oversized notes**: $oversized_count notes exceed 100 lines" >> "$REPORT_FILE"
fi

if [[ $low_connection_count -gt 0 ]]; then
    echo "2. **Enhance connections**: $low_connection_count notes have <2 connections" >> "$REPORT_FILE"
fi

if [[ $missing_state_count -gt 0 ]]; then
    echo "3. **Add state metadata**: $missing_state_count notes missing state information" >> "$REPORT_FILE"
fi

if [[ $title_violation_count -gt 0 ]]; then
    echo "4. **Improve titles**: $title_violation_count notes have non-atomic titles" >> "$REPORT_FILE"
fi

if [[ $semantic_links -lt $((generic_links / 4)) ]]; then
    echo "5. **Implement semantic linking**: Use typed relationships (#supports, #refutes, etc.)" >> "$REPORT_FILE"
fi

echo "" >> "$REPORT_FILE"
echo "---" >> "$REPORT_FILE"
echo "*Report generated by Atomic Quality Checker v1.0*" >> "$REPORT_FILE"
echo "*For quality improvements, see: /00-System/Learning-Systems/atomic-note-quality-standards.md*" >> "$REPORT_FILE"

log "Quality check complete. Report saved to: $REPORT_FILE"
echo ""
echo "Quality check complete!"
echo "Report saved to: $REPORT_FILE"
echo "Log saved to: $LOG_FILE"

# Exit with appropriate code based on quality issues
if [[ $quality_issues -gt $((total_files_checked / 2)) ]]; then
    log "ALERT: More than 50% of atomic notes have quality issues"
    exit 1
elif [[ $quality_issues -gt 0 ]]; then
    log "WARNING: $quality_issues atomic notes have quality issues"
    exit 2
else
    log "SUCCESS: All atomic notes meet quality standards"
    exit 0
fi