# Evergreen Spaced Repetition Integration

```yaml
---
state: permanent
type: system-integration
created: 2025-06-15
last-reviewed: 2025-06-15
connections: 7
review-frequency: weekly
tags: [evergreen-evolution, spaced-repetition, review-scheduling, knowledge-consolidation]
---
```

## Integration Framework

This system integrates spaced repetition principles with evergreen note evolution, creating dynamic review schedules that optimize knowledge consolidation while supporting continuous concept refinement and connection enhancement.

## Adaptive Review Scheduling Model

### State-Based Scheduling

#### Fleeting Notes
**Base Schedule:** Monthly review cycle
**Adaptive Factors:**
- Recent access frequency (increase review frequency for often-accessed notes)
- Connection development (accelerate review for notes gaining connections)
- Content evolution (schedule review after significant changes)
- Synthesis potential (prioritize notes showing combination opportunities)

**Dynamic Adjustments:**
```yaml
# High Activity Notes (accessed >5 times/month)
review_frequency: bi-weekly
promotion_candidacy: high

# Connection Rich Notes (>2 connections)
review_frequency: bi-weekly
connection_forcing: priority

# Synthesis Catalysts (enable combinations)
review_frequency: weekly
synthesis_exploration: scheduled
```

#### Permanent Notes
**Base Schedule:** Quarterly review cycle
**Adaptive Factors:**
- Concept stability (stable concepts get longer intervals)
- Application frequency (frequently used concepts get shorter intervals)
- Cross-domain significance (bridge concepts get priority scheduling)
- Teaching utility (concepts used for explanation get regular review)

**Dynamic Adjustments:**
```yaml
# Foundation Concepts (SCALES, MASS, PKM principles)
review_frequency: monthly
depth_review: comprehensive

# Active Application Concepts (current project relevance)
review_frequency: bi-weekly
application_testing: required

# Bridge Concepts (cross-domain connections)
review_frequency: monthly
synthesis_exploration: mandatory
```

### Importance-Weighted Scheduling

#### Importance Scoring Algorithm
```yaml
# Base Score Components
concept_centrality: 0-10 (connection count and quality)
application_frequency: 0-10 (usage in synthesis and projects)
cross_domain_value: 0-10 (bridges different knowledge areas)
teaching_utility: 0-10 (useful for explanation and instruction)

# Composite Importance Score
importance_score = (centrality * 0.3) + (application * 0.3) + (cross_domain * 0.2) + (teaching * 0.2)

# Schedule Adjustment
high_importance (8-10): review_frequency = base_frequency / 2
medium_importance (5-7): review_frequency = base_frequency
low_importance (0-4): review_frequency = base_frequency * 1.5
```

### Success-Based Interval Adjustment

#### Recall Success Tracking
**Success Metrics:**
- **Concept Recall**: Can explain concept clearly without reference
- **Connection Recall**: Can identify and explain relationships
- **Application Ability**: Can apply concept to new contexts
- **Synthesis Capability**: Can combine with other concepts for insights

**Interval Adjustments:**
```yaml
# Perfect Recall (all metrics satisfied)
interval_multiplier: 2.0
next_review: current_interval * 2

# Good Recall (3/4 metrics satisfied)
interval_multiplier: 1.5
next_review: current_interval * 1.5

# Partial Recall (2/4 metrics satisfied)
interval_multiplier: 1.0
next_review: current_interval (unchanged)

# Poor Recall (0-1 metrics satisfied)
interval_multiplier: 0.5
next_review: current_interval / 2
```

## Review Session Integration

### Evergreen Processing During Reviews

#### Standard Review Session Structure
1. **Concept Recall Test** (2-3 minutes)
   - Explain concept without looking at note
   - Identify key relationships and applications
   - Generate examples or applications

2. **Evergreen Enhancement** (5-7 minutes)
   - Title optimization assessment
   - Content refinement opportunities
   - Connection forcing exercise
   - Synthesis exploration

3. **Evolution Documentation** (1-2 minutes)
   - Update evolution notes with changes
   - Adjust review frequency based on performance
   - Flag synthesis opportunities for future exploration

#### Review Session Templates

**Fleeting Note Review Template:**
```markdown
# Review: [[Note Title]] - {{date}}

## Recall Assessment
- [ ] Can explain concept clearly: Y/N
- [ ] Can identify connections: Y/N  
- [ ] Can suggest applications: Y/N
- [ ] Performance: Perfect/Good/Partial/Poor

## Evergreen Enhancement
- [ ] Title functions as effective concept API: Y/N
- [ ] Content is complete and self-contained: Y/N
- [ ] Minimum connections established (3+): Y/N
- [ ] Semantic relationships clearly defined: Y/N

## Action Items
- [ ] Connection forcing needed: [specific opportunities]
- [ ] Content refinement required: [specific areas]
- [ ] Promotion to permanent status: Ready/Not Ready
- [ ] Next review: {{date}} (adjusted based on performance)

## Evolution Notes
- **Changes made**: [description]
- **New connections**: [list]
- **Synthesis opportunities**: [insights]
```

