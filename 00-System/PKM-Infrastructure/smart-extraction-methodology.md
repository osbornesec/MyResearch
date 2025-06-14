# Smart Extraction Methodology

```yaml
---
state: permanent
type: methodology-guide
created: 2025-06-13
last-reviewed: 2025-06-13
priority: high
tags: [pkm, methodology, extraction, atomic-notes, conversion]
---
```

## Overview

The Smart Extraction Methodology enables conversion of existing comprehensive documents to the Convergent PKM Framework without destroying valuable content. This approach extracts atomic concepts while preserving source material as reference.

## Core Principles

### 1. Preserve Original Value
- **Never delete** comprehensive research documents
- **Maintain** existing content structure and completeness
- **Tag** originals as `#source` documents with tracking metadata

### 2. Extract Strategic Concepts
- **Identify** key concepts that appear across multiple contexts
- **Create** atomic notes for reusable knowledge components
- **Link** atomics back to source for context and depth

### 3. Hybrid Architecture
- **Source documents** serve as comprehensive references
- **Atomic notes** provide linkable, reusable concepts
- **MOCs** organize both types for navigation

## Implementation Process

### Phase 1: Source Document Assessment
1. **Add frontmatter** to existing comprehensive documents:
```yaml
---
state: permanent
type: source-document
source-type: comprehensive-guide
atomic-extracts: 0
created: [date]
last-reviewed: [date]
tags: [source, domain-tags]
---
```

2. **Identify extraction candidates**:
   - Key concepts referenced across multiple documents
   - Foundational principles or frameworks
   - Performance benchmarks or evidence
   - Architectural patterns or components

### Phase 2: Atomic Extraction
1. **Create atomic notes** using standard template:
   - Single concept per note
   - Self-contained explanation  
   - Links to source material
   - Cross-connections to related atomics

2. **Update source documents**:
   - Add "Extracted Atomic Notes" section
   - Increment `atomic-extracts` counter
   - Link to extracted concepts

3. **Create workbench MOCs**:
   - Organize related extractions
   - Document extraction rationale
   - Identify future extraction opportunities

### Phase 3: Integration
1. **Link atomic notes** from other content
2. **Reference in MOCs** and navigation structures
3. **Use in synthesis** and new content creation

## Extraction Criteria

### High-Priority Candidates
- **Foundational concepts** used across multiple domains
- **Performance evidence** and benchmark data
- **Architectural frameworks** and component models
- **Methodological principles** applicable beyond single context

### Medium-Priority Candidates  
- **Implementation patterns** with broad applicability
- **Decision frameworks** and evaluation criteria
- **Tool comparisons** and feature analyses
- **Case study insights** with transferable lessons

### Low-Priority Candidates
- **Specific code examples** (keep in source)
- **Detailed tutorials** (comprehensive format better)
- **Tool-specific instructions** (may become obsolete)
- **Highly contextual information** (loses value when isolated)

## Quality Standards

### Atomic Note Requirements
- [ ] **Single concept focus** - passes atomicity test
- [ ] **Self-contained** - understandable without source reference
- [ ] **Well-titled** - functions as concept API
- [ ] **Properly connected** - links to related concepts and sources
- [ ] **Appropriately tagged** - enables discovery and organization

### Source Document Standards
- [ ] **Frontmatter complete** - proper type and metadata
- [ ] **Extraction tracking** - links to extracted concepts
- [ ] **Value preservation** - comprehensive content intact
- [ ] **Clear purpose** - role as reference source established

## Success Metrics

### Quantitative Indicators
- **Extraction rate**: Number of atomics per source document
- **Reuse frequency**: How often atomics are linked from other content
- **Discovery improvement**: Time to find specific concepts
- **Connection density**: Links between atomics and across domains

### Qualitative Indicators
- **Concept clarity**: Atomic notes improve understanding over source reference
- **Synthesis acceleration**: Easier to combine concepts from multiple sources
- **Knowledge navigation**: Faster path to relevant information
- **Creative recombination**: New insights from atomic concept connections

## Common Pitfalls

### Over-Extraction
- **Symptom**: Creating atomics for every subsection
- **Risk**: Overwhelming granularity reduces navigation efficiency
- **Mitigation**: Focus on concepts with cross-document utility

### Under-Extraction
- **Symptom**: Avoiding extraction due to source attachment
- **Risk**: Missing opportunities for knowledge reuse and synthesis
- **Mitigation**: Regular review for extraction opportunities

### Poor Atomic Quality
- **Symptom**: Atomics that require source context to understand
- **Risk**: Defeats purpose of atomic structure
- **Mitigation**: Self-containment testing and iterative refinement

### Connection Neglect
- **Symptom**: Atomics exist in isolation without cross-links
- **Risk**: Knowledge remains fragmented despite extraction
- **Mitigation**: Forced connection exercises and regular relationship mapping

## Demonstration Case: Tree-of-Thought Guide

### Source Document
- **Original**: 2,876-line comprehensive implementation guide
- **Preserved**: Complete with tutorials, code examples, and detailed analysis
- **Enhanced**: Added frontmatter and extraction tracking

### Extracted Atomics
1. **[[Tree-of-Thought vs Chain-of-Thought Performance]]** - Benchmark evidence
2. **[[Tree-of-Thought Four Essential Components]]** - Architectural framework
3. **[[Cognitive Science Foundations of Tree-of-Thought]]** - Theoretical basis

### Integration
- **Workbench MOC**: Organizes extractions and demonstrates methodology
- **Cross-linking**: Atomics connect to broader AI reasoning frameworks
- **Reusability**: Concepts can be referenced without accessing 2,876-line source

## Rollout Strategy

### Week 1: Infrastructure Setup
- [ ] Add frontmatter to top 10 comprehensive documents
- [ ] Identify first extraction candidates
- [ ] Create extraction tracking system

### Week 2-4: Initial Extractions
- [ ] Extract 3-5 atomics from highest-value sources
- [ ] Create first workbench MOCs
- [ ] Establish quality review process

### Month 2: Systematic Extraction
- [ ] Process remaining comprehensive documents
- [ ] Build connection networks between atomics
- [ ] Refine extraction criteria based on usage

### Month 3+: Optimization
- [ ] Monitor reuse patterns and success metrics
- [ ] Identify gaps and opportunities
- [ ] Document lessons learned and methodology refinements

The Smart Extraction Methodology enables systematic conversion to the Convergent PKM Framework while preserving the investment in existing comprehensive research content.