# Agent Topology Types: Aggregation, Reflect, Debate, Custom

```yaml
---
state: fleeting
type: atomic-note
created: 2025-06-15
parent-document: /mnt/f/Research/01-AI-and-LLMs/Multi-Agent Design Optimizing Agents with Better Prompts and Topologies.md
connections: []
source-credibility: 9
research-context: mass-topology-building-blocks
validation-status: verified
---
```

## Core Concept

Multi-agent system topology building blocks define structural arrangements of agents for coordinated problem-solving, with four primary types: Aggregate (parallel coordination), Reflect (iterative improvement), Debate (multi-perspective synthesis), and Custom (task-specific configurations).

## Topology Types

### Aggregate Topology
**Structure**: Parallel agents with diversified predictions + aggregation operator
**Function**: Collaborative prediction with consistency-based selection
**Parameterization**: Na agents acting in parallel
**Examples**: Majority vote, self-consistency
**Use Case**: When diverse perspectives improve accuracy through ensemble effects

### Reflect Topology  
**Structure**: Agents as verifiers providing iterative feedback
**Function**: Criticism and improvement suggestions for prediction refinement
**Parameterization**: Nr rounds for self-reflection
**Examples**: Self-refine, Reflexion
**Use Case**: When iterative improvement and error correction are beneficial

### Debate Topology
**Structure**: Multi-agent discussion with opinion collection and response updates
**Function**: Elicit truthful predictions through structured argumentation
**Parameterization**: Nd rounds for debating
**Examples**: Multi-agent debate systems
**Use Case**: When conflicting perspectives need resolution through reasoning

### Custom Topology
**Structure**: Task-specific agent configurations
**Function**: Domain-optimized coordination patterns
**Parameterization**: Task-dependent specifications
**Examples**: Summarize agents for long-context capability
**Use Case**: When standard topologies insufficient for specialized requirements

## Effectiveness Patterns

### Performance Characteristics
- **Not all topologies beneficial**: Some configurations degrade performance
- **Small fraction effective**: Beneficial topologies represent small subset of design space
- **Context dependency**: Effectiveness varies by task domain and complexity
- **Combination effects**: Multiple topologies can be composed for enhanced performance

### Empirical Evidence
- **HotpotQA**: Only debate topology brings 3% gain, others fail to improve
- **LiveCodeBench**: Similar patterns observed in test-output-prediction tasks
- **General finding**: Positive influence topologies are rare but highly valuable

## Implementation Specifications

### Building Block Requirements

#### Aggregate
- **Minimum Configuration**: {Predictor × 3, Aggregator × 1}
- **Search Dimensions**: {1, 3, 5, 7, 9} agents
- **Aggregation Methods**: Majority vote, consistency scoring, weighted combination

#### Reflect
- **Minimum Configuration**: {Predictor × 1, Reflector × 1}
- **Search Dimensions**: {0, 1, 2, 3, 4} reflection rounds
- **Feedback Types**: Error identification, improvement suggestions, validation

#### Debate
- **Minimum Configuration**: {Predictor × 2, Debator × 1}
- **Search Dimensions**: {0, 1, 2, 3, 4} debate rounds
- **Interaction Patterns**: Fully-connected communication, structured argumentation

#### Custom/Tool-Use
- **Minimum Configuration**: Task-dependent (e.g., {Predictor × 1, Executor × 1, Reflector × 1})
- **Search Dimensions**: Binary {0, 1} for tool integration
- **Capabilities**: External tool access, domain-specific processing

## Why This Matters

Understanding topology building blocks enables systematic multi-agent system design rather than ad-hoc experimentation. The MASS framework leverages these building blocks to search efficiently in the space of effective configurations while avoiding ineffective combinations.

## Design Principles

### Topology Selection Criteria
1. **Task Alignment**: Choose topology matching problem characteristics
2. **Computational Budget**: Balance performance gains against resource costs
3. **Error Patterns**: Select topologies addressing specific failure modes
4. **Interaction Complexity**: Match communication overhead to benefit potential

### Composition Guidelines
1. **Sequential Ordering**: Apply rule-based composition order [summarize, reflect, debate, aggregate]
2. **Influence-Based Selection**: Prioritize topologies with demonstrated positive impact
3. **Budget Constraints**: Respect maximum agent limits and computational resources
4. **Validation Requirements**: Ensure multi-round evaluation for stability

## Connections

- [[workflow-topology-optimization-framework]] - Framework using these building blocks
- [[multi-agent-system-search-framework]] - Parent optimization system
- [[multi-agent-coding-collaboration]] - Application of these topology patterns
- [[incremental-influence-measurement-framework]] - Method for evaluating topology effectiveness
- [[mas-design-complexity-factors]] - Complexity challenges in topology selection