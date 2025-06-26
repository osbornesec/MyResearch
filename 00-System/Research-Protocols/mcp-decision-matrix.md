# MCP Research Decision Matrix

```yaml
---
type: decision-framework
purpose: optimal-mcp-tool-selection
integration: mandatory-pre-research
created: 2025-06-15
status: production-ready
---
```

## Decision Matrix Purpose

**Objective**: Systematic selection of optimal MCP tools for different research types
**Mandatory Usage**: Must be consulted before beginning any research investigation
**Integration**: Determines which specific workflows and validation protocols to follow
**Optimization**: Ensures maximum research effectiveness with available tool capabilities

## Research Type Classification Framework

### Primary Classification Dimensions

#### By Information Type
```yaml
Factual Information Research:
- Primary Tools: Perplexity Search → Context7
- Workflow: factual-verification-workflow.md
- Quality Gate: Multi-source cross-reference
- Time Estimate: 10-30 minutes

Technical Documentation Research:
- Primary Tools: Context7 → Sequential Thinking
- Workflow: technical-documentation-workflow.md
- Quality Gate: Authoritative source validation
- Time Estimate: 20-60 minutes

Market/Business Research:
- Primary Tools: Perplexity Deep Research → Synthesis
- Workflow: market-research-workflow.md
- Quality Gate: Stakeholder perspective diversity
- Time Estimate: 1-4 hours

Academic/Scholarly Research:
- Primary Tools: Sequential Thinking → Perplexity Reason
- Workflow: academic-research-workflow.md
- Quality Gate: Peer review standards
- Time Estimate: 2-8 hours

Innovation/Creative Research:
- Primary Tools: Debate topology + Context7 + Zen tools
- Workflow: innovation-research-workflow.md
- Quality Gate: Novelty and feasibility assessment
- Time Estimate: Variable (hours to days)
```

#### By Complexity Level
```yaml
Simple Queries (Rapid Research Path):
- Characteristics: Single concept, established facts, direct answers
- Primary Tools: Perplexity Search + Context7 (technical)
- Validation: Single-source validation with credibility ≥ 6
- Time Allocation: 15-45 minutes maximum

Complex Analysis (Deep Investigation Path):
- Characteristics: Multi-faceted, cross-domain, high confidence needed
- Primary Tools: Perplexity Deep Research + Context7 + Sequential Thinking + Perplexity Reason
- Validation: Multi-source triangulation with credibility ≥ 7.5
- Time Allocation: 2-8 hours

Innovation Synthesis (Breakthrough Research Path):
- Characteristics: Paradigm development, novel synthesis, breakthrough potential
- Primary Tools: Full MCP suite + multi-agent coordination
- Validation: Research excellence + innovation standards
- Time Allocation: Days to weeks
```

#### By Domain Requirements
```yaml
AI/Technology Research:
- Currency Critical: 6-12 months maximum for cutting-edge topics
- Primary Tools: Context7 (technical accuracy) + Perplexity Search (trends)
- Validation: Implementation track record + technical specifications
- Special Considerations: Rapid evolution requires frequent re-validation

Business/Market Research:
- Perspective Diversity Critical: Multiple stakeholder viewpoints required
- Primary Tools: Perplexity Deep Research + Perplexity Reason
- Validation: Competitive analysis + financial motivation assessment
- Special Considerations: Commercial bias detection essential

Academic/Research Topics:
- Rigor Critical: Peer review standards and methodological transparency
- Primary Tools: Sequential Thinking + Perplexity Reason
- Validation: Academic source quality + citation patterns
- Special Considerations: Historical context and paradigm awareness

API/Technical Documentation:
- Accuracy Critical: Version-specific and implementation-focused
- Primary Tools: Context7 + Sequential Thinking (complex integrations)
- Validation: Official documentation + implementation examples
- Special Considerations: Version currency and backward compatibility
```

## Tool Selection Decision Trees

### Decision Tree 1: Information Gathering Focus

```yaml
Start: What type of information do you need?

├── Established Facts/Claims
│   ├── General Domain → Perplexity Search
│   ├── Technical Domain → Context7
│   └── Controversial → Perplexity Search + Context7 triangulation
│
├── Current Trends/Analysis
│   ├── Market Research → Perplexity Deep Research
│   ├── Technology Trends → Perplexity Search + Context7
│   └── Academic Developments → Sequential Thinking + Perplexity Reason
│
├── Complex Reasoning/Logic
│   ├── Multi-step Analysis → Sequential Thinking
│   ├── Cross-domain Synthesis → Sequential Thinking + Perplexity Reason
│   └── Innovation Development → Full MCP suite coordination
│
└── Creative/Breakthrough Synthesis
    ├── Paradigm Development → Zen tools + Sequential Thinking
    ├── Cross-domain Innovation → Multi-agent coordination
    └── Strategic Innovation → Full breakthrough research protocol
```

