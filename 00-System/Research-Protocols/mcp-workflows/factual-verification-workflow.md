# Factual Verification Workflow

```yaml
---
type: mcp-integration-template
workflow: factual-verification
tools: [perplexity-search, context7]
complexity: low-medium
time-estimate: 10-30 minutes
validation-standard: multi-source-cross-reference
created: 2025-06-15
---
```

## Workflow Purpose

**Objective**: Rapid, reliable verification of factual claims using MCP tools
**Primary Tools**: Perplexity Search → Context7 (for technical facts)
**Use Cases**: Fact-checking, basic claims verification, information validation
**Quality Standard**: Minimum 2 sources with credibility ≥ 6, preference for 3+ sources

## Prerequisites and Setup

### Required Access
- [ ] Perplexity Search MCP access configured
- [ ] Context7 MCP access available for technical verification
- [ ] Source Credibility Matrix reference available
- [ ] Atomic Research Capture Template accessible

### Pre-Verification Setup
- [ ] **Specific Fact Identified**: Clear, discrete claim to be verified
- [ ] **Context Documented**: Why this fact matters for broader research
- [ ] **Success Criteria Defined**: What level of confidence is needed
- [ ] **Time Boundary Set**: Maximum 30 minutes for verification process

## Step-by-Step Workflow

### Step 1: Fact Isolation and Query Preparation (2-3 minutes)

**Fact Analysis:**
```yaml
Fact Decomposition:
- Core Claim: [What exactly is being asserted?]
- Quantitative Elements: [Any numbers, dates, percentages, etc.]
- Qualitative Elements: [Descriptive or categorical claims]
- Context Dependencies: [What context is required for accuracy?]
- Verification Scope: [How broad should fact-checking be?]
```

**Query Optimization:**
- [ ] **Specificity Check**: Query specific enough to avoid ambiguous results
- [ ] **Key Terms Identified**: Essential terms that must appear in reliable sources
- [ ] **Alternative Phrasings Prepared**: Backup queries in case initial search insufficient
- [ ] **Domain Context Added**: Relevant domain context included where necessary

### Step 2: Primary Verification with Perplexity Search (5-10 minutes)

**Execute Primary Search:**
```yaml
MCP Tool Deployment:
Tool: Perplexity Search
Query: [Specific fact with essential context]
Validation Focus: Source diversity and credibility assessment
Expected Output: Minimum 2-3 independent sources addressing the fact
```

**Source Analysis During Search:**
- [ ] **Source Identification**: Note specific sources cited by Perplexity
- [ ] **Initial Credibility Assessment**: Apply Source Credibility Matrix to identified sources
- [ ] **Source Independence Check**: Verify sources are genuinely independent
- [ ] **Currency Validation**: Confirm information recency is appropriate

**Immediate Atomic Note Creation:**
```yaml
---
state: fleeting
type: atomic-note
subtype: fact-verification
created: {{date}}
verification-context: [parent-research-topic]
primary-source-credibility: [score 1-10]
verification-tool: perplexity-search
verification-status: preliminary
---

# [Specific Fact Statement - Clear and Precise]

## Fact Being Verified
[Exact claim being checked - single, specific assertion]

## Primary Verification Results
**Perplexity Search Output**: [key findings from search]
**Sources Identified**:
- [Source 1]: Credibility [X]/10 - [Brief assessment]
- [Source 2]: Credibility [X]/10 - [Brief assessment]  
- [Source 3]: Credibility [X]/10 - [Brief assessment]

## Initial Assessment
**Fact Status**: [Confirmed/Disputed/Uncertain/Refuted]
**Source Agreement**: [Level of consensus across sources]
**Confidence Level**: [High/Medium/Low based on source quality]

## Technical Verification Needed
[Yes/No - Is this technical enough to require Context7 validation?]

## Follow-up Required
[Additional verification steps needed based on initial results]
```

