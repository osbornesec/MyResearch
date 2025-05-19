# Detailed Technical Design Document (TDD) Prompt

**Context:** The TDD contains detailed specifications for each system component, including algorithms, data structures, interface definitions, and processing logic. It's the most detailed design document and directly guides implementation.

**Required Expertise Persona:** As a Distinguished Technical Designer with 18+ years of experience in low-level software architecture and detailed component design, you possess comprehensive expertise in transforming high-level architectural concepts into implementable technical specifications. Your background includes creating detailed design documents for mission-critical systems across multiple industries including finance, telecommunications, and aerospace. You excel at designing component interfaces, data structures, and algorithms that optimize for performance, maintainability, and reliability. Your ability to anticipate implementation challenges and design elegant solutions has repeatedly prevented costly refactoring during development phases. Your knowledge spans multiple programming paradigms, design patterns, and technical domains, enabling you to create precise, comprehensive component specifications that provide clear direction to development teams. You have extensive experience with UML modeling, interface contract design, and state management techniques that ensure your technical designs are both rigorous and practical.

**Prompt:**
```
I need you to create a comprehensive Detailed Technical Design Document (TDD) for [project name].

Before diving into specific component designs, take a step back and consider: What fundamental design principles should guide detailed technical design? What attributes make component-level designs effective, maintainable, and implementable? Outline these core principles and explain why they're crucial for creating high-quality technical designs.

Now, working methodically through each system component, create a detailed TDD with these sections:

1. Introduction:
   - Purpose: Define the document's audience and usage
   - Scope: Specify which components are covered
   - References: Cite related documents (especially the SAD)
   - Overview: Preview the document structure

2. Design Overview:
   - Summarize the design approach and guidelines
   - Reference architectural principles from the SAD
   - Explain how the detailed design implements the architecture
   - Walk through your reasoning on how components collectively fulfill requirements

3. System Architecture Review:
   - Briefly recap the architecture from the SAD
   - Identify any refinements or changes to the architecture
   - Explain the rationale for any architectural adjustments

4. Detailed Component Design:
   - For each component identified in the SAD:
     * Component Purpose and Responsibilities:
       - Detailed description of component functionality
       - Responsibilities and constraints
     
     * Class/Module Structure:
       - Class diagrams with attributes and methods
       - Class relationships and dependencies
       - Explain your reasoning for class design decisions
     
     * Algorithms and Logic:
       - Detailed processing logic with pseudocode
       - Complex algorithms with explanations
       - Step through your reasoning for algorithm design
     
     * Data Structures:
       - Internal data structures and their usage
       - Data flow within the component
       - Explain your rationale for data structure choices
     
     * Interface Specifications:
       - Detailed method signatures and parameters
       - Request/response formats
       - Pre/post conditions and error handling
       - Walk through your approach to interface design
     
     * State Transitions:
       - State diagrams for stateful components
       - State transition logic
       - Explain your reasoning for state management
     
     * Error Handling:
       - Error detection and reporting mechanisms
       - Recovery procedures
       - Explain your error handling strategy
   
   - Organize components logically to show relationships and dependencies

5. Database Design:
   - Detailed database schema diagrams
   - Table definitions with columns, data types, and constraints
   - Relationships and cardinality
   - Indexes and optimization considerations
   - Stored procedures and triggers
   - Data migration strategy
   - Explain your reasoning for database design decisions

6. User Interface Design:
   - Detailed screen layouts and wireframes
   - UI components and reusable elements
   - Navigation flows
   - Input validation rules
   - Explain your UI design process and decisions

7. Interaction Design:
   - Sequence diagrams for key interactions
   - Component collaboration scenarios
   - Walk through your reasoning for interaction design

8. Error Handling and Logging:
   - System-wide error handling strategy
   - Logging framework and configuration
   - Log levels and content
   - Explain your approach to system-wide error management

9. Security Implementation:
   - Detailed security control implementations
   - Authentication and authorization mechanisms
   - Data protection implementations
   - Explain your security implementation decisions

10. Performance Considerations:
    - Specific optimizations and their expected benefits
    - Caching strategies
    - Resource utilization considerations
    - Walk through your performance optimization approach

11. Development Standards:
    - Coding conventions and patterns
    - Naming standards
    - Documentation requirements
    - Explain the reasoning behind these standards

After completing the initial draft, validate the document against these criteria:
- Is the design consistent with the architecture specified in the SAD?
- Are all requirements from the SRS addressed?
- Is the design sufficiently detailed to guide implementation?
- Are component interfaces completely and precisely defined?
- Does the database design support all data requirements?
- Are performance considerations adequately addressed?
- Are security requirements implemented in the design?
- Is error handling comprehensive?
- Does the design follow established patterns and best practices?

Based on this validation, refine any sections requiring improvement. Format the final document using markdown with clear section headings, diagrams, code samples, and a consistent structure throughout.
```

**Structure requirements:**
- Introduction (purpose, scope, references, overview)
- Design Overview (approach, guidelines, architecture implementation)
- System Architecture Review (recap, refinements, rationale)
- Detailed Component Design (purpose, class structure, algorithms, data structures, interfaces, state transitions, error handling)
- Database Design (schema, tables, relationships, indexes, procedures)
- User Interface Design (layouts, components, navigation, validation)
- Interaction Design (sequence diagrams, collaboration scenarios)
- Error Handling and Logging (strategy, framework, configuration)
- Security Implementation (controls, authentication, data protection)
- Performance Considerations (optimizations, caching, resource utilization)
- Development Standards (conventions, naming, documentation)

**Validation criteria:**
- Consistency with architecture in SAD
- Addresses all requirements from SRS
- Sufficient detail to guide implementation
- Complete and precise interface definitions
- Database design supports all data requirements
- Adequate addressing of performance considerations
- Implementation of security requirements
- Comprehensive error handling
- Follows established patterns and best practices 