### Decision Tree 2: Quality and Time Requirements

```yaml
Start: What are your quality and time constraints?

├── High Speed, Moderate Quality (< 1 hour)
│   ├── Simple Facts → Perplexity Search only
│   ├── Technical Facts → Context7 only
│   └── Basic Analysis → Perplexity Search + minimal Context7
│
├── Balanced Speed and Quality (1-4 hours)
│   ├── Comprehensive Facts → Perplexity Search + Context7 triangulation
│   ├── Market Analysis → Perplexity Deep Research + Context7
│   └── Technical Analysis → Context7 + Sequential Thinking
│
├── High Quality, Time Flexible (4+ hours)
│   ├── Academic Research → Sequential Thinking + Perplexity Reason + Context7
│   ├── Strategic Analysis → Full MCP coordination
│   └── Innovation Research → Multi-agent breakthrough protocol
│
└── Research Excellence (Days/Weeks)
    ├── Paradigm Development → Full breakthrough research path
    ├── Strategic Innovation → Multi-agent + Zen tools coordination
    └── Comprehensive Synthesis → Extended multi-agent investigation
```

### Decision Tree 3: Domain-Specific Selection

```yaml
Start: What is your research domain?

├── AI/LLMs Research
│   ├── Current Capabilities → Perplexity Search + Context7
│   ├── Technical Implementation → Context7 + Sequential Thinking
│   ├── Research Trends → Perplexity Deep Research + Perplexity Reason
│   └── Innovation Opportunities → Breakthrough research path
│
├── Software Development
│   ├── Technical Documentation → Context7 primary
│   ├── Implementation Patterns → Context7 + Perplexity Search
│   ├── Architecture Decisions → Sequential Thinking + Context7
│   └── Development Innovation → Zen tools + Context7
│
├── Business Analysis
│   ├── Market Research → Perplexity Deep Research primary
│   ├── Competitive Analysis → Perplexity Deep Research + Perplexity Reason
│   ├── Strategic Planning → Sequential Thinking + Perplexity Reason
│   └── Innovation Strategy → Breakthrough research path
│
├── API Documentation
│   ├── Specification Accuracy → Context7 primary
│   ├── Implementation Guidance → Context7 + Sequential Thinking
│   ├── Integration Patterns → Context7 + Perplexity Search
│   └── API Strategy → Sequential Thinking + market research tools
│
└── Cross-Domain Research
    ├── Pattern Recognition → Sequential Thinking + multiple tools
    ├── Synthesis Opportunities → Perplexity Reason + Zen tools
    ├── Innovation Development → Full breakthrough research path
    └── Paradigm Integration → Multi-agent coordination
```

## Tool Capability Matrix

### Perplexity Search Capabilities
```yaml
Primary Strengths:
- Rapid fact verification and basic information gathering
- Current information and trend identification
- Multiple source aggregation and synthesis
- Real-time information access

Optimal Use Cases:
- Simple fact checking and claim verification
- Current event and trend research
- Basic market research and competitive intelligence
- Starting point for deeper investigations

Quality Standards:
- Source credibility assessment required
- Bias detection for commercial information
- Currency verification for fast-changing topics
- Cross-reference for controversial claims

Time Efficiency: 5-15 minutes for most queries
```

### Perplexity Deep Research Capabilities
```yaml
Primary Strengths:
- Comprehensive topic investigation
- Multi-angle analysis and perspective integration
- Complex information synthesis
- Research-grade information gathering

Optimal Use Cases:
- Market research and industry analysis
- Comprehensive topic investigations
- Multi-stakeholder perspective research
- Foundation building for complex analysis

Quality Standards:
- Multiple perspective integration required
- Source diversity and quality assessment
- Bias pattern recognition across sources
- Comprehensive coverage validation

Time Efficiency: 30-90 minutes for comprehensive investigations
```

### Perplexity Reason Capabilities
```yaml
Primary Strengths:
- Complex analytical reasoning
- Multi-step logical analysis
- Argument evaluation and synthesis
- Academic-level reasoning support

Optimal Use Cases:
- Complex problem analysis and reasoning
- Academic research synthesis
- Strategic analysis and planning
- Cross-domain logical integration

Quality Standards:
- Logical consistency validation required
- Evidence-conclusion alignment verification
- Alternative perspective consideration
- Academic rigor in reasoning chains

Time Efficiency: 45-120 minutes for complex reasoning tasks
```

