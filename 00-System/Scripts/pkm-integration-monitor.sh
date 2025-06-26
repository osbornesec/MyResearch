#!/bin/bash
# PKM Integration Monitor
# Integrates atomic compliance monitoring with existing PKM infrastructure
# Connects to spaced repetition system and vault intelligence

set -e  # Exit on any error

# Configuration
RESEARCH_DIR="/mnt/f/Research"
SCRIPTS_DIR="${RESEARCH_DIR}/00-System/Scripts"
LEARNING_DIR="${RESEARCH_DIR}/00-System/Learning-Systems"
REPORTS_DIR="${RESEARCH_DIR}/00-System/Reports"
LOG_FILE="${SCRIPTS_DIR}/logs/pkm-integration-$(date +%Y-%m-%d).log"

# PKM Integration Configuration
SPACED_REP_FILE="${LEARNING_DIR}/spaced-repetition-framework.md"
VAULT_INTELLIGENCE_FILE="${RESEARCH_DIR}/00-System/PKM-Infrastructure/vault-intelligence-system.md"
INTEGRATION_CONFIG="${RESEARCH_DIR}/00-System/Configuration/pkm-integration.yaml"

# Create necessary directories
mkdir -p "$(dirname "$LOG_FILE")"
mkdir -p "$(dirname "$INTEGRATION_CONFIG")"

# Logging function
log() {
    echo "$(date '+%Y-%m-%d %H:%M:%S'): $1" | tee -a "$LOG_FILE"
}

# Create PKM integration configuration
create_integration_config() {
    if [[ ! -f "$INTEGRATION_CONFIG" ]]; then
        log "Creating PKM integration configuration"
        cat > "$INTEGRATION_CONFIG" << 'EOF'
# PKM Integration Configuration
# Connects atomic monitoring with existing PKM infrastructure

# Spaced Repetition Integration
spaced_repetition:
  enabled: true
  review_schedule:
    critical_violations: daily
    quality_issues: weekly
    new_atomic_notes: 3_days
    compliance_principles: weekly
  
  priority_concepts:
    - atomic_note_principles
    - evergreen_note_standards
    - lyt_organizational_framework
    - semantic_linking_patterns
    - quality_gate_criteria

# Vault Intelligence Integration
vault_intelligence:
  enabled: true
  monitoring_integration:
    auto_surface_violations: true
    suggest_atomization: true
    track_quality_trends: true
    generate_insights: true
  
  proactive_suggestions:
    atomic_candidates: true
    connection_opportunities: true
    synthesis_triggers: true

# Learning Systems Integration
learning_systems:
  quality_checkpoints: true
  progress_tracking: true
  skill_development: true
  knowledge_evolution: true

# Automation Triggers
automation:
  violation_alerts: true
  quality_degradation_warnings: true
  success_pattern_recognition: true
  adaptive_thresholds: true
EOF
        log "PKM integration configuration created"
    fi
}

