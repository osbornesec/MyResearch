# Atomic Research Capture Template

```yaml
---
type: pkm-integration-template
purpose: seamless-research-to-knowledge-conversion
integration: verify-phase-mandatory
methodology: zettelkasten-atomic-principles
created: 2025-06-15
---
```

## Template Purpose

**Objective**: Transform research findings into atomic knowledge units during the VERIFY phase
**Mandatory Usage**: Every research fact must become an atomic note immediately upon verification
**Integration**: Core component of VERIFY-SYNTHESIZE-VALIDATE workflow

## Atomic Research Principles

### Single Concept Principle
**Rule**: One atomic note = One complete, verifiable research finding
**Examples**:
- ✅ "API rate limiting reduces server overload by distributing request load over time"
- ✅ "Perplexity AI uses retrieval-augmented generation to enhance response accuracy"  
- ❌ "APIs have rate limiting and authentication which are both important for security and performance"

### Self-Contained Principle  
**Rule**: Each note must be understandable without external context
**Requirements**:
- [ ] Complete thought expressed within note boundaries
- [ ] Essential context included in note content
- [ ] No dependency on other notes for basic comprehension
- [ ] Clear enough for someone discovering note independently

### Conceptual Indivisibility Principle
**Rule**: Cannot be meaningfully broken into smaller knowledge units
**Test**: If you can split the concept into two separate ideas that each stand alone, create separate atomic notes

### Modular Recombination Principle
**Rule**: Atomic notes can be flexibly combined with other concepts
**Implementation**: Use linking and MOC integration to create larger knowledge structures

## Research-to-Atomic Conversion Workflow

### Phase 1: Immediate Capture During Research
**During MCP tool usage (Perplexity, Context7, Sequential Thinking):**

```yaml
Real-Time Capture Process:
1. Identify discrete fact/finding/insight
2. Immediately create atomic note with research template
3. Continue research while capturing additional atomic notes
4. Link atomic notes as connections become apparent
```

**Atomic Research Note Template:**
```yaml
---
state: fleeting
type: atomic-note
subtype: research-finding
created: {{date}}
source-credibility: [score 1-10]
research-context: [parent-research-topic]
validation-status: [verified/preliminary/disputed]
research-tool: [perplexity-search/context7/sequential-thinking]
---

# [Clear Concept Title - Functions as API]

## Core Research Finding
[Single concept expressed completely and clearly]

## Source Validation
**Primary Source**: [citation with credibility score]
**Verification Method**: [MCP tool used + validation approach]
**Confidence Level**: [high/medium/low based on source quality and verification]
**Research Date**: {{date}}

## Research Context
**Parent Investigation**: [broader research topic this supports]
**Research Question**: [specific question this fact answers]
**Domain**: [ai-llms/software-dev/business-analysis/api-docs/methodology]

## Potential Connections
[Note obvious connections to existing vault concepts - will be developed in SYNTHESIZE phase]
- [[Potentially Related Concept A]]
- [[Potentially Related Concept B]]
- [[Relevant MOC or Index]]

## Quality Assurance
**Contradictions**: [any conflicting information noted]
**Limitations**: [scope or applicability limits]
**Follow-up Needed**: [additional verification or research required]
```

### Phase 2: Quality Gate Validation
**Before proceeding with research:**

- [ ] **Atomic Structure Verified**: Single concept per note
- [ ] **Source Quality Documented**: Credibility score assigned using Source Credibility Matrix
- [ ] **Self-Containment Checked**: Note understandable independently
- [ ] **Conceptual Completeness**: Core idea fully captured
- [ ] **Research Trail Maintained**: Clear connection to research process

### Phase 3: Real-Time Connection Discovery
**During active research:**

```yaml
Connection Discovery Process:
1. Search vault for related concepts using [[]] syntax
2. Note potential connections in "Potential Connections" section
3. Create bidirectional links when connection value is clear
4. Flag synthesis opportunities for SYNTHESIZE phase
```

## Research Context Integration

### Rapid Research Path Integration
**Atomic Note Creation Requirements:**
- [ ] Minimum 1 atomic note per verified fact
- [ ] Source credibility score ≥ 6 for standalone facts
- [ ] Clear connection to research question documented
- [ ] Potential vault connections identified

**Quality Standards:**
- Complete concept capture within 2-3 minutes per atomic note
- Clear, searchable title that functions as concept API
- Sufficient self-contained context for future discovery

### Deep Investigation Path Integration
**Enhanced Atomic Note Requirements:**
- [ ] Multiple atomic notes per research finding area
- [ ] Source triangulation documented across atomic notes
- [ ] Pattern recognition noted across related atomic notes
- [ ] Cross-domain connection opportunities identified

**Advanced Standards:**
- Systematic decomposition of complex findings into atomic components
- Rich connection mapping to existing vault knowledge
- Detailed source validation and bias analysis
- Forward-looking synthesis opportunity identification

### Breakthrough Research Path Integration
**Comprehensive Atomic Note System:**
- [ ] Complete atomization of all research findings
- [ ] Innovation potential documented in atomic notes
- [ ] Cross-domain synthesis opportunities systematically captured
- [ ] Novel connection discovery process integrated

## Source Integration Patterns

### Single High-Quality Source
**When source credibility ≥ 8:**
```yaml
Source Documentation:
- Direct citation with confidence level: high
- Single-source validation acceptable
- Note quality of source in atomic note
- Mark for potential future triangulation if critical
```

### Multiple Source Triangulation
**When source credibility 6-7 or controversial topic:**
```yaml
Multi-Source Documentation:
- Create separate atomic note for each source perspective
- Create synthesis atomic note combining validated consensus
- Document source agreement/disagreement patterns
- Note confidence level based on source consensus
```