### Context7 Capabilities
```yaml
Primary Strengths:
- Authoritative technical documentation access
- Version-specific accuracy and implementation details
- Official specification and standard verification
- Technical implementation guidance

Optimal Use Cases:
- Technical accuracy verification
- API documentation and implementation
- Software framework and library research
- Official specification confirmation

Quality Standards:
- Version currency critical
- Implementation context awareness
- Official vs. community source distinction
- Backward compatibility consideration

Time Efficiency: 10-30 minutes for technical verification
```

### Sequential Thinking Capabilities
```yaml
Primary Strengths:
- Complex multi-step reasoning
- Problem decomposition and analysis
- Logical chain validation
- Deep analytical thinking support

Optimal Use Cases:
- Complex problem analysis
- Multi-step reasoning validation
- Architecture and design decisions
- Cross-domain logical integration

Quality Standards:
- Reasoning chain coherence required
- Step-by-step validation necessary
- Alternative path consideration
- Logical fallacy detection

Time Efficiency: 30-90 minutes for complex reasoning
```

### Zen Tools Capabilities (Advanced)
```yaml
Primary Strengths:
- Extended analytical thinking
- Creative problem solving
- Innovation and breakthrough development
- Advanced synthesis and integration

Optimal Use Cases:
- Innovation research and development
- Creative problem solving
- Paradigm development
- Strategic breakthrough analysis

Quality Standards:
- Innovation novelty assessment
- Feasibility validation required
- Creative synthesis coherence
- Strategic significance evaluation

Time Efficiency: Variable (hours to days)
```

## Parallel Execution Strategies

### Efficient Tool Combinations
```yaml
Rapid Parallel Execution (15-30 minutes):
- Perplexity Search + Context7: Fact verification with technical validation
- Multiple Perplexity queries: Different angles of same topic
- Context7 + Sequential Thinking: Technical accuracy with reasoning validation

Comprehensive Parallel Execution (1-2 hours):
- Perplexity Deep Research + Context7 + Sequential Thinking
- Multiple domain research: Different domains for cross-validation
- Market research + technical research: Business and technical perspectives

Advanced Parallel Execution (2+ hours):
- Full MCP suite coordination
- Multi-agent parallel investigation
- Cross-domain comprehensive synthesis
```

### Rate Limiting and Resource Management
```yaml
Tool Usage Optimization:
- Perplexity tools: Balance search breadth vs. depth
- Context7: Focus on most authoritative documentation
- Sequential Thinking: Deploy for highest-value reasoning chains
- Zen tools: Reserve for innovation and breakthrough development

Resource Allocation Strategy:
- High-frequency tools: Perplexity Search, Context7
- Medium-frequency tools: Perplexity Deep Research, Sequential Thinking
- Low-frequency tools: Perplexity Reason, Zen tools
- Strategic tools: Multi-agent coordination for breakthrough research
```

## Quality Gate Integration

### Tool-Specific Quality Standards
```yaml
Perplexity Search Quality Gates:
- Source credibility ≥ 6.0 average
- Minimum 2 independent sources for claims
- Bias assessment for commercial information
- Currency verification appropriate for domain

Context7 Quality Gates:
- Official documentation prioritized
- Version currency verified
- Implementation context documented
- Cross-reference with community sources

Sequential Thinking Quality Gates:
- Logical coherence maintained throughout
- Step-by-step validation completed
- Alternative explanations considered
- Reasoning chain gaps identified and addressed

Multi-Tool Integration Quality Gates:
- Cross-tool validation consistency
- Source triangulation across tools
- Quality standard maintenance across all tools
- Integration coherence and synthesis quality
```

## Usage Guidelines and Best Practices

### Pre-Research Tool Selection Protocol
1. **Research Question Analysis**: Determine primary information type and complexity
2. **Quality Requirements Assessment**: Establish confidence and accuracy needs
3. **Time Allocation Planning**: Set realistic time boundaries for investigation
4. **Tool Selection**: Use decision trees to select optimal tool combination
5. **Quality Gate Preparation**: Identify specific validation requirements

### During Research Optimization
- **Parallel Execution**: Deploy multiple tools simultaneously when appropriate
- **Progressive Refinement**: Start broad, then focus based on initial findings
- **Quality Monitoring**: Continuous assessment of source quality and validation
- **Efficiency Tracking**: Monitor time allocation and adjust strategy as needed

### Post-Research Evaluation
- **Tool Effectiveness Assessment**: Evaluate which tools contributed most value
- **Quality Achievement**: Verify all quality gates were met or exceeded
- **Efficiency Analysis**: Assess time investment vs. value creation
- **Learning Integration**: Document insights for future tool selection optimization

---

This MCP Research Decision Matrix ensures optimal tool selection for maximum research effectiveness while maintaining quality standards and efficient resource utilization. The systematic approach eliminates guesswork and ensures that each research investigation uses the most appropriate tools for the specific requirements and constraints involved.