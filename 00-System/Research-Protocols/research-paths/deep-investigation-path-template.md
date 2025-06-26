# Deep Investigation Path Template

```yaml
---
type: research-workflow-template
path: deep-investigation
complexity: high
time-estimate: 2-8 hours
mcp-tools: [perplexity-deep-research, context7, sequential-thinking, perplexity-reason]
quality-gate: multi-source-triangulation
created: 2025-06-15
---
```

## Template Purpose

**Scope**: Complex, multi-faceted research requiring comprehensive investigation
**Use When**: Need thorough analysis, cross-domain synthesis, or high-confidence conclusions
**Output**: 5-15 atomic notes, workbench MOC creation, comprehensive synthesis report

## Prerequisites

### Required Tools
- [ ] Perplexity Deep Research access
- [ ] Context7 access for technical validation
- [ ] Sequential Thinking for complex reasoning
- [ ] Perplexity Reason for analytical synthesis
- [ ] Vault write access for extensive note creation

### Pre-Research Setup
- [ ] **Complex Research Question Formulated**: Multi-part or nuanced investigation
- [ ] **Scope Boundaries Defined**: Clear limits to prevent scope creep
- [ ] **Success Criteria Established**: What constitutes thorough investigation
- [ ] **Time Allocation Planned**: Structured approach to 2-8 hour investment
- [ ] **Workbench MOC Prepared**: Active synthesis space for investigation

## VERIFY Phase (60-180 minutes)

### Step 1: Comprehensive Information Gathering
```yaml
Primary Research Deployment:
Action: Perplexity Deep Research
Query: [Comprehensive research question with multiple angles]
Validation: Minimum 5 independent high-quality sources required
Cross-Reference: Context7 for technical accuracy
```

**Execution Checklist:**
- [ ] Deploy Perplexity Deep Research for comprehensive investigation
- [ ] Identify minimum 5 sources with credibility scores ≥ 7
- [ ] Document source diversity across different perspectives/stakeholders
- [ ] Note patterns of agreement and contradiction across sources
- [ ] Flag areas requiring additional specialized investigation

### Step 2: Technical and Methodological Validation
```yaml
Action: Context7 + Sequential Thinking Integration
Trigger: Technical accuracy or methodological complexity
Process: Technical validation → Logical reasoning validation
```

**Technical Validation Checklist:**
- [ ] Use Context7 for authoritative technical documentation
- [ ] Cross-reference implementation details and specifications
- [ ] Verify version-specific information and current standards
- [ ] Document technical limitations and considerations

**Methodological Validation Checklist:**
- [ ] Deploy Sequential Thinking for complex reasoning chains
- [ ] Validate logical progression in research findings
- [ ] Identify potential reasoning gaps or fallacies
- [ ] Document confidence levels for different reasoning steps

### Step 3: Systematic Atomic Decomposition
**Create atomic notes for each verified concept:**

```yaml
Atomic Note Creation Protocol:
Frequency: 1 atomic note per verified concept/finding
Quality Standard: Source credibility ≥ 7 or multi-source triangulation
Integration: Immediate connection discovery during creation
Documentation: Research trail and validation method for each note
```

**Deep Investigation Atomic Note Template:**
```yaml
---
state: fleeting
type: atomic-note
subtype: deep-research-finding
created: {{date}}
investigation-context: [parent-investigation-title]
source-credibility: [primary-score] | [triangulation-average]
validation-method: [detailed-validation-approach]
confidence-level: [high/medium/low]
research-tools: [list-of-mcp-tools-used]
---

# [Precise Concept Title - API Function]

## Core Research Finding
[Single, thoroughly validated concept with nuanced understanding]

## Comprehensive Source Validation
**Primary Source**: [highest-credibility citation]
**Triangulation Sources**: 
- [Source 2] - Credibility: X/10 - [perspective/angle]
- [Source 3] - Credibility: X/10 - [perspective/angle]  
- [Source 4] - Credibility: X/10 - [perspective/angle]

**Validation Process**: 
- [MCP tools used and validation sequence]
- [Cross-reference methodology]
- [Confidence assessment rationale]

## Research Context and Implications
**Parent Investigation**: [[Investigation Workbench MOC]]
**Research Sub-Question**: [specific question this addresses]
**Broader Implications**: [how this impacts overall investigation]
**Domain Relevance**: [cross-domain applications identified]

## Source Analysis and Bias Assessment
**Source Agreement Pattern**: [consensus/disagreement analysis]
**Bias Identification**: [potential biases noted across sources]
**Uncertainty Factors**: [limitations and areas of dispute]
**Quality Assurance**: [additional validation performed]

## Connection Discovery
**Existing Vault Connections**: 
- [[Strong Connection A]] - [relationship type]
- [[Strong Connection B]] - [relationship type]
- [[Potential Connection C]] - [needs synthesis]

**Cross-Domain Potential**:
- [Domain 1]: [specific application or relevance]
- [Domain 2]: [specific application or relevance]

**Synthesis Opportunities**: [patterns/connections requiring further investigation]

## Follow-up Research Identified
- [ ] [Specific deeper investigation needed]
- [ ] [Cross-domain validation required]
- [ ] [Contradictory evidence to resolve]
- [ ] [Implementation/practical application research]
```

