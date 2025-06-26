---
state: fleeting
type: atomic-note
created: 2025-06-15
parent-document: /mnt/f/Research/01-AI-and-LLMs/prompt-engineering/guides/llms-get-lost-in-multi-turn-conversation.md
source-credibility: 9
validation-status: verified
---

# Sharded Instruction Simulation Method

## Core Concept
Research methodology that transforms single-turn instructions into multiple "shards" of information revealed progressively across conversation turns to simulate underspecified multi-turn interactions.

## Why This Matters
Enables controlled comparison between single-turn and multi-turn LLM performance by ensuring the same information content while varying the disclosure pattern across conversation turns.

## Implementation Guidance
- Transform original instructions into 2-8 information shards
- First shard always introduces high-level intent
- Subsequent shards provide clarification and constraints
- Use LLM user simulator to decide shard revelation order
- Evaluate assistant responses using strategy classification (clarification, answer attempt, etc.)
- Maintain conversation until correct answer or all shards revealed

## Connections
- [[LLM Multi-Turn Conversation Degradation]] - Phenomenon being studied
- [[AI Conversation Reliability Analysis]] - Measurement framework
- [[Underspecified Communication Patterns]] - Real-world parallel