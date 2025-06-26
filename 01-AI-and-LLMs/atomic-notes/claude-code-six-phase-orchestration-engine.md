---
state: permanent
type: atomic-note
created: 2025-06-21
source-credibility: 8
research-context: Claude Code technical architecture
validation-status: verified
connections: 3
review-frequency: weekly
domain: ai-coding-platforms
---

# Claude Code Six-Phase Orchestration Engine

## Core Concept

Claude Code's `tt` function implements a six-phase async generator orchestration engine that manages the complete lifecycle of AI-human interaction through context preparation, auto-compaction, prompt assembly, LLM streaming, tool execution, and recursive completion.

## Six-Phase Architecture

**Phase Breakdown**:
1. **Context Preparation** (50-200ms): Message history and git context assembly
2. **Auto-compaction** (0-3000ms): Automatic context window management when needed
3. **System Prompt Assembly**: Dynamic prompt construction with context integration
4. **LLM Stream Processing**: Real-time streaming response handling
5. **Tool Execution**: Parallel tool invocation with permission gating
6. **Recursion/Completion**: Continuation or termination decision logic

## Performance Characteristics

**Timing Optimizations**:
- Model-specific token budgeting (Opus 4: 30%, Sonnet: 20%, Haiku: 10%)
- Priority-based prompt section ordering
- Automatic context window management
- Recursive depth control for complex conversations

## Research Context

This orchestration engine represents the core innovation that enables Claude Code's seamless AI-human collaboration. The six-phase approach ensures optimal resource utilization while maintaining conversational continuity across complex development tasks.

## Source Quality

- **Primary Source**: Claude Code technical architecture deep dive
- **Credibility Score**: 8/10 (detailed phase timing and implementation)
- **Validation Method**: Orchestration patterns verified through technical analysis

## Connection Potential

Links to: orchestration engines, async generators, LLM integration patterns, conversation management, AI workflow automation

## Key Insight

The six-phase orchestration engine transforms AI coding from request-response interactions into continuous, stateful conversations that can handle unlimited complexity through recursive processing and intelligent resource management.