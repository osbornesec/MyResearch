# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Overview

This repository contains documentation and prompts related to Big Design Up Front (BDUF) methodology for software development. It includes core concept documents, prompt engineering guides, and generated prompts for creating specific BDUF artifacts.

## Repository Structure

- **Core Documentation**: Markdown files explaining BDUF principles, documentation emphasis, and phase-gated dependencies
- **Prompts Directory**: Contains prompt engineering templates for generating BDUF documentation
- **Generated Prompts Directory**: Contains specific prompts for different types of BDUF documents (SRS, Project Charter, etc.)

## Working with This Repository

### Document Categories

The repository content is organized into several categories:

1. **Foundational BDUF Concepts**: Files explaining the principles, tenets, and documentation practices in BDUF methodology
2. **Document Interrelationships**: Files describing how different documents in the BDUF process depend on each other
3. **Prompt Engineering System**: Files describing how to create effective prompts for generating BDUF documents
4. **Generated Prompts**: Specific prompts for different document types in the BDUF methodology

### Using the Generated Prompts

When working with the generated prompts:

1. The prompts are structured to guide AI systems (like Claude) to create comprehensive BDUF documentation
2. Each prompt contains context about the document's purpose and relationship to other BDUF artifacts
3. The prompts include validation criteria to ensure the generated documents meet quality standards
4. When using these prompts, replace "[project name]" with the actual project name

### Document Flow in BDUF

The repository documents describe a specific sequential flow of documentation creation:

1. Project Charter
2. Software Requirements Specification (SRS)
3. Architectural Design Document (ADD)
4. Detailed Design Document (DDD)
5. Interface Specifications (parallel)
6. Master Test Plan
7. Project Management Plan

Each document depends on the completion and approval of previous documents in the sequence.

## Best Practices for Working with This Content

1. Maintain the hierarchical organization of documents and their dependencies
2. Preserve the structured approach to prompt engineering that includes:
   - Context establishment
   - Abstract thinking phase
   - Structured reasoning
   - Output formatting
   - Refinement loops
3. When creating new content, ensure it aligns with the existing BDUF methodology principles
4. Respect the phase-gated approach where each document must be completed before subsequent documents begin