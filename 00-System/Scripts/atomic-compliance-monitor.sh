#!/bin/bash
# Atomic Compliance Monitoring Script
# Run weekly to detect potential atomic principle violations
# Part of the PKM Quality Assurance Framework

set -e  # Exit on any error

# Configuration
RESEARCH_DIR="/mnt/f/Research"
ARCHIVE_DIR="${RESEARCH_DIR}/99-Archive"
REPORT_FILE="${RESEARCH_DIR}/00-System/Reports/atomic-compliance-$(date +%Y-%m-%d).md"
LOG_FILE="${RESEARCH_DIR}/00-System/Scripts/logs/atomic-monitor-$(date +%Y-%m-%d).log"

# Create necessary directories
mkdir -p "$(dirname "$REPORT_FILE")"
mkdir -p "$(dirname "$LOG_FILE")"

# Logging function
log() {
    echo "$(date '+%Y-%m-%d %H:%M:%S'): $1" | tee -a "$LOG_FILE"
}

# Check if file is system infrastructure (exempt from atomic compliance)
is_infrastructure_file() {
    local file="$1"
    
    # Exclude CLAUDE.md (system prompt)
    if [[ "$(basename "$file")" == "CLAUDE.md" ]]; then
        return 0
    fi
    
    # Check for infrastructure frontmatter
    if grep -q "^type: system-infrastructure" "$file" 2>/dev/null; then
        return 0
    fi
    
    # Check for atomic-compliance: infrastructure-exempt
    if grep -q "^atomic-compliance: infrastructure-exempt" "$file" 2>/dev/null; then
        return 0
    fi
    
    # Exclude specific system file patterns
    case "$file" in
        */Scripts/* | */Automation/* | */Templates/* | *README.md | *CHANGELOG.md | *LICENSE* | *.sh | *.py | *.js | *.json | *.yaml | *.yml)
            return 0
            ;;
    esac
    
    return 1
}

# Start monitoring report
echo "# Atomic Compliance Monitor Report" > "$REPORT_FILE"
echo "Generated: $(date)" >> "$REPORT_FILE"
echo "" >> "$REPORT_FILE"

log "Starting Atomic Compliance Monitor"

echo "=== ATOMIC COMPLIANCE MONITOR ===" 
echo "Date: $(date)"
echo ""

# Function to count violations and generate report
generate_violation_report() {
    local threshold=$1
    local severity=$2
    local description=$3
    
    echo "## $severity Violations ($description)" >> "$REPORT_FILE"
    echo "" >> "$REPORT_FILE"
    
    local count=0
    while IFS= read -r file; do
        if [[ -n "$file" ]] && ! is_infrastructure_file "$file"; then
            lines=$(wc -l < "$file")
            if [[ $lines -gt $threshold ]]; then
                filename=$(basename "$file")
                dirname_short=$(dirname "$file" | sed "s|.*/||")
                line_info="$filename: $lines lines ($dirname_short)"
                echo "- $line_info" >> "$REPORT_FILE"
                echo "$line_info"
                ((count++))
            fi
        fi
    done < <(find "$RESEARCH_DIR" -name "*.md" -type f -not -path "*/99-Archive/*" -not -path "*/Attachments/*" | sort)
    
    echo "" >> "$REPORT_FILE"
    echo "Total $severity violations: $count" >> "$REPORT_FILE"
    echo "" >> "$REPORT_FILE"
    
    log "$severity violations found: $count"
    return $count
}

# Check for critical violations (>1000 lines)
echo "CRITICAL VIOLATIONS (>1000 lines):"
critical_count=$(generate_violation_report 1000 "Critical" ">1000 lines - Immediate action required")

echo ""
echo "HIGH PRIORITY VIOLATIONS (500-1000 lines):"
high_count=$(generate_violation_report 500 "High Priority" "500-1000 lines - Should be atomized")

echo ""
echo "MEDIUM PRIORITY VIOLATIONS (200-500 lines):"
echo "## Medium Priority Watch List (200-500 lines)" >> "$REPORT_FILE"
echo "" >> "$REPORT_FILE"

