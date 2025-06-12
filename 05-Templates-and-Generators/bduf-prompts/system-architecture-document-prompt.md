# System Architecture Document (SAD) Prompt

**Context:** The SAD describes the high-level architecture of the system, including major components, interfaces, and technologies. It's based on the SRS and provides the framework for the detailed design document. This document establishes the fundamental structure of the system and serves as a guide for all subsequent design and implementation decisions.

**Required Expertise Persona:** As a Chief Software Architect with 20+ years of experience designing enterprise-scale systems across diverse domains, you possess comprehensive expertise in architectural design methodologies, patterns, and frameworks. Your background includes establishing system architectures for mission-critical applications where scalability, reliability, and security were paramount concerns. You excel at translating complex requirements into coherent architectural visions and have directed the technical strategy for major platforms. Your experience spans multiple technology stacks, deployment paradigms, and integration patterns. You understand how to balance quality attributes like performance, security, and maintainability while addressing functional requirements. Your knowledge of architectural modeling techniques (4+1 View Model, C4, etc.), architectural patterns, and technical governance frameworks enables you to create comprehensive architectures that provide clear direction to development teams while satisfying stakeholder requirements.

**Prompt:**
```
I need you to create a comprehensive System Architecture Document (SAD) for [project name].

Before diving into specific architectural details, take a step back and consider: What fundamental architectural principles should guide system design? What architectural qualities are most important for this type of system? Outline these core principles and explain why they're crucial for creating a robust, maintainable architecture.

Now, working methodically through the architectural design process, create a detailed SAD with these sections:

1. Introduction:
   - Purpose: Describe the document's audience and usage
   - Scope: Define what aspects of the system architecture are covered
   - References: Cite related documents (especially the SRS)
   - Overview: Preview the rest of the document

2. Architectural Overview:
   - Provide a high-level description of the system architecture
   - Present the architectural style(s) chosen (e.g., microservices, layered)
   - Include a context diagram showing system boundaries
   - Step through your reasoning process for selecting this architectural approach
   - Explain how the architecture addresses key quality attributes

3. System Context:
   - Define system boundaries and external entities
   - Document all system interfaces with external systems
   - Explain the rationale for system scope decisions

4. Architectural Viewpoints:
   - Logical View:
     * Component diagram showing major logical elements
     * Component responsibilities and relationships
     * Explain your reasoning for component boundaries
   
   - Process View:
     * Concurrency and synchronization mechanisms
     * Major processes and their interactions
     * Explain your approach to process design
   
   - Development View:
     * Code organization and module structure
     * Build and package organization
     * Explain your reasoning for code organization
   
   - Physical View:
     * Deployment topology
     * Hardware requirements and mapping
     * Network infrastructure
     * Explain your rationale for physical deployment decisions
   
   - Scenarios:
     * Architectural use cases that validate the architecture
     * Trace key scenarios through the system
     * Walk through your reasoning for each scenario

5. Architecture Decisions:
   - For each key decision:
     * Problem statement
     * Constraints and context
     * Options considered
     * Evaluation criteria
     * Decision and justification
     * Trade-offs and consequences
   - Explain your decision-making process step by step

6. Quality Attributes:
   - For each attribute (performance, security, reliability, etc.):
     * Requirements from the SRS
     * Architectural approaches to address these requirements
     * Explain your reasoning for how the architecture supports this quality

7. Architectural Patterns:
   - Document patterns used in the architecture
   - Explain how each pattern is applied
   - Justify pattern selection decisions

8. Data Architecture:
   - Data models and entity relationships
   - Data storage and persistence strategy
   - Data flow through the system
   - Explain your reasoning for data architectural decisions

9. Security Architecture:
   - Authentication and authorization mechanisms
   - Data protection approaches
   - Security controls and mitigations
   - Explain your security design process and decisions

10. Performance Considerations:
    - Scalability approach
    - Performance optimization strategies
    - Explain your reasoning for performance design decisions

After completing the initial draft, validate the document against these criteria:
- Does the architecture address all functional requirements from the SRS?
- Does the design support all quality attribute requirements?
- Is the architecture consistent with technology constraints?
- Are key stakeholder concerns addressed?
- Are component responsibilities clearly defined?
- Are interfaces between components well-specified?
- Are design decisions documented with clear rationale?
- Is the architecture feasible within project constraints?

Based on this validation, refine any sections requiring improvement. Format the final document using markdown with clear section headings, diagrams, and a consistent structure throughout.
```

**Structure requirements:**
- Introduction (purpose, scope, references, overview)
- Architectural Overview (high-level description, style, context diagram)
- System Context (boundaries, external entities, interfaces)
- Architectural Viewpoints (logical, process, development, physical, scenarios)
- Architecture Decisions (problem, context, options, evaluation, decision, trade-offs)
- Quality Attributes (requirements, architectural approaches)
- Architectural Patterns (patterns used, application, justification)
- Data Architecture (models, storage, flow)
- Security Architecture (authentication, authorization, data protection)
- Performance Considerations (scalability, optimization)

**Validation criteria:**
- Addresses all functional requirements from SRS
- Supports all quality attribute requirements
- Consistency with technology constraints
- Addresses key stakeholder concerns
- Clearly defined component responsibilities
- Well-specified interfaces between components
- Documented design decisions with clear rationale
- Feasibility within project constraints