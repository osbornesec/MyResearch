# LLM Editing Systems Structured Prompt Patterns

```yaml
---
state: permanent
type: research-atomic
created: 2025-06-21
source-credibility: 8
research-context: llm-editing-systems
validation-status: verified
tags: [llm-editing, structured-prompts, code-editing, prompt-engineering]
---
```

## Core Concept

LLM editing systems use structured prompt patterns including Fill-In-Middle markers (`<PRE>`, `<SUF>`, `<MID>`), JSON formats, XML-like tags, and search/replace blocks to achieve precise edit placement and verification, with each pattern optimized for specific editing scenarios and accuracy requirements.

## Research Context

Essential for developers implementing LLM-based code editing tools. Provides evidence-based guidance for prompt structure selection based on editing requirements and accuracy needs.

## Source Quality

- **Primary Source**: Comprehensive review of 6 major LLM editing systems (Tabby, Claude, Mandark, Void, Aider, Claude-engineer)
- **Credibility Score**: 8/10
- **Validation Method**: Multi-system comparative analysis with experimental methodology

## Implementation Notes

**Structured Prompt Pattern Types**:

**Fill-In-Middle (FIM) Patterns**:
- Tabby/Void: `<PRE>existing_code<SUF>suffix_code<MID>insertion_point`
- Optimized for cursor-based edits and code completion
- Efficient for targeted insertions within existing code

**JSON-Based Patterns**:
- Mandark: `{"explain": "description", "filename": "path", "change": {"type": "addition", "atLine": N}, "code": "content"}`
- Provides machine-readable, verifiable edit instructions
- Supports multi-file edits with explicit verification steps

**XML-Like Structured Tags**:
- Claude Artifacts: Uses XML-like tags for precise edit specification
- Requires exact string matching for updates
- Suitable for both small and large-scale changes

**Search/Replace Block Patterns**:
- Aider: `<<<<<<< SEARCH ... ======= ... >>>>>>> REPLACE`
- Flexible for complex changes with minimal errors
- Combines incremental and full file edit capabilities

## Connection Potential

Links to [[prompt-engineering-comprehensive-guide-to-iterative-techniques]], [[structured-output-formats-llm-applications]], [[code-generation-prompt-patterns]], [[llm-editing-accuracy-verification-methods]]

## Evolution Notes

- **2025-06-21**: Created from comprehensive LLM editing systems review
- **Future**: Monitor emerging prompt patterns and accuracy optimization techniques