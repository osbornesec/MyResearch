# Multi-Agent System Search Framework

```yaml
---
state: fleeting
type: atomic-note
created: 2025-06-15
parent-document: /mnt/f/Research/01-AI-and-LLMs/Multi-Agent Design Optimizing Agents with Better Prompts and Topologies.md
connections: []
source-credibility: 9
research-context: google-cambridge-mass-framework
validation-status: verified
---
```

## Core Concept

MASS (Multi-Agent System Search) is a three-stage optimization framework that automates multi-agent system design by interleaving prompt and topology optimization from local to global scope.

## Three-Stage Optimization Process

### Stage 1: Block-Level Prompt Optimization
- Optimize individual agent prompts before composition
- Warm up initial predictor with single-agent APO: a*₀ ← O_D(a₀)
- Continue optimizing each topology with minimum agents: a*ᵢ ← O_D(aᵢ | a*₀)
- Store validation performance to measure building block influence

### Stage 2: Workflow Topology Optimization
- Focus on optimizing overall MAS structure and agent connectivity
- Measure incremental influence: Iₐᵢ = E(a*ᵢ) / E(a*₀)
- Use probability-based activation: activate topology if u > pₐ where pₐ = Softmax(Iₐ, t)
- Apply rejection sampling over predefined design space with budget constraints

### Stage 3: Workflow-Level Prompt Optimization
- Treat entire MAS as integrated entity for final optimization
- Adapt prompts for orchestration within the MAS: W* = O₂₃(W*c)
- Optimize interdependence between agents for coordinated performance

## Why This Matters

MASS addresses the complexity of joint optimization in multi-agent systems by decomposing the problem into manageable stages. It achieves 78.8% average performance on Gemini 1.5 Pro compared to 70.26% for multi-agent debate baselines, demonstrating substantial improvement through systematic optimization.

## Performance Evidence

- 15-25% accuracy improvements in Stage 1 (block-level optimization)
- +6% performance gains in Stage 3 (workflow-level optimization) 
- Outperforms ADAS and AFlow baselines across reasoning, multi-hop understanding, and coding tasks
- Demonstrates superior token-effectiveness compared to scaling approaches

## Connections

- [[mass-framework-three-stage-optimization]] - Previously extracted atomic note covering similar concept
- [[multi-agent-coding-collaboration]] - Application domain for MASS framework
- [[block-level-prompt-optimization-strategy]] - Stage 1 detailed methodology
- [[workflow-topology-optimization-framework]] - Stage 2 detailed methodology
- [[agent-topology-types-aggregation-reflect-debate-custom]] - Topology building blocks used in Stage 2