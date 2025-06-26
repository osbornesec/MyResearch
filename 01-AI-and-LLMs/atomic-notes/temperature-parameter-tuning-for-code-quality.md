---
state: fleeting
type: atomic-note
created: 2025-06-15
parent-document: /mnt/f/Research/01-AI-and-LLMs/prompt-engineering/guides/foundational-prompt-engineering-for-ai-coding.md
source-credibility: 8
validation-status: verified
---

# Temperature Parameter Tuning for Code Quality

## Core Concept
Optimal LLM parameter settings for different coding scenarios: production code (T=0.1-0.3), experimental code (T=0.4-0.7), and security-critical code (T=0.1-0.2) with corresponding top-k and top-p adjustments.

## Why This Matters
Temperature and sampling parameters significantly impact code generation quality, with lower temperatures producing more reliable production code and higher temperatures enabling creative exploration.

## Implementation Guidance
- Production code: Temperature 0.1-0.3, top-k 10-20, top-p 0.7-0.9
- Experimental code: Temperature 0.4-0.7, top-k 30-50, top-p 0.8-0.95
- Security-critical code: Temperature 0.1-0.2, top-k 5-10, top-p 0.6-0.8
- Adjust max tokens based on complexity: 1024-2048 for production, 2048-4096 for experimental
- Include security-focused prompts for critical applications

## Connections
- [[Few-Shot Prompting Effectiveness]] - Combined with temperature optimization
- [[Security-Focused Prompt Engineering]] - Critical application requirements
- [[Role-Based Prompting for Domain Expertise]] - Domain-specific parameter tuning