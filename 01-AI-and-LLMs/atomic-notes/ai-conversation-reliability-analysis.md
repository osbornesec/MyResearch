---
state: fleeting
type: atomic-note
created: 2025-06-15
parent-document: /mnt/f/Research/01-AI-and-LLMs/prompt-engineering/guides/llms-get-lost-in-multi-turn-conversation.md
source-credibility: 9
validation-status: verified
---

# AI Conversation Reliability Analysis

## Core Concept
Framework for decomposing LLM performance into aptitude (90th percentile performance) and unreliability (gap between 90th and 10th percentile), revealing that multi-turn degradation stems from unreliability increases rather than aptitude loss.

## Why This Matters
Understanding that LLMs maintain problem-solving capability but become inconsistent in multi-turn settings informs different optimization strategies focused on reliability rather than capability enhancement.

## Implementation Guidance
- Measure aptitude as 90th percentile performance across multiple runs
- Calculate unreliability as difference between 90th and 10th percentile
- Expect 16% aptitude drop but 112% unreliability increase in multi-turn
- Monitor that better single-turn models remain more reliable
- In multi-turn, all models exhibit similar high unreliability regardless of capability

## Connections
- [[LLM Multi-Turn Conversation Degradation]] - Performance pattern
- [[Sharded Instruction Simulation Method]] - Measurement methodology
- [[Multi-Turn Conversation Root Causes]] - Underlying mechanisms