**Permanent Note Review Template:**
```markdown
# Deep Review: [[Note Title]] - {{date}}

## Mastery Assessment
- [ ] Concept explanation: Expert/Proficient/Developing
- [ ] Connection network: Rich/Adequate/Limited
- [ ] Application ability: Advanced/Basic/None
- [ ] Synthesis capability: High/Medium/Low

## Network Enhancement
- [ ] New connections identified: [list]
- [ ] Cross-domain bridges: [opportunities]
- [ ] Synthesis combinations: [potential insights]
- [ ] Teaching applications: [contexts]

## Content Evolution
- [ ] Concept stability: Stable/Evolving/Uncertain
- [ ] Currency assessment: Current/Needs Update/Obsolete
- [ ] Expansion opportunities: [areas for development]
- [ ] Refinement needs: [specific improvements]

## Strategic Importance
- [ ] Foundation concept: Y/N
- [ ] Bridge concept: Y/N
- [ ] Synthesis catalyst: Y/N
- [ ] Teaching utility: High/Medium/Low

## Next Actions
- [ ] Review frequency adjustment: [new schedule]
- [ ] Priority enhancement areas: [focus]
- [ ] Synthesis session scheduling: [topics]
- [ ] Application opportunities: [contexts]
```

### Active Recall Integration

#### Question Generation During Reviews
**Automatic Question Creation:**
- Factual questions from concept content
- Relationship questions from connection network
- Application questions from usage contexts
- Synthesis questions from combination opportunities

**Question Types by Note State:**

**Fleeting Notes:**
- "What is the core concept of [note title]?"
- "How does this concept relate to [connected concepts]?"
- "In what contexts would you apply this concept?"

**Permanent Notes:**
- "Explain [concept] and its key implications"
- "How would you combine [concept A] with [concept B] to solve [problem]?"
- "What patterns connect [concept] across [domains]?"
- "How has your understanding of [concept] evolved over time?"

### Synthesis Acceleration Through Reviews

#### Connection Discovery During Review
**Systematic Relationship Exploration:**
1. Review existing connections for accuracy and value
2. Apply semantic relationship taxonomy to find new connections
3. Explore cross-domain application opportunities
4. Identify potential synthesis combinations

#### Synthesis Session Triggering
**Automatic Triggers:**
- Note achieves high connection density (5+ meaningful connections)
- Cross-domain patterns emerge during review
- Novel combination opportunities identified
- Multiple concepts show synthesis potential

**Manual Triggers:**
- Active project requires knowledge integration
- Teaching opportunity requires concept explanation
- Research question emerges from connection patterns
- Innovation challenge suggests concept combination

## Implementation Workflows

### Daily Integration (5-10 minutes)
**Morning Knowledge Activation:**
- Review 2-3 concepts scheduled for reinforcement
- Quick recall test and application thinking
- Note any insights or connection opportunities
- Plan synthesis exploration for weekly session

**Evening Consolidation:**
- Review new concepts encountered during the day
- Force connections with existing knowledge
- Schedule appropriate review intervals
- Document evolution and insights

### Weekly Deep Review (30-45 minutes)
**Systematic Review Session:**
- Process promotion candidates (fleeting → permanent)
- Conduct deep reviews of high-importance permanent concepts
- Explore synthesis opportunities flagged during daily reviews
- Update review schedules based on performance patterns

**Connection Enhancement Focus:**
- Systematic connection forcing between reviewed concepts
- Cross-domain bridge construction
- Synthesis catalyst identification and development
- Network health assessment and optimization

### Monthly System Optimization (60 minutes)
**Performance Analysis:**
- Review success rates and interval adjustments
- Identify concepts requiring schedule optimization
- Analyze synthesis emergence patterns
- Refine importance scoring and scheduling algorithms

**Strategic Enhancement:**
- Update importance weights based on vault evolution
- Optimize review session templates
- Enhance automation and integration features
- Plan advanced synthesis projects

## Automation and Tool Integration

### Automated Scheduling
```yaml
# Daily Schedule Generation
morning_review:
  - concepts_due: [list based on interval calculations]
  - importance_priority: high-value concepts first
  - diversity_balance: mix of domains and states
  - session_length: 5-10 minutes target

weekly_deep_review:
  - promotion_candidates: fleeting notes meeting criteria
  - synthesis_opportunities: flagged combinations
  - connection_enhancement: low-density permanent notes
  - session_length: 30-45 minutes target
```

### Performance Tracking
```yaml
# Success Rate Monitoring
concept_recall_success: percentage by concept and domain
interval_optimization: adjustment patterns and effectiveness
synthesis_emergence: insights generated per review session
knowledge_application: successful transfers to new contexts

# System Health Metrics
review_completion_rate: adherence to scheduled reviews
concept_progression_rate: fleeting to permanent transitions
network_growth_rate: connection density improvements
cognitive_load_assessment: effort required for maintenance
```

### Integration Points

#### Vault Health Monitoring
- Review completion tracking
- Concept progression monitoring
- Connection network analysis
- Synthesis opportunity identification

#### Knowledge Capture Pipeline
- New concept integration with review scheduling
- Automatic connection suggestion based on review patterns
- Synthesis insight capture and development
- Application opportunity tracking

## Success Metrics

### Learning Effectiveness
- **Concept Mastery Rate**: Progression through recall success levels
- **Knowledge Retention**: Long-term recall success after extended intervals
- **Application Transfer**: Successful use of concepts in new contexts
- **Synthesis Generation**: Novel insights from combination during reviews

### System Efficiency
- **Review Adherence**: Completion rate of scheduled reviews
- **Optimal Scheduling**: Balance of challenge and success in intervals
- **Cognitive Load**: Time and effort required for effective reviews
- **Automation Effectiveness**: Reduced manual scheduling and tracking overhead

### Vault Enhancement
- **State Progression**: Fleeting to permanent note transition rates
- **Connection Density**: Network connectivity improvements over time
- **Cross-Domain Integration**: Bridge concept development and usage
- **Knowledge Accessibility**: Speed and accuracy of concept retrieval

---

*This integration creates a dynamic learning system where spaced repetition principles enhance evergreen note evolution, and note quality improvements support more effective knowledge consolidation and synthesis.*