### Step 3: Technical Validation with Context7 (If Applicable) (5-10 minutes)

**Technical Fact Assessment:**
```yaml
Context7 Deployment Triggers:
- API documentation claims
- Technical specification details
- Software version or feature information
- Implementation-specific assertions
- Standards or protocol descriptions
```

**Execute Technical Validation:**
```yaml
MCP Tool Deployment:
Tool: Context7
Library/Framework: [Relevant technical documentation]
Query: [Technical aspect requiring authoritative validation]
Focus: Accuracy against official documentation
```

**Technical Validation Documentation:**
```yaml
Technical Verification Results:
**Context7 Source**: [Authoritative documentation consulted]
**Documentation Version**: [Version/date of documentation]
**Technical Accuracy**: [Confirmed/Partially Confirmed/Contradicted/Not Covered]
**Specific Details**: [Exact technical information found]
**Implementation Notes**: [Any version-specific or context-specific considerations]
```

### Step 4: Cross-Reference and Triangulation (5-10 minutes)

**Multi-Source Triangulation Protocol:**
- [ ] **Source Consensus Analysis**: Do multiple high-quality sources agree?
- [ ] **Contradiction Investigation**: If sources disagree, what's the nature of disagreement?
- [ ] **Quality Weighting**: Weight source contributions by credibility scores
- [ ] **Context Sensitivity**: Consider if fact varies by context or time period

**Triangulation Documentation:**
```yaml
Cross-Reference Analysis:
**Source Agreement Pattern**: [Consensus/Split/Contradictory]
**High-Credibility Source Count**: [Number of sources ≥7/10 credibility]
**Medium-Credibility Source Count**: [Number of sources 5-6/10 credibility]
**Contradictory Evidence**: [Any sources that dispute the fact]
**Context Dependencies**: [Factors that affect fact accuracy]
```

### Step 5: Confidence Assessment and Final Verification (3-5 minutes)

**Confidence Level Calculation:**
```yaml
Confidence Determination Framework:
High Confidence (≥90%):
- 3+ sources with credibility ≥8/10 in agreement
- Technical validation confirms (if applicable)
- No credible contradictory evidence
- Recent information from authoritative sources

Medium Confidence (70-89%):
- 2+ sources with credibility ≥7/10 in agreement
- Limited contradictory evidence from lower-credibility sources
- Technical validation partially confirms or not applicable
- Some context dependency or uncertainty factors

Low Confidence (50-69%):
- Limited high-quality sources available
- Some contradictory evidence from credible sources
- Technical validation inconclusive
- Significant context dependency or rapidly changing information

Uncertain (<50%):
- Insufficient high-quality sources
- Contradictory evidence from multiple credible sources
- Technical validation disputes claim
- Fact appears to be disputed or context-dependent
```

**Final Verification Update:**
```yaml
Update Atomic Note:
verification-status: [verified/provisional/disputed/uncertain]
confidence-level: [high/medium/low/uncertain]
final-assessment: [Summary of verification outcome]
sources-used: [Count and average credibility]
verification-date: {{date}}
```

## Quality Gates and Validation

### Minimum Verification Standards
- [ ] **Source Credibility**: At least 2 sources with average credibility ≥ 6.0
- [ ] **Source Independence**: Sources are genuinely independent (not citing each other)
- [ ] **Technical Validation**: Context7 used for technical claims when applicable
- [ ] **Contradiction Resolution**: Disagreements between sources addressed and explained

### Quality Enhancement Standards
- [ ] **Source Diversity**: Multiple types of sources (academic, industry, government, etc.)
- [ ] **Currency Verification**: Information recency appropriate for claim type
- [ ] **Context Awareness**: Fact accuracy limitations and dependencies documented
- [ ] **Uncertainty Acknowledgment**: Confidence levels honestly assessed and reported