medium_count=0
while IFS= read -r file; do
    if [[ -n "$file" ]] && ! is_infrastructure_file "$file"; then
        lines=$(wc -l < "$file")
        if [[ $lines -gt 200 && $lines -le 500 ]]; then
            filename=$(basename "$file")
            dirname_short=$(dirname "$file" | sed "s|.*/||")
            line_info="$filename: $lines lines ($dirname_short)"
            echo "- $line_info" >> "$REPORT_FILE"
            echo "$line_info"
            ((medium_count++))
        fi
    fi
done < <(find "$RESEARCH_DIR" -name "*.md" -type f -not -path "*/99-Archive/*" -not -path "*/Attachments/*" | sort)

echo "" >> "$REPORT_FILE"
echo "Total medium priority files: $medium_count" >> "$REPORT_FILE"
echo "" >> "$REPORT_FILE"

# Check for multi-concept indicators
echo ""
echo "MULTI-CONCEPT INDICATORS (Multiple ## headings with numbers):"
echo "## Multi-Concept Structure Indicators" >> "$REPORT_FILE"
echo "" >> "$REPORT_FILE"

multi_concept_files=$(grep -r "^## [0-9]" "$RESEARCH_DIR" --include="*.md" -l | grep -v "99-Archive" | grep -v "Scripts" | head -20)
if [[ -n "$multi_concept_files" ]]; then
    echo "$multi_concept_files" | while read -r file; do
        relative_path=$(echo "$file" | sed "s|$RESEARCH_DIR/||")
        echo "- $relative_path" >> "$REPORT_FILE"
        echo "$relative_path"
    done
else
    echo "No obvious multi-concept indicators found" >> "$REPORT_FILE"
    echo "No obvious multi-concept indicators found"
fi

echo "" >> "$REPORT_FILE"

# Check for missing frontmatter
echo ""
echo "MISSING FRONTMATTER:"
echo "## Missing Frontmatter (Quality Issue)" >> "$REPORT_FILE"
echo "" >> "$REPORT_FILE"

missing_frontmatter_count=0
while IFS= read -r file; do
    if [[ -n "$file" ]] && ! is_infrastructure_file "$file"; then
        if ! grep -q "^---" "$file" 2>/dev/null; then
            relative_path=$(echo "$file" | sed "s|$RESEARCH_DIR/||")
            echo "- $relative_path" >> "$REPORT_FILE"
            echo "$relative_path"
            ((missing_frontmatter_count++))
        fi
    fi
done < <(find "$RESEARCH_DIR" -name "*.md" -not -path "*/99-Archive/*" -not -path "*/Attachments/*" | head -50)

if [[ $missing_frontmatter_count -eq 0 ]]; then
    echo "All files have frontmatter" >> "$REPORT_FILE"
    echo "All files have frontmatter"
fi

echo "" >> "$REPORT_FILE"

# Check atomic note directories for compliance
echo ""
echo "ATOMIC NOTES DIRECTORY COMPLIANCE:"
echo "## Atomic Notes Directory Analysis" >> "$REPORT_FILE"
echo "" >> "$REPORT_FILE"

atomic_dirs=$(find "$RESEARCH_DIR" -type d -name "atomic-notes")
total_atomic_files=0
compliant_atomic_files=0

if [[ -n "$atomic_dirs" ]]; then
    echo "$atomic_dirs" | while read -r dir; do
        dir_name=$(dirname "$dir" | sed "s|$RESEARCH_DIR/||")
        echo "### $dir_name/atomic-notes" >> "$REPORT_FILE"
        
        file_count=$(find "$dir" -name "*.md" | wc -l)
        large_files=$(find "$dir" -name "*.md" -exec sh -c 'lines=$(wc -l < "$1"); if [ "$lines" -gt 100 ]; then basename "$1"; fi' _ {} \; | wc -l)
        
        echo "- Total files: $file_count" >> "$REPORT_FILE"
        echo "- Files >100 lines: $large_files" >> "$REPORT_FILE"
        
        if [[ $large_files -gt 0 ]]; then
            echo "- **Non-compliant atomic notes:**" >> "$REPORT_FILE"
            find "$dir" -name "*.md" -exec sh -c 'lines=$(wc -l < "$1"); if [ "$lines" -gt 100 ]; then echo "  - $(basename "$1"): $lines lines"; fi' _ {} \; >> "$REPORT_FILE"
        fi
        
        echo "" >> "$REPORT_FILE"
        echo "$dir_name: $file_count files, $large_files violations"
        
        total_atomic_files=$((total_atomic_files + file_count))
        compliant_atomic_files=$((compliant_atomic_files + file_count - large_files))
    done
