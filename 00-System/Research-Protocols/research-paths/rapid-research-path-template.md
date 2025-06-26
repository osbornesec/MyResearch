# Rapid Research Path Template

```yaml
---
type: research-workflow-template
path: rapid
complexity: low
time-estimate: 15-45 minutes
mcp-tools: [perplexity-search, context7]
quality-gate: single-source-validation
created: 2025-06-15
---
```

## Template Purpose

**Scope**: Simple queries, established facts, quick information verification
**Use When**: Need fast, reliable answers with basic quality validation
**Output**: 1-3 atomic notes with source validation and basic connections

## Prerequisites

### Required Tools
- [ ] Perplexity Search access
- [ ] Context7 access (if technical documentation needed)
- [ ] Vault write access for atomic note creation

### Pre-Research Setup
- [ ] **Research Question Formulated**: Clear, specific question
- [ ] **Scope Defined**: Single-concept or narrow topic focus
- [ ] **Success Criteria Set**: What constitutes adequate answer quality
- [ ] **Time Box Established**: Maximum 45 minutes for completion

## VERIFY Phase (10-15 minutes)

### Step 1: Initial Information Gathering
```yaml
Action: Perplexity Search
Query: [Your specific research question]
Validation: Minimum 2 independent sources required
```

**Execution Checklist:**
- [ ] Run Perplexity search with specific query
- [ ] Identify minimum 2 credible sources
- [ ] Note source types and credibility scores (use Source Credibility Matrix)
- [ ] Flag any contradictions or uncertainties

### Step 2: Technical Validation (If Applicable)
```yaml
Action: Context7 Documentation Check
Trigger: If research involves technical/API documentation
Query: [Technical concept or implementation detail]
```

**Execution Checklist:**
- [ ] Use Context7 for technical accuracy verification
- [ ] Cross-reference with authoritative documentation
- [ ] Note any version-specific or implementation details
- [ ] Identify any technical limitations or considerations

### Step 3: Atomic Fact Extraction
**Create atomic notes immediately during verification:**

```yaml
Note Template:
---
state: fleeting
type: atomic-note
created: {{date}}
source-credibility: [score 1-10]
research-context: [rapid-research-{{topic}}]
validation-status: verified
---

# [Single Concept Title]

## Core Concept
[One complete, verifiable fact]

## Source Validation
- **Primary Source**: [citation with credibility score]
- **Verification Method**: perplexity-search + [context7 if applicable]
- **Confidence Level**: [high/medium/low]

## Immediate Connections
[Link to 1-2 related concepts if obvious connections exist]
```

**Quality Gates (Non-Negotiable):**
- [ ] Each fact captured as separate atomic note
- [ ] Source credibility assessed and documented
- [ ] Confidence level explicitly stated
- [ ] Contradictions or uncertainties noted

## SYNTHESIZE Phase (5-10 minutes)

### Step 4: Connection Discovery
**Link atomic notes to existing vault content:**

- [ ] Search vault for related concepts using `[[]]` syntax
- [ ] Identify potential MOC connections
- [ ] Create bidirectional links where appropriate
- [ ] Note synthesis opportunities for future research

### Step 5: Pattern Recognition
**Identify immediate insights:**

- [ ] Look for patterns across gathered facts
- [ ] Note any unexpected connections or contradictions
- [ ] Flag questions that emerged during research
- [ ] Identify follow-up research opportunities

### Step 6: Evergreen Preparation
**If atomic notes show high connection potential:**

```yaml
Evergreen Criteria Check:
- [ ] Concept likely to be referenced again
- [ ] Clear connections to existing vault content
- [ ] Potential for future elaboration
- [ ] Stable, principle-based content
```

**If criteria met:**
- [ ] Refine atomic note title for concept API clarity
- [ ] Add meaningful connections to related permanent notes
- [ ] Schedule for evergreen evolution review
- [ ] Update state to `transitioning`

## VALIDATE Phase (5-10 minutes)

### Step 7: Quality Assurance
**Research validation checklist:**

- [ ] **Source Quality**: Minimum credibility score of 6/10 for primary sources
- [ ] **Fact Accuracy**: No obvious contradictions in gathered information
- [ ] **Atomic Structure**: Each note contains single, complete concept
- [ ] **Connection Quality**: Links add semantic value, not just association
- [ ] **Coverage Completeness**: Research question adequately answered

### Step 8: Note State Management
**Update atomic notes based on quality assessment:**