### Excellence Standards
- [ ] **Comprehensive Source Coverage**: Exhaustive coverage of available high-quality sources
- [ ] **Bias Analysis**: Systematic assessment of potential source biases
- [ ] **Historical Context**: Consideration of fact evolution over time
- [ ] **Implementation Validation**: Real-world application or implementation confirmed

## Error Handling and Escalation

### Common Verification Challenges

**Insufficient High-Quality Sources:**
```yaml
Resolution Protocol:
1. Expand search terms and alternative phrasings
2. Use Context7 for technical domains requiring specialized sources
3. Consider domain-specific databases or expert sources
4. Flag as "uncertain" if quality sources unavailable
5. Escalate to Deep Investigation Path for comprehensive research
```

**Contradictory Evidence from Credible Sources:**
```yaml
Resolution Protocol:
1. Analyze context dependencies and scope differences
2. Check for temporal factors (information changes over time)
3. Assess methodology differences between contradictory sources
4. Document contradiction explicitly in verification notes
5. Consider expert consultation or additional specialized sources
```

**Technical Complexity Beyond Context7 Coverage:**
```yaml
Resolution Protocol:
1. Use multiple Context7 queries with different library focus
2. Cross-reference with official standards bodies or specifications
3. Seek implementation examples or case studies
4. Flag for expert review or professional consultation
5. Escalate to Deep Investigation Path for comprehensive technical analysis
```

### Escalation Triggers
- [ ] **Source Quality Insufficient**: Average credibility below 6.0 after comprehensive search
- [ ] **Unresolvable Contradictions**: Multiple high-credibility sources disagree fundamentally
- [ ] **Technical Complexity**: Fact requires specialized domain knowledge beyond available tools
- [ ] **Time Boundary Exceeded**: Verification process exceeding 30-minute limit
- [ ] **Context Dependency**: Fact accuracy varies significantly by context or application

## Integration with Research Workflows

### Rapid Research Path Integration
- **Usage**: Primary verification method for factual claims in rapid research
- **Standards**: Minimum verification requirements sufficient for rapid research quality gates
- **Efficiency**: Streamlined workflow optimized for speed while maintaining accuracy

### Deep Investigation Path Integration
- **Usage**: Component verification within larger investigation framework
- **Standards**: Enhanced verification requirements including bias analysis and historical context
- **Comprehensiveness**: Systematic fact verification across all investigation findings

### Breakthrough Research Path Integration
- **Usage**: Foundation verification for innovative synthesis and novel insights
- **Standards**: Excellence verification requirements ensuring reliable foundation for breakthrough work
- **Innovation Support**: Verified facts provide confident basis for creative synthesis and paradigm development

## Performance Optimization

### Efficiency Techniques
- [ ] **Parallel Search Strategy**: Use multiple query variations simultaneously when possible
- [ ] **Context Reuse**: Leverage previous verification work for related facts
- [ ] **Template Optimization**: Refine atomic note templates based on usage patterns
- [ ] **Tool Selection**: Choose optimal MCP tool based on fact type and domain

### Quality Enhancement
- [ ] **Source Database Development**: Build familiarity with high-quality sources in different domains
- [ ] **Query Optimization**: Improve search query formulation based on results effectiveness
- [ ] **Bias Recognition**: Develop systematic approaches to bias identification and mitigation
- [ ] **Context Sensitivity**: Build expertise in recognizing context-dependent fact accuracy

### Success Metrics
- **Verification Accuracy**: Percentage of verified facts that remain accurate over time
- **Efficiency**: Average time per fact verification within target ranges
- **Source Quality**: Average credibility score of sources used in verification
- **Confidence Calibration**: Alignment between assessed confidence levels and actual fact reliability

---

This Factual Verification Workflow provides a systematic, tool-integrated approach to rapid fact verification that maintains high accuracy standards while efficiently processing information verification needs. The workflow's integration with atomic note capture ensures that verification work contributes directly to vault knowledge development and long-term research capabilities.