else
    echo "No atomic-notes directories found" >> "$REPORT_FILE"
    echo "No atomic-notes directories found"
fi

# Generate summary statistics
echo ""
echo "SUMMARY STATISTICS:"
echo "## Summary Statistics" >> "$REPORT_FILE"
echo "" >> "$REPORT_FILE"

# Count only non-infrastructure files for compliance calculation
total_files=0
while IFS= read -r file; do
    if [[ -n "$file" ]] && ! is_infrastructure_file "$file"; then
        ((total_files++))
    fi
done < <(find "$RESEARCH_DIR" -name "*.md" -not -path "*/99-Archive/*" -not -path "*/Attachments/*")

# Count infrastructure files separately for reporting
infrastructure_files=0
while IFS= read -r file; do
    if [[ -n "$file" ]] && is_infrastructure_file "$file"; then
        ((infrastructure_files++))
    fi
done < <(find "$RESEARCH_DIR" -name "*.md" -not -path "*/99-Archive/*" -not -path "*/Attachments/*")
archived_files=$(find "$ARCHIVE_DIR" -name "*.md" 2>/dev/null | wc -l || echo 0)
total_violations=$((critical_count + high_count))
compliance_rate=$(echo "scale=1; ($total_files - $total_violations) * 100 / $total_files" | bc -l 2>/dev/null || echo "N/A")

{
    echo "- **Total knowledge content files**: $total_files"
    echo "- **Infrastructure files (exempt)**: $infrastructure_files"
    echo "- **Archived files**: $archived_files" 
    echo "- **Critical violations**: $critical_count"
    echo "- **High priority violations**: $high_count"
    echo "- **Medium priority watch**: $medium_count"
    echo "- **Total violations requiring action**: $total_violations"
    echo "- **Compliance rate**: ${compliance_rate}%"
    echo "- **Atomic notes directories**: $(echo "$atomic_dirs" | wc -l)"
    echo "- **Total atomic files**: $total_atomic_files"
    echo "- **Compliant atomic files**: $compliant_atomic_files"
} | tee -a "$REPORT_FILE"

# Generate action recommendations
echo "" >> "$REPORT_FILE"
echo "## Recommended Actions" >> "$REPORT_FILE"
echo "" >> "$REPORT_FILE"

if [[ $critical_count -gt 0 ]]; then
    echo "1. **URGENT**: Address $critical_count critical violations (>1000 lines)" >> "$REPORT_FILE"
    echo "   - These files violate atomic principles severely and should be split immediately" >> "$REPORT_FILE"
fi

if [[ $high_count -gt 0 ]]; then
    echo "2. **HIGH**: Process $high_count high priority violations (500-1000 lines)" >> "$REPORT_FILE"
    echo "   - Schedule atomization sessions for these files" >> "$REPORT_FILE"
fi

if [[ $medium_count -gt 10 ]]; then
    echo "3. **MEDIUM**: Monitor $medium_count files in watch list (200-500 lines)" >> "$REPORT_FILE"
    echo "   - Review for potential atomization opportunities" >> "$REPORT_FILE"
fi

echo "4. **MAINTENANCE**: Regular monitoring scheduled weekly" >> "$REPORT_FILE"
echo "5. **QUALITY**: Ensure all new content follows atomic principles" >> "$REPORT_FILE"

echo "" >> "$REPORT_FILE"
echo "---" >> "$REPORT_FILE"
echo "*Report generated by Atomic Compliance Monitor v1.0*" >> "$REPORT_FILE"
echo "*Next scheduled run: $(date -d '+7 days')*" >> "$REPORT_FILE"

log "Monitoring complete. Report saved to: $REPORT_FILE"
echo ""
echo "Full report saved to: $REPORT_FILE"
echo "Log saved to: $LOG_FILE"

# Exit with error code if critical violations found
if [[ $critical_count -gt 0 ]]; then
    log "ALERT: $critical_count critical violations require immediate attention"
    exit 1
elif [[ $total_violations -gt 0 ]]; then
    log "WARNING: $total_violations violations found"
    exit 2
else
    log "SUCCESS: No critical violations found"
    exit 0
fi