### Step 4: Pattern Recognition and Gap Analysis
**Systematic analysis across atomic notes:**

- [ ] **Convergence Pattern Analysis**: Where do sources agree strongly?
- [ ] **Divergence Investigation**: What are the key points of disagreement?
- [ ] **Knowledge Gap Identification**: What critical information is missing?
- [ ] **Cross-Domain Pattern Recognition**: What patterns span multiple domains?
- [ ] **Innovation Opportunity Detection**: Where do gaps suggest breakthrough potential?

## SYNTHESIZE Phase (45-120 minutes)

### Step 5: Workbench MOC Development
**Create active synthesis space for investigation:**

```yaml
Investigation Workbench MOC Template:
---
state: permanent
type: moc-node
moc-type: workbench
created: {{date}}
investigation-question: [primary research question]
atomic-notes-count: [number of atomic notes created]
synthesis-status: [in-progress/completed/on-hold]
cross-domain-connections: [count]
---

# [Investigation Topic] - Deep Research Workbench

## Investigation Overview
**Primary Question**: [main research question]
**Scope**: [boundaries and focus areas]
**Time Investment**: [actual time spent]
**Quality Level Achieved**: [confidence and validation summary]

## Atomic Knowledge Units
### Core Findings
- [[Atomic Note 1]] - [brief description and confidence level]
- [[Atomic Note 2]] - [brief description and confidence level]
- [[Atomic Note 3]] - [brief description and confidence level]

### Supporting Evidence
- [[Supporting Atomic Note A]] - [relationship to core findings]
- [[Supporting Atomic Note B]] - [relationship to core findings]

### Contradictory Evidence
- [[Conflicting Atomic Note X]] - [nature of contradiction]
- [[Uncertainty Atomic Note Y]] - [areas requiring further research]

## Synthesis Insights
### Primary Patterns Identified
1. **Pattern 1**: [description] - Evidence: [[Note A]], [[Note B]]
2. **Pattern 2**: [description] - Evidence: [[Note C]], [[Note D]]
3. **Pattern 3**: [description] - Evidence: [[Note E]], [[Note F]]

### Cross-Domain Connections
- **Connection to [[Domain MOC A]]**: [specific relevance and applications]
- **Connection to [[Domain MOC B]]**: [specific relevance and applications]
- **Novel Cross-Domain Insights**: [unexpected connections discovered]

### Knowledge Gaps and Future Research
- [ ] **Gap 1**: [specific area needing additional research]
- [ ] **Gap 2**: [contradictions requiring resolution]
- [ ] **Gap 3**: [implementation/practical application needs]

## Confidence Assessment
**Overall Investigation Confidence**: [high/medium/low]
**Source Quality Average**: [X.X]/10
**Triangulation Success**: [percentage of claims verified by multiple sources]
**Areas of Uncertainty**: [specific topics with lower confidence]

## Applications and Implementation
### Immediate Applications
- **Practical Application 1**: [how findings can be used immediately]
- **Decision Support**: [how findings inform current decisions]
- **Strategic Implications**: [longer-term strategic insights]

### Follow-up Research Priorities
1. **High Priority**: [critical follow-up research needed]
2. **Medium Priority**: [valuable additional investigation]
3. **Low Priority**: [interesting but non-critical exploration]
```

### Step 6: Cross-Domain Integration Analysis
**Use Sequential Thinking for complex synthesis:**

```yaml
Sequential Thinking Deployment:
Purpose: Cross-domain pattern recognition and synthesis
Focus: How investigation findings connect to existing vault knowledge
Output: Strategic insights and breakthrough connection identification
```

**Integration Analysis Checklist:**
- [ ] **AI/LLMs Domain Integration**: How do findings apply to AI research?
- [ ] **Software Development Integration**: What development implications exist?
- [ ] **Business Analysis Integration**: What strategic/market insights emerge?
- [ ] **API Documentation Integration**: What technical implementation insights apply?
- [ ] **Template/Methodology Integration**: What process improvements are suggested?

