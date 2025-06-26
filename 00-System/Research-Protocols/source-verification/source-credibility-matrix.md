# Source Credibility Matrix

```yaml
---
type: reference-framework
purpose: source-quality-assessment
integration: verify-phase-mandatory
created: 2025-06-15
review-frequency: quarterly
---
```

## Framework Purpose

**Objective**: Standardized assessment of source reliability for research validation
**Mandatory Usage**: All research must include source credibility scoring
**Integration**: Core component of VERIFY phase in all research workflows

## Credibility Scoring System

### Score 9-10: Research Excellence Sources
**Source Types**: Peer-reviewed academic journals, government statistical agencies, authoritative technical documentation

**Validation Requirements**:
- [ ] Journal impact factor verification (academic)
- [ ] Methodology transparency documented
- [ ] Recent publication within domain relevance window
- [ ] No obvious conflicts of interest
- [ ] Primary data or authoritative synthesis

**Quality Indicators**:
- Recent publication (within 2 years for fast-moving fields, 5 years for stable domains)
- Clear methodology section with statistical rigor
- Transparent funding sources and potential bias acknowledgment
- High citation count relative to field and publication age
- Institutional affiliation with recognized expertise

**Usage Notes**:
- Use as primary sources for critical claims
- Can support conclusions independently
- Suitable for academic-level research projects
- Safe for policy or strategic decision-making

### Score 8-9: Professional Authority Sources
**Source Types**: Government reports, industry standards bodies, established think tanks, reputable news organizations with editorial standards

**Validation Requirements**:
- [ ] Authority/agency verification
- [ ] Data provenance documented
- [ ] Editorial standards or peer review process
- [ ] Transparent methodology where applicable
- [ ] Clear publication standards

**Quality Indicators**:
- Institutional credibility and track record
- Clear editorial or review process
- Transparent funding and organizational structure
- Regular fact-checking and correction policies
- Subject matter expertise of authors/organization

**Usage Notes**:
- Reliable for industry analysis and trends
- Good for contextual information and background
- Requires triangulation for controversial topics
- Suitable for business and strategic planning

### Score 7-8: Industry Expert Sources
**Source Types**: Industry reports, expert analysis, technical blogs by recognized authorities, conference proceedings

**Validation Requirements**:
- [ ] Author credentials verification
- [ ] Organizational reputation assessment
- [ ] Methodology disclosure where applicable
- [ ] Commercial bias acknowledgment
- [ ] Track record of accurate analysis

**Quality Indicators**:
- Recognized expertise in specific domain
- Consistent track record of accurate analysis
- Transparent about limitations and assumptions
- Clear distinction between fact and opinion
- Professional reputation and peer recognition

**Usage Notes**:
- Good for industry insights and trends
- Requires awareness of commercial motivations
- Useful for technical implementation guidance
- Should be cross-referenced with other sources

### Score 6-7: Informed Commentary Sources
**Source Types**: Expert opinion pieces, analysis blogs, trade publications, professional commentary

**Validation Requirements**:
- [ ] Author background verification
- [ ] Clear opinion vs. fact distinction
- [ ] Source citation for factual claims
- [ ] Reasonable argument structure
- [ ] Domain knowledge demonstration

**Quality Indicators**:
- Author has relevant professional experience
- Clear reasoning and evidence-based arguments
- Acknowledges limitations and uncertainties
- Cites authoritative sources for factual claims
- Logical consistency in analysis

**Usage Notes**:
- Valuable for perspectives and interpretation
- Requires critical evaluation of bias
- Good for understanding different viewpoints
- Should not be sole source for important decisions

### Score 4-6: General Information Sources
**Source Types**: General news media, Wikipedia, educational websites, mainstream publications

**Validation Requirements**:
- [ ] Editorial standards assessment
- [ ] Fact-checking policies verification
- [ ] Source citation for major claims
- [ ] Reasonable currency of information
- [ ] No obvious misinformation markers