# Function to integrate with spaced repetition system
integrate_spaced_repetition() {
    log "Integrating monitoring with spaced repetition system"
    
    local latest_compliance_report=$(find "$REPORTS_DIR" -name "atomic-compliance-*.md" -type f | sort | tail -1)
    local latest_quality_report=$(find "$REPORTS_DIR" -name "atomic-quality-*.md" -type f | sort | tail -1)
    
    if [[ ! -f "$latest_compliance_report" ]] && [[ ! -f "$latest_quality_report" ]]; then
        log "No recent reports found for spaced repetition integration"
        return 1
    fi
    
    # Generate review questions based on monitoring results
    local review_file="${LEARNING_DIR}/atomic-compliance-review-$(date +%Y-%m-%d).md"
    
    cat > "$review_file" << 'EOF'
# Atomic Compliance Review Session

> **Purpose**: Reinforce atomic principles through active recall
> **Generated**: [DATE]
> **Review Type**: Compliance-focused spaced repetition

## Core Concept Questions

### Atomic Note Principles
1. **Q**: What is the maximum recommended line count for an atomic note?
   **A**: 100 lines maximum, with 50-75 lines being optimal for most concepts

2. **Q**: What are the three essential components of atomic note frontmatter?
   **A**: state (fleeting/permanent), type (atomic-note/source/etc.), created (timestamp)

3. **Q**: How should atomic notes handle multi-concept content?
   **A**: Split into separate atomic notes, each focusing on a single, indivisible concept

### Quality Standards
4. **Q**: What is the minimum connection density for a quality atomic note?
   **A**: At least 2-3 meaningful connections (wiki links, semantic links, or tags)

5. **Q**: What title patterns indicate potential atomic principle violations?
   **A**: "comprehensive", "complete guide", "everything about", numbered lists, "various"

6. **Q**: Which semantic link types enhance connection quality?
   **A**: #supports, #refutes, #builds-on, #source, #analogous-to, #contrasts-with

## Practical Application

### Current Vault Status
EOF

    # Add current metrics if reports exist
    if [[ -f "$latest_compliance_report" ]]; then
        echo "" >> "$review_file"
        echo "#### Latest Compliance Metrics" >> "$review_file"
        grep -E "(Total active files|Critical violations|Compliance rate)" "$latest_compliance_report" | sed 's/^/- /' >> "$review_file"
    fi
    
    if [[ -f "$latest_quality_report" ]]; then
        echo "" >> "$review_file"
        echo "#### Latest Quality Metrics" >> "$review_file"
        grep -E "(Total atomic files|Quality compliant|Overall compliance)" "$latest_quality_report" | sed 's/^/- /' >> "$review_file"
    fi
    
    cat >> "$review_file" << 'EOF'

### Reflection Questions
7. **Q**: Based on current metrics, what is the highest priority improvement area?
   **A**: [Review reports and identify critical violations or quality gaps]

8. **Q**: Which domain shows the best atomic compliance, and why?
   **A**: [Analyze domain-specific compliance rates and contributing factors]

9. **Q**: What patterns do you notice in violation types?
   **A**: [Identify common violation categories and underlying causes]

## Action Planning

### This Week's Focus
- [ ] Address any critical violations (>1000 lines)
- [ ] Review quality issues in atomic notes
- [ ] Practice atomic thinking in new content creation

### Knowledge Reinforcement
- [ ] Apply atomic principles to one existing large file
- [ ] Create 2-3 new atomic notes following quality standards
- [ ] Establish connections between related atomic concepts

## Success Metrics
- **Recall Accuracy**: [Score 1-10 for question responses]
- **Application Success**: [Rate confidence in applying principles]
- **Pattern Recognition**: [Ability to identify violations quickly]

---
*Generated by PKM Integration Monitor*  
*Next review: [NEXT_DATE]*
EOF

    # Replace placeholders
    sed -i "s/\[DATE\]/$(date)/g" "$review_file"
    sed -i "s/\[NEXT_DATE\]/$(date -d '+3 days')/g" "$review_file"
    
    log "Spaced repetition review session created: $review_file"
    return 0
}