### Step 7: Innovation Synthesis Development
**Use Perplexity Reason for analytical synthesis:**

```yaml
Advanced Synthesis Protocol:
Action: Perplexity Reason
Purpose: Complex analytical synthesis of investigation findings
Focus: Innovation opportunities and paradigm shift potential
Integration: Breakthrough research path preparation
```

## VALIDATE Phase (30-60 minutes)

### Step 8: Comprehensive Quality Assurance
**Multi-tier validation framework:**

#### Tier 1: Source Quality Validation
- [ ] **Average Source Credibility**: ≥ 7.5/10 for critical claims
- [ ] **Source Diversity**: Multiple stakeholder perspectives represented
- [ ] **Triangulation Success**: ≥ 80% of major claims verified by multiple sources
- [ ] **Bias Assessment**: Systematic bias identification and mitigation documented

#### Tier 2: Reasoning Chain Validation
- [ ] **Logical Consistency**: No obvious logical fallacies or gaps
- [ ] **Evidence-Conclusion Alignment**: Conclusions properly supported by evidence
- [ ] **Uncertainty Acknowledgment**: Limitations and gaps explicitly stated
- [ ] **Alternative Explanation Consideration**: Competing theories evaluated

#### Tier 3: Knowledge Integration Validation
- [ ] **Atomic Note Quality**: All notes meet evergreen preparation standards
- [ ] **Connection Accuracy**: Links add semantic value and are bidirectional
- [ ] **MOC Integration**: Proper connection to existing vault structure
- [ ] **Cross-Domain Validation**: Connections to other domains are accurate

### Step 9: Synthesis Report Creation
**Comprehensive investigation summary:**

```yaml
Deep Investigation Summary Template:
---
state: permanent
type: investigation-summary
investigation-duration: [actual time]
atomic-notes-created: [count]
confidence-level: [overall assessment]
cross-domain-connections: [count]
innovation-potential: [high/medium/low]
---

# Deep Investigation: [Topic] - {{date}}

## Executive Summary
**Research Question**: [original question]
**Key Finding**: [primary conclusion with confidence level]
**Strategic Significance**: [why this matters]
**Innovation Opportunities**: [breakthrough potential identified]

## Investigation Metrics
- **Duration**: [X] hours over [Y] days
- **Atomic Notes Created**: [count] notes
- **Source Quality Average**: [X.X]/10
- **Cross-Domain Connections**: [count] domains
- **MCP Tools Utilized**: [list with effectiveness assessment]

## Key Findings and Evidence
### Primary Conclusions
1. **Conclusion 1**: [finding] - Confidence: [level]
   - **Evidence**: [[Atomic Note A]], [[Atomic Note B]]
   - **Source Quality**: [average credibility score]

2. **Conclusion 2**: [finding] - Confidence: [level]
   - **Evidence**: [[Atomic Note C]], [[Atomic Note D]]
   - **Source Quality**: [average credibility score]

### Contradictions and Uncertainties
- **Contradiction 1**: [description] - Requires: [additional research needed]
- **Uncertainty 1**: [description] - Confidence: [low/medium]

## Cross-Domain Synthesis
**Connections Identified**:
- [[Domain A MOC]]: [specific relevance and implications]
- [[Domain B MOC]]: [specific relevance and implications]
- [[Domain C MOC]]: [novel insights or applications]

**Innovation Synthesis**:
- [Breakthrough connection or insight identified]
- [Paradigm shift potential or novel application]
- [Cross-domain pattern with broader implications]

## Knowledge Graph Impact
**Vault Enhancement**:
- [Number] new atomic notes integrated
- [Number] new connections established
- [Number] MOCs updated or created
- [Description] knowledge multiplication achieved

## Follow-up Research Strategy
### Immediate Priorities (Next 1-2 weeks)
- [ ] **Critical Gap**: [specific research needed]
- [ ] **Validation Required**: [additional verification needed]
- [ ] **Implementation Research**: [practical application investigation]

### Medium-term Investigations (Next 1-3 months)
- [ ] **Cross-Domain Expansion**: [related domain investigation]
- [ ] **Deeper Specialization**: [more detailed investigation of specific aspect]
- [ ] **Innovation Development**: [breakthrough opportunity exploration]

### Long-term Research Vision (3+ months)
- [ ] **Paradigm Development**: [potential paradigm shift exploration]
- [ ] **Comprehensive Synthesis**: [integration with broader knowledge ecosystem]
- [ ] **Strategic Application**: [practical implementation at scale]

## Lessons Learned
**Research Methodology Insights**:
- [What worked well in research approach]
- [What could be improved for future investigations]
- [MCP tool effectiveness and optimization opportunities]

**Knowledge Management Insights**:
- [PKM integration successes and challenges]
- [Atomic note creation and connection patterns]
- [Synthesis acceleration opportunities identified]
```

