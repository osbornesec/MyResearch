---
state: fleeting
type: atomic-note
created: 2025-06-15
parent-document: /mnt/f/Research/01-AI-and-LLMs/prompt-engineering/guides/llms-get-lost-in-multi-turn-conversation.md
source-credibility: 9
validation-status: verified
---

# LLM Multi-Turn Conversation Degradation

## Core Concept
Large language models exhibit significant performance degradation (39% average drop) in multi-turn conversations compared to single-turn settings, primarily due to increased unreliability rather than loss of aptitude.

## Why This Matters
Research across 15 LLMs and 200,000+ simulated conversations reveals that even state-of-the-art models struggle with underspecified multi-turn conversations, affecting real-world AI system effectiveness.

## Implementation Guidance
- Expect 35-40% performance degradation in multi-turn scenarios across all model sizes
- Performance drops occur even in two-turn conversations
- Degradation affects both small (8B) and large (300B+) models equally
- Additional test-time compute (reasoning models) does not mitigate the effect
- Temperature reduction to 0.0 provides minimal improvement in multi-turn reliability

## Connections
- [[Sharded Instruction Simulation Method]] - Research methodology
- [[AI Conversation Reliability Analysis]] - Performance decomposition
- [[Multi-Turn Conversation Optimization Strategies]] - Mitigation approaches