# Function to integrate with vault intelligence
integrate_vault_intelligence() {
    log "Integrating monitoring with vault intelligence system"
    
    local intelligence_update="${RESEARCH_DIR}/00-System/PKM-Infrastructure/monitoring-intelligence-$(date +%Y-%m-%d).md"
    
    cat > "$intelligence_update" << 'EOF'
# Vault Intelligence - Monitoring Integration Update

> **Purpose**: Enhanced vault intelligence through atomic compliance monitoring
> **Generated**: [DATE]
> **Integration Status**: Active

## Intelligent Insights from Monitoring

### Quality Pattern Recognition
EOF

    # Analyze patterns from recent monitoring
    local pattern_count=0
    
    # Check for common violation patterns
    if find "$RESEARCH_DIR" -name "*.md" -not -path "*/99-Archive/*" -exec wc -l {} + | awk '$1 > 500' | wc -l | grep -q -E "[5-9][0-9]|[1-9][0-9][0-9]"; then
        echo "- **Pattern Detected**: Multiple large files suggest need for domain-wide atomization" >> "$intelligence_update"
        ((pattern_count++))
    fi
    
    # Check atomic directory health
    local atomic_dirs=$(find "$RESEARCH_DIR" -type d -name "atomic-notes" | wc -l)
    local atomic_files=$(find "$RESEARCH_DIR" -path "*/atomic-notes/*.md" | wc -l)
    
    if [[ $atomic_files -gt 0 ]]; then
        local avg_files_per_dir=$((atomic_files / atomic_dirs))
        if [[ $avg_files_per_dir -gt 20 ]]; then
            echo "- **Pattern Detected**: High atomic note density suggests successful adoption" >> "$intelligence_update"
            ((pattern_count++))
        elif [[ $avg_files_per_dir -lt 5 ]]; then
            echo "- **Pattern Detected**: Low atomic note density suggests underutilization" >> "$intelligence_update"
            ((pattern_count++))
        fi
    fi
    
    if [[ $pattern_count -eq 0 ]]; then
        echo "- No significant patterns detected in current monitoring cycle" >> "$intelligence_update"
    fi
    
    cat >> "$intelligence_update" << 'EOF'

### Proactive Suggestions

#### Atomization Candidates
EOF

    # Find potential atomization candidates
    local candidates=$(find "$RESEARCH_DIR" -name "*.md" -not -path "*/99-Archive/*" -not -path "*/Scripts/*" -not -path "*/atomic-notes/*" -exec sh -c 'lines=$(wc -l < "$1"); if [ "$lines" -gt 200 ] && [ "$lines" -lt 500 ]; then basename "$1"; fi' _ {} \; | head -5)
    
    if [[ -n "$candidates" ]]; then
        echo "$candidates" | while read -r candidate; do
            echo "- **$candidate**: Medium priority for atomic decomposition" >> "$intelligence_update"
        done
    else
        echo "- No immediate atomization candidates identified" >> "$intelligence_update"
    fi
    
    cat >> "$intelligence_update" << 'EOF'

#### Connection Opportunities
EOF

    # Identify connection opportunities
    local connection_opportunities=0
    
    # Find atomic notes with low connection density
    local low_connection_notes=$(find "$RESEARCH_DIR" -path "*/atomic-notes/*.md" -exec sh -c 'connections=$(grep -c "\[\[.*\]\]" "$1" 2>/dev/null || echo 0); if [ "$connections" -lt 2 ]; then basename "$1"; fi' _ {} \; | head -3)
    
    if [[ -n "$low_connection_notes" ]]; then
        echo "$low_connection_notes" | while read -r note; do
            echo "- **$note**: Requires additional connections for network integration" >> "$intelligence_update"
            ((connection_opportunities++))
        done
    fi
    
    if [[ $connection_opportunities -eq 0 ]]; then
        echo "- Connection density appears healthy across atomic notes" >> "$intelligence_update"
    fi
    
    cat >> "$intelligence_update" << 'EOF'

### Synthesis Triggers

#### Cross-Domain Patterns
EOF

    # Analyze cross-domain patterns
    local domains=("01-AI-and-LLMs" "02-Software-Development" "03-Business-Analysis" "04-API-Documentation" "05-Templates-and-Generators")
    local synthesis_suggestions=0
    
    for domain in "${domains[@]}"; do
        local domain_atomic_count=$(find "$RESEARCH_DIR/$domain" -path "*/atomic-notes/*.md" 2>/dev/null | wc -l)
        if [[ $domain_atomic_count -gt 10 ]]; then
            echo "- **$domain**: Ready for cross-domain synthesis (${domain_atomic_count} atomic notes)" >> "$intelligence_update"
            ((synthesis_suggestions++))
        fi
    done
    
    if [[ $synthesis_suggestions -eq 0 ]]; then
        echo "- Domains building atomic note density for future synthesis" >> "$intelligence_update"
    fi
    
    cat >> "$intelligence_update" << 'EOF'

## Integration Health Metrics

### Monitoring System Performance
EOF

    # Add system health metrics
    local recent_reports=$(find "$REPORTS_DIR" -name "*.md" -mtime -7 | wc -l)
    local scripts_available=$(find "$SCRIPTS_DIR" -name "*.sh" -executable | wc -l)
    
    {
        echo "- **Recent Reports Generated**: $recent_reports (last 7 days)"
        echo "- **Available Monitoring Scripts**: $scripts_available"
        echo "- **Integration Status**: Active and functioning"
        echo "- **Last Intelligence Update**: $(date)"
    } >> "$intelligence_update"
    
    cat >> "$intelligence_update" << 'EOF'

### Recommended Actions

#### Immediate (This Week)
- [ ] Review and address any critical violations
- [ ] Enhance connections in low-density atomic notes
- [ ] Apply atomic principles to new content creation

#### Strategic (This Month)
- [ ] Plan cross-domain synthesis sessions
- [ ] Refine atomic note templates based on quality patterns
- [ ] Optimize monitoring automation based on usage patterns

#### Long-term (This Quarter)
- [ ] Develop advanced pattern recognition capabilities
- [ ] Implement predictive quality analytics
- [ ] Create adaptive learning integration

---
*Generated by Vault Intelligence Integration*  
*Next update: Triggered by monitoring events*
EOF

    # Replace placeholders
    sed -i "s/\[DATE\]/$(date)/g" "$intelligence_update"
    
    log "Vault intelligence update created: $intelligence_update"
    return 0
}