**Quality Indicators**:
- Established publication with editorial oversight
- Regular fact-checking and correction practices
- Clear attribution of sources for major claims
- Professional journalism standards
- Consistent quality across publications

**Usage Notes**:
- Useful for general background and context
- Requires verification of specific facts
- Good starting point for deeper research
- Should not support critical business decisions alone

### Score 2-4: Questionable Sources
**Source Types**: Personal blogs, social media, unverified websites, promotional content

**Validation Requirements**:
- [ ] Clear identification as questionable source
- [ ] Independent verification of any factual claims
- [ ] Bias and motivation assessment
- [ ] Cross-reference with authoritative sources
- [ ] Explicit uncertainty acknowledgment

**Quality Indicators**:
- Limited or unclear editorial oversight
- Potential commercial or personal motivations
- Inconsistent quality or accuracy track record
- Limited citation of authoritative sources
- Opinion-heavy content with minimal factual basis

**Usage Notes**:
- Use only for preliminary investigation
- Require independent verification of all claims
- Useful for identifying potential research directions
- Never use as sole support for important conclusions

### Score 1-2: Unreliable Sources
**Source Types**: Anonymous sources, known misinformation sites, unsubstantiated claims

**Validation Requirements**:
- [ ] Complete independent verification required
- [ ] Clear flagging as unreliable in research notes
- [ ] Multiple high-credibility sources for validation
- [ ] Explicit warning in any reference
- [ ] Consider exclusion from research entirely

**Quality Indicators**:
- Anonymous or unverifiable authorship
- History of misinformation or inaccuracy
- Lack of editorial standards or fact-checking
- Extreme bias or agenda-driven content
- Claims without credible source backing

**Usage Notes**:
- Generally avoid in serious research
- If included, require extensive verification
- Flag prominently as unreliable in notes
- Use only to understand alternate perspectives or identify misinformation

## Source Assessment Workflow

### Step 1: Initial Source Identification
**During MCP tool usage (Perplexity, Context7):**

```yaml
Source Capture Template:
- Source Title: [full title]
- Author/Organization: [who produced this]
- Publication Date: [when published]
- Source Type: [journal, report, blog, etc.]
- URL/Reference: [how to access]
- Preliminary Score: [initial assessment 1-10]
```

### Step 2: Credibility Evaluation
**Apply scoring matrix systematically:**

- [ ] **Authority Assessment**: Who is the author/organization?
- [ ] **Purpose Evaluation**: Why was this created? Commercial, educational, research?
- [ ] **Currency Check**: How recent is the information?
- [ ] **Methodology Review**: How was the information gathered?
- [ ] **Bias Analysis**: What motivations or perspectives might influence content?

### Step 3: Score Assignment and Documentation
**Record assessment in atomic notes:**

```yaml
Source Quality Documentation:
---
source-url: [URL]
source-type: [academic/industry/expert/commentary/general/questionable/unreliable]
credibility-score: [1-10]
assessment-date: {{date}}
assessment-criteria: [key factors influencing score]
---

# Source: [Title]

## Credibility Assessment
**Score**: [X]/10 - [Source Type Category]
**Assessment Date**: {{date}}

**Scoring Rationale**:
- Authority: [assessment]
- Currency: [assessment] 
- Methodology: [assessment]
- Bias Level: [assessment]
- Track Record: [assessment]

**Usage Guidance**:
- Suitable for: [types of claims this can support]
- Requires triangulation: [yes/no and why]
- Limitations: [specific concerns or constraints]
```

## Integration with Research Workflows

### Rapid Research Path Integration
**Minimum Requirements:**
- [ ] Score all sources using this matrix
- [ ] Average credibility score ≥ 6.0 for research acceptance
- [ ] Flag any score ≤ 4 sources for additional verification
- [ ] Document scoring rationale in atomic notes

### Deep Investigation Path Integration
**Enhanced Requirements:**
- [ ] Score all sources with detailed rationale
- [ ] Require minimum 3 sources with score ≥ 7 for major claims
- [ ] Cross-reference questionable sources with authoritative alternatives
- [ ] Document source triangulation strategy

