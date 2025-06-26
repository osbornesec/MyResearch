---
state: fleeting
type: research-atomic
created: 2025-06-16
source-credibility: 9
research-context: llm-evaluation-methodology
validation-status: verified
tags: [sharded-instructions, evaluation, methodology, conversation-simulation, underspecification]
---

# Sharded Instruction Methodology for Conversation Simulation

## Core Concept

Sharded instruction methodology transforms single, fully-specified instructions into multiple smaller "shards" that collectively contain the same information. Each shard introduces a single element from the original instruction, with the first shard always presenting the high-level intent and subsequent shards providing clarification details.

## Research Context

This methodology enables controlled simulation of underspecified, multi-turn conversations by ensuring information is gradually revealed across conversation turns. It bridges the gap between lab-based single-turn evaluation and realistic multi-turn user interactions where requirements emerge iteratively.

## Source Quality

- **Primary Source**: "LLMs Get Lost In Multi-Turn Conversation" - Section 3.1 Sharding Process
- **Credibility Score**: 9
- **Validation Method**: Semi-automatic process with LLM proposal generation followed by manual author validation

## Connection Potential

Links to conversation design patterns, user experience research, evaluation framework design, and prompt engineering methodologies. Connects to existing concepts around systematic testing and controlled experimental design in AI systems.

## Implementation Notes

The sharding process follows five key properties: completeness (all original information preserved), minimality (each shard contains single concept), maximality (shards cannot be further subdivided), independence (order-agnostic revelation), and clarity (natural language phrasing). Requires 1-4 hours of manual inspection per 100 sharded instructions.

## Evolution Notes

- **2025-06-16**: Extracted from academic research on multi-turn conversation evaluation
- **Future**: Explore automation opportunities and application to other evaluation domains