### Questionable Source Handling
**When source credibility ≤ 5:**
```yaml
Low-Quality Source Protocol:
- Flag as preliminary/disputed in validation status
- Require additional high-quality source verification
- Document specific quality concerns
- Use only for hypothesis generation, not fact establishment
```

## Evergreen Evolution Integration

### Transition Triggers
**Atomic Note → Evergreen Candidate:**
- [ ] High connection density (≥ 3 meaningful connections)
- [ ] Repeated reference during research activities
- [ ] Clear principle-based content (timeless insights)
- [ ] Strong integration with existing vault knowledge

### Evergreen Preparation Process
**During SYNTHESIZE phase:**

```yaml
Evergreen Evolution Checklist:
1. Title Refinement:
   - [ ] Clear concept API function
   - [ ] Searchable and memorable
   - [ ] Specific but not overly narrow
   
2. Content Enrichment:
   - [ ] Add depth while maintaining atomic focus
   - [ ] Include examples or applications
   - [ ] Note patterns or principles
   
3. Connection Enhancement:
   - [ ] Establish bidirectional links
   - [ ] Connect to relevant MOCs
   - [ ] Identify semantic relationship types
   
4. Quality Validation:
   - [ ] Self-contained comprehension maintained
   - [ ] Conceptual indivisibility preserved
   - [ ] Modular recombination potential clear
```

### State Progression Management
```yaml
State Evolution Path:
fleeting → transitioning → permanent

Fleeting: 
- Initial research capture
- Basic source validation
- Minimal connections

Transitioning:
- Enhanced connections discovered
- Evergreen potential identified
- Title refinement in progress

Permanent:
- Evergreen standards met
- Rich connection network
- Regular reference and refinement
```

## LYT Structure Integration

### Immediate MOC Connection
**During atomic note creation:**
- [ ] Identify relevant Index MOCs for domain
- [ ] Note potential Workbench MOC integration
- [ ] Flag for Hub MOC consideration if cross-domain

### Connection Type Documentation
**Use semantic linking conventions:**
```yaml
Link Types for Research Atomic Notes:
- [[Concept]] - general association
- #supports [[Claim]] - evidential support
- #refutes [[Claim]] - contradictory evidence  
- #builds-on [[Foundation]] - conceptual development
- #source [[Reference]] - bibliographic connection
- #validates [[Method]] - methodological confirmation
- #applies-to [[Domain]] - application context
```

### MOC Integration Strategy
**Progressive integration approach:**

1. **Index MOC Integration**: Link to appropriate domain indices
2. **Workbench MOC Integration**: Add to active synthesis projects
3. **Hub MOC Integration**: Connect to cross-domain synthesis opportunities
4. **New MOC Creation**: When note clusters reach critical mass (5-10 related atomic notes)

## Quality Assurance Framework

### Real-Time Quality Checks
**During atomic note creation:**
- [ ] **Single Concept Verification**: Can this be split into multiple ideas?
- [ ] **Self-Containment Check**: Is external context required for understanding?
- [ ] **Completeness Assessment**: Is the core idea fully captured?
- [ ] **Source Quality Verification**: Does source meet credibility standards?

### Post-Creation Validation
**Before proceeding to SYNTHESIZE phase:**
- [ ] **Atomic Structure Maintained**: No compound concepts in single notes
- [ ] **Research Trail Clear**: Connection to research process documented
- [ ] **Source Standards Met**: Credibility matrix properly applied
- [ ] **Connection Potential Identified**: Links to existing knowledge noted

### Batch Quality Review
**Weekly atomic note quality assessment:**
- [ ] Review week's atomic notes for structural consistency
- [ ] Identify patterns in connection discovery
- [ ] Note areas where atomic decomposition could improve
- [ ] Update atomic capture skills based on usage patterns

## Advanced Patterns

### Cross-Domain Atomic Notes
**When research findings span multiple domains:**
```yaml
Cross-Domain Documentation:
- Tag with multiple domain categories
- Note application contexts for each domain
- Identify domain-specific implications
- Connect to multiple domain Index MOCs
```

### Synthesis Catalyst Atomic Notes
**When atomic notes suggest breakthrough connections:**
```yaml
Innovation Documentation:
- Flag as synthesis catalyst in metadata
- Note cross-domain connection potential
- Identify paradigm shift implications
- Schedule for breakthrough research path consideration
```

### Research Trail Atomic Notes
**For tracking research methodology insights:**
```yaml
Meta-Research Documentation:
- Capture insights about research process itself
- Document methodological learnings
- Note tool effectiveness observations
- Build research methodology knowledge base
```

## Success Metrics

### Individual Atomic Note Quality
- **Concept Clarity**: Note expresses single idea clearly and completely
- **Self-Containment**: Understandable without external dependencies
- **Source Quality**: Average credibility score ≥ 6.5
- **Connection Potential**: Average 2+ meaningful connections per note

### Research Integration Efficiency
- **Capture Speed**: Atomic note creation within 2-3 minutes per concept
- **Research Flow**: Note creation doesn't disrupt research momentum
- **Quality Consistency**: Reliable application of atomic principles
- **Connection Discovery**: Regular identification of vault integration opportunities

### Knowledge Network Health
- **Connection Density**: Increasing integration with existing vault content
- **Synthesis Acceleration**: Atomic notes facilitate faster insight generation
- **Evergreen Evolution**: Regular progression from fleeting to permanent status
- **Cross-Domain Integration**: Systematic connection across vault domains

---

This Atomic Research Capture Template ensures that every research finding becomes a valuable knowledge asset immediately upon verification, creating a compound effect where research quality improves vault intelligence and vault intelligence accelerates research capabilities. The seamless integration of research capture with PKM principles transforms individual investigations into lasting knowledge infrastructure.