### Breakthrough Research Path Integration
**Rigorous Requirements:**
- [ ] Comprehensive source landscape mapping
- [ ] Score distribution analysis across all sources
- [ ] Bias pattern identification across source types
- [ ] Source quality impact assessment on conclusions

## Bias Detection Integration

### Common Bias Types to Identify
**Commercial Bias**:
- Funding sources and financial motivations
- Product or service promotion objectives
- Selective data presentation
- Omission of negative findings

**Confirmation Bias**:
- Cherry-picking supporting evidence
- Dismissing contradictory information
- Overconfidence in preferred conclusions
- Inadequate consideration of alternatives

**Authority Bias**:
- Over-reliance on prestigious sources
- Dismissal of valid but non-authoritative sources
- Assumption that authority equals accuracy
- Inadequate independent verification

**Recency Bias**:
- Over-weighting recent information
- Dismissing historical context
- Assuming newer is always better
- Ignoring established principles

### Bias Mitigation Strategies
**Source Diversification**:
- Seek sources across credibility spectrum
- Include perspectives from different stakeholders
- Balance recent and historical information
- Cross-reference methodological approaches

**Systematic Triangulation**:
- Verify claims across minimum 3 independent sources
- Seek sources with different potential biases
- Look for consensus among high-credibility sources
- Document and explain conflicting information

## Quality Assurance Integration

### Automated Quality Checks
**Minimum Source Standards (Enforced in Templates)**:
- [ ] No research conclusion based on single source < 7/10
- [ ] No critical claim supported only by sources < 6/10  
- [ ] All sources ≤ 4/10 require independent verification
- [ ] Source credibility average ≥ 6.5 for research acceptance

### Manual Quality Review
**Weekly Source Quality Assessment**:
- [ ] Review credibility scores assigned during week
- [ ] Identify patterns in source selection
- [ ] Note areas where higher-quality sources needed
- [ ] Update source assessment skills based on learning

### Continuous Improvement
**Monthly Matrix Calibration**:
- [ ] Review scoring accuracy against research outcomes
- [ ] Adjust criteria based on domain-specific learning
- [ ] Update bias detection based on identified patterns
- [ ] Refine integration with research workflows

## Advanced Applications

### Domain-Specific Adaptations
**AI/Technology Research**:
- Higher currency requirements (6-12 months for cutting-edge topics)
- Emphasis on implementation track record
- Technical accuracy verification through multiple sources
- Industry vs. academic source balance

**Business Analysis Research**:
- Financial motivation transparency critical
- Market position impact on perspective
- Quantitative data quality emphasis
- Competitive landscape consideration

**API Documentation Research**:
- Version-specific accuracy requirements
- Official vs. community source hierarchy
- Implementation success track record
- Currency critical for rapidly evolving APIs

### Cross-Domain Synthesis Applications
**Pattern Recognition Across Sources**:
- Identify source quality patterns across domains
- Recognize bias patterns that span multiple fields
- Develop domain-agnostic quality indicators
- Build expertise in source evaluation across disciplines

---

## Success Metrics

### Individual Research Quality
- **Source Credibility Average**: Target ≥ 7.0 for important research
- **Bias Detection Rate**: Identify and document bias in ≥ 80% of questionable sources
- **Triangulation Success**: Multiple high-quality sources for all major claims
- **Assessment Accuracy**: Credibility scores align with research outcome quality

### Vault-Wide Research Standards
- **Research Quality Improvement**: Measurable increase in average source quality over time
- **Bias Awareness**: Systematic identification and mitigation of research biases
- **Source Diversification**: Appropriate range of source types for different research questions
- **Quality Consistency**: Reliable application of standards across all research workflows

This Source Credibility Matrix serves as the foundation for research quality in all vault investigations, ensuring that the VERIFY phase of research maintains consistently high standards while efficiently categorizing source reliability for appropriate usage in different research contexts.