# Function to create quality checkpoint integration
create_quality_checkpoints() {
    log "Creating quality checkpoint integration"
    
    local checkpoint_file="${LEARNING_DIR}/atomic-quality-checkpoints-$(date +%Y-%m-%d).md"
    
    cat > "$checkpoint_file" << 'EOF'
# Atomic Quality Checkpoints

> **Purpose**: Systematic quality assurance integrated with learning systems
> **Generated**: [DATE]
> **Checkpoint Frequency**: Weekly

## Quality Evolution Tracking

### This Week's Quality Metrics
- **Compliance Rate**: [TO_BE_UPDATED]
- **New Atomic Notes Created**: [COUNT]
- **Quality Issues Resolved**: [COUNT]
- **Critical Violations**: [COUNT]

### Learning Objectives Progress

#### Atomic Thinking Development
- [ ] **Concept Decomposition**: Breaking complex ideas into atomic components
- [ ] **Title Optimization**: Creating clear, searchable concept APIs
- [ ] **Connection Mapping**: Establishing meaningful note relationships
- [ ] **State Management**: Proper progression from fleeting to permanent

#### Quality Standards Mastery
- [ ] **Size Management**: Keeping notes within atomic limits
- [ ] **Structure Compliance**: Following atomic note templates
- [ ] **Metadata Accuracy**: Proper frontmatter and state tracking
- [ ] **Semantic Linking**: Using typed relationships effectively

### Skills Development Assessment

#### Current Proficiency Levels (1-5 scale)
- **Atomic Decomposition**: [SCORE]
- **Quality Recognition**: [SCORE]
- **Violation Prevention**: [SCORE]
- **Integration Mastery**: [SCORE]

#### Areas for Improvement
1. [IDENTIFIED_AREA_1]
2. [IDENTIFIED_AREA_2]
3. [IDENTIFIED_AREA_3]

## Integration Success Patterns

### What's Working Well
EOF

    # Analyze recent successes
    local recent_atomic_notes=$(find "$RESEARCH_DIR" -path "*/atomic-notes/*.md" -mtime -7 | wc -l)
    
    if [[ $recent_atomic_notes -gt 0 ]]; then
        echo "- **Active Atomic Note Creation**: $recent_atomic_notes new atomic notes this week" >> "$checkpoint_file"
    fi
    
    cat >> "$checkpoint_file" << 'EOF'

### Challenges Identified
- [CHALLENGE_1]
- [CHALLENGE_2]
- [CHALLENGE_3]

### Adaptation Strategies
- [STRATEGY_1]
- [STRATEGY_2]
- [STRATEGY_3]

## Next Week's Focus Areas

### Quality Improvement Targets
- [ ] **Primary Focus**: [TARGET_AREA]
- [ ] **Secondary Focus**: [TARGET_AREA]
- [ ] **Maintenance**: [ONGOING_AREA]

### Learning Integration Goals
- [ ] **Spaced Repetition**: Review atomic principles
- [ ] **Active Application**: Practice quality standards
- [ ] **Pattern Recognition**: Identify improvement opportunities

### Monitoring Integration
- [ ] **Regular Checks**: Run quality gates on new content
- [ ] **Dashboard Review**: Analyze compliance trends
- [ ] **System Optimization**: Refine monitoring thresholds

## Long-term Quality Evolution

### Monthly Quality Goals
- **Month 1**: Establish consistent atomic creation habits
- **Month 2**: Achieve 90%+ atomic note quality compliance
- **Month 3**: Master cross-domain atomic synthesis

### Quarterly Mastery Targets
- **Q1**: Atomic thinking becomes automatic
- **Q2**: Quality standards internalized and effortless
- **Q3**: Teaching and mentoring atomic principles to others

---
*Part of the PKM Learning Systems Integration*  
*Next checkpoint: [NEXT_DATE]*
EOF

    # Replace placeholders
    sed -i "s/\[DATE\]/$(date)/g" "$checkpoint_file"
    sed -i "s/\[NEXT_DATE\]/$(date -d '+7 days')/g" "$checkpoint_file"
    
    log "Quality checkpoint created: $checkpoint_file"
    return 0
}