```yaml
State Progression:
- High-quality, well-connected notes → "transitioning" 
- Basic facts with minimal connections → "fleeting"
- Disputed or uncertain information → "fleeting" + uncertainty tags
```

### Step 9: MOC Integration
**Connect to appropriate Maps of Content:**

- [ ] Identify relevant Index MOCs for topic area
- [ ] Add links to domain-specific atomic note indices
- [ ] Update relevant Workbench MOCs if research supports active projects
- [ ] Note potential for new MOC creation if concept cluster is forming

## Post-Research Integration (5 minutes)

### Step 10: Research Documentation
**Create research summary atomic note:**

```yaml
---
state: fleeting
type: research-summary
created: {{date}}
research-path: rapid
research-question: [original question]
atomic-notes-created: [list of note titles]
---

# Rapid Research: [Topic] - {{date}}

## Research Question Answered
**Original Question**: [question]
**Answer Summary**: [brief synthesis]
**Confidence Level**: [high/medium/low]

## Atomic Notes Created
- [[Note Title 1]] - [brief description]
- [[Note Title 2]] - [brief description]
- [[Note Title 3]] - [brief description]

## Follow-up Research Identified
- [ ] [Deeper investigation needed on...]
- [ ] [Cross-domain connections to explore...]
- [ ] [Contradictions to resolve...]

## Quality Assessment
- **Sources Used**: [count and credibility average]
- **Validation Method**: perplexity-search + [additional tools]
- **Research Duration**: [actual time spent]
```

### Step 11: Review Scheduling
**Set up spaced repetition for important findings:**

- [ ] High-importance atomic notes: 3-day review
- [ ] Medium-importance atomic notes: 1-week review  
- [ ] Supporting facts: 1-month review
- [ ] Research summary: 1-week review for follow-up assessment

## Success Criteria

### Minimum Viable Research
- [ ] Research question answered with adequate confidence
- [ ] Minimum 1 atomic note created with source validation
- [ ] Basic connections to existing vault content established
- [ ] No obvious factual errors or contradictions

### Quality Research 
- [ ] Multiple atomic notes created with high source credibility
- [ ] Rich connections to existing knowledge discovered
- [ ] Clear patterns or insights identified
- [ ] Follow-up research opportunities documented

### Exceptional Research
- [ ] Breakthrough connections to unexpected vault areas discovered
- [ ] High-quality atomic notes ready for evergreen evolution
- [ ] New synthesis opportunities identified
- [ ] Research approach refined for future investigations

## Troubleshooting & Escalation

### Common Issues
**Low Source Credibility**: 
- Escalate to Deep Investigation Path for additional validation
- Use Context7 for authoritative technical documentation
- Cross-reference with academic or government sources

**Contradictory Information**:
- Document all perspectives as separate atomic notes
- Flag contradictions explicitly in research summary
- Consider debate topology approach for resolution

**Insufficient Information**:
- Escalate to Deep Investigation Path
- Consider Sequential Thinking for complex reasoning
- Expand query scope or adjust research question

### When to Escalate
- [ ] Source credibility consistently below 6/10
- [ ] Multiple contradictions across reliable sources
- [ ] Research question requires multi-step reasoning
- [ ] Time exceeds 45 minutes without adequate progress
- [ ] Cross-domain expertise needed for proper validation

## Integration with Advanced Workflows

### Connection to Deep Investigation Path
**When rapid research reveals complexity:**
- Research summary becomes starting point for deep investigation
- Atomic notes serve as validated foundation for expanded research
- Initial connections guide systematic investigation approach

### Connection to Breakthrough Research Path
**When rapid research suggests innovation opportunities:**
- Atomic notes become seed concepts for creative synthesis
- Unexpected connections guide multi-agent exploration
- Quality foundation enables high-confidence innovation development

---

## Template Usage Notes

**Efficiency Optimization:**
- Use parallel Perplexity + Context7 searches when applicable
- Leverage existing atomic notes before creating duplicates
- Apply intelligent caching for repeated research patterns

**Quality Assurance:**
- Never skip source credibility assessment
- Always create atomic notes during research, not after
- Enforce bidirectional linking for all connections

**PKM Integration:**
- Atomic notes are the foundation - everything else builds from them
- Evergreen evolution happens through repeated encounters, not forced processing
- LYT structure emerges from connection patterns, not predetermined categories

**Success Metrics:**
- Research completion within time box (45 minutes maximum)
- Source credibility average above 6.5/10
- Minimum 1 meaningful connection to existing vault content per atomic note
- Follow-up research opportunities identified for 80% of investigations