## Post-Investigation Integration (30-45 minutes)

### Step 10: Hub MOC Integration
**Connect investigation to cross-domain research ecosystem:**

- [ ] Update [[Research Methodology Hub MOC]] with investigation insights
- [ ] Connect to relevant Index MOCs across domains
- [ ] Identify Hub MOC synthesis opportunities
- [ ] Flag for cross-domain pattern recognition

### Step 11: Long-term Review Scheduling
**Set up spaced repetition for investigation insights:**

- [ ] **High-impact atomic notes**: 1-week review cycle
- [ ] **Workbench MOC**: 2-week synthesis review
- [ ] **Investigation Summary**: 1-month strategic review
- [ ] **Cross-domain connections**: 6-week integration assessment

## Success Criteria

### Minimum Viable Investigation
- [ ] Research question thoroughly addressed with high confidence
- [ ] Minimum 5 atomic notes with credibility score ≥ 7
- [ ] Workbench MOC created with synthesis insights
- [ ] Cross-domain connections identified and documented
- [ ] Follow-up research priorities established

### Quality Investigation
- [ ] Comprehensive source landscape covered
- [ ] Systematic triangulation across multiple perspectives
- [ ] Rich atomic note network with strong connections
- [ ] Clear innovation opportunities identified
- [ ] Significant vault knowledge integration achieved

### Exceptional Investigation
- [ ] Breakthrough insights or paradigm shift potential identified
- [ ] Novel cross-domain synthesis achieved
- [ ] Research methodology innovations discovered
- [ ] Strategic implications for multiple vault domains
- [ ] Knowledge multiplication effect created across vault

## Troubleshooting & Escalation

### Complex Reasoning Issues
**When Sequential Thinking reveals reasoning gaps:**
- Deploy additional rounds of Sequential Thinking with refined prompts
- Use debate topology approach with multiple reasoning perspectives
- Escalate to Breakthrough Research Path for multi-agent resolution

### Source Quality Issues
**When high-quality sources are insufficient:**
- Expand search to academic databases and authoritative institutions
- Use Context7 for technical domains requiring specialized documentation
- Consider expert consultation or professional research services

### Cross-Domain Integration Challenges
**When vault integration is complex:**
- Use Hub MOC synthesis workbenches for systematic integration
- Deploy pattern recognition across existing atomic notes
- Consider Breakthrough Research Path for novel synthesis development

### Time Management Issues
**When investigation scope exceeds allocated time:**
- Prioritize core findings and defer secondary investigations
- Create staged investigation plan with clear phase gates
- Document scope boundaries for future investigation phases

## Integration with Other Research Paths

### Connection to Rapid Research Path
**When deep investigation reveals simple sub-questions:**
- Use rapid research for straightforward fact verification
- Delegate routine validation to rapid research protocols
- Focus deep investigation energy on complex synthesis and analysis

### Connection to Breakthrough Research Path  
**When investigation suggests innovation opportunities:**
- Investigation summary becomes foundation for breakthrough research
- Atomic notes and workbench MOC provide validated knowledge base
- Cross-domain connections guide multi-agent exploration strategy

---

## Template Usage Notes

**Resource Optimization:**
- Use parallel MCP tool deployment for different investigation angles
- Leverage atomic note connections to avoid duplicate research
- Apply intelligent context management across extended research sessions

**Quality Assurance:**
- Never compromise on source credibility standards for complex topics
- Always create atomic notes during research, not in batch afterward
- Enforce systematic triangulation for all significant claims

**PKM Integration:**
- Workbench MOCs are temporary synthesis spaces - migrate insights to permanent structures
- Atomic notes from deep investigation often become evergreen candidates
- Use investigation insights to improve research methodology across all paths

**Success Metrics:**
- Investigation completion within planned time allocation
- Source credibility average ≥ 7.5 across all findings
- Minimum 3 cross-domain connections per investigation
- Follow-up research identification for 90% of investigations

This Deep Investigation Path Template transforms complex research challenges into systematic, high-quality knowledge development that significantly enhances vault intelligence while maintaining research excellence standards.