# Function to run complete PKM integration
run_pkm_integration() {
    log "Starting comprehensive PKM integration"
    
    echo "🔗 PKM Integration Monitor"
    echo "========================="
    echo ""
    
    # Create configuration if needed
    create_integration_config
    
    # Run integration components
    echo "📚 Integrating with Spaced Repetition System..."
    integrate_spaced_repetition && echo "✅ Spaced repetition integration complete"
    echo ""
    
    echo "🧠 Updating Vault Intelligence..."
    integrate_vault_intelligence && echo "✅ Vault intelligence integration complete"
    echo ""
    
    echo "🎯 Creating Quality Checkpoints..."
    create_quality_checkpoints && echo "✅ Quality checkpoints created"
    echo ""
    
    echo "📊 PKM Integration Summary"
    echo "=========================="
    echo "- Spaced repetition review session generated"
    echo "- Vault intelligence updated with monitoring insights"
    echo "- Quality checkpoints established for learning tracking"
    echo "- Configuration updated for ongoing integration"
    echo ""
    echo "Integration files location: $LEARNING_DIR"
    echo "Configuration: $INTEGRATION_CONFIG"
    echo "Logs: $LOG_FILE"
    
    log "PKM integration completed successfully"
    return 0
}

# Function to update integration triggers
update_integration_triggers() {
    log "Updating integration triggers in main monitoring scripts"
    
    # Create integration hook script
    local hook_script="${SCRIPTS_DIR}/integration-hooks.sh"
    
    cat > "$hook_script" << 'EOF'
#!/bin/bash
# Integration Hooks for PKM System
# Called by main monitoring scripts to trigger PKM integration

RESEARCH_DIR="/mnt/f/Research"
PKM_INTEGRATION_SCRIPT="${RESEARCH_DIR}/00-System/Scripts/pkm-integration-monitor.sh"

# Hook for compliance monitoring completion
compliance_monitoring_complete() {
    echo "🔗 Triggering PKM integration after compliance monitoring..."
    "$PKM_INTEGRATION_SCRIPT" spaced-repetition
}

# Hook for quality checking completion
quality_checking_complete() {
    echo "🔗 Triggering vault intelligence update..."
    "$PKM_INTEGRATION_SCRIPT" vault-intelligence
}

# Hook for weekly review
weekly_review_trigger() {
    echo "🔗 Triggering comprehensive PKM integration..."
    "$PKM_INTEGRATION_SCRIPT" full
}

# Execute hook based on parameter
case "${1:-help}" in
    "compliance") compliance_monitoring_complete ;;
    "quality") quality_checking_complete ;;
    "weekly") weekly_review_trigger ;;
    *) echo "Usage: $0 {compliance|quality|weekly}" ;;
esac
EOF

    chmod +x "$hook_script"
    log "Integration hooks created: $hook_script"
    
    echo "✅ Integration triggers updated"
    echo "Hook script: $hook_script"
    return 0
}

# Main script execution
main() {
    case "${1:-help}" in
        "full")
            run_pkm_integration
            ;;
        "spaced-repetition")
            integrate_spaced_repetition
            ;;
        "vault-intelligence")
            integrate_vault_intelligence
            ;;
        "checkpoints")
            create_quality_checkpoints
            ;;
        "config")
            create_integration_config
            echo "✅ Integration configuration created: $INTEGRATION_CONFIG"
            ;;
        "hooks")
            update_integration_triggers
            ;;
        "help"|*)
            echo "PKM Integration Monitor"
            echo "======================"
            echo ""
            echo "Usage: $0 <command>"
            echo ""
            echo "Commands:"
            echo "  full                - Run complete PKM integration"
            echo "  spaced-repetition   - Integrate with spaced repetition system"
            echo "  vault-intelligence  - Update vault intelligence system"
            echo "  checkpoints         - Create quality checkpoints"
            echo "  config              - Create/update integration configuration"
            echo "  hooks               - Update integration triggers"
            echo ""
            echo "Integration connects atomic monitoring with:"
            echo "- Spaced repetition learning system"
            echo "- Vault intelligence and pattern recognition"
            echo "- Quality checkpoints and progress tracking"
            echo "- Adaptive learning and skill development"
            ;;
    esac
}

# Execute main function with all arguments
main "$@"