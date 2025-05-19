The ultimate prompt engineering system for Big Design Up Front (BDUF) methodology documentation combines advanced AI techniques with rigorous software engineering standards. This system transforms the traditionally labor-intensive documentation process into a structured, iterative approach that maintains quality while significantly reducing effort. Each prompt incorporates iterative refinement, chain of thought reasoning, step-back principles, and structured outputs to ensure comprehensive, accurate documentation across all BDUF phases.

## How this system works

This prompt engineering system provides specialized prompts for generating every document in the BDUF methodology. Each prompt follows a consistent pattern:

1. **Context establishment** - Orients the AI to the document's purpose and relationship to other documents
2. **Abstract thinking phase** - Establishes high-level principles before diving into specifics
3. **Structured reasoning** - Guides the AI through logical steps for complex design decisions
4. **Output formatting** - Ensures consistent document structures that meet industry standards
5. **Refinement loops** - Builds in validation and improvement cycles

The system is organized by BDUF phases, with each phase containing specific prompts for all required documents. Each prompt includes guidance on document structure, content requirements, and validation criteria.

## Project initiation phase documentation

### Project charter prompt

**Context:** The project charter is the foundational document that officially authorizes the project and serves as a reference point for all subsequent documentation. It defines high-level requirements, objectives, scope, and success criteria.

**Prompt:**
```
I need you to create a comprehensive Project Charter for [project name]. 

First, take a step back and consider the fundamental principles that make an effective project charter. What are the 3-5 key characteristics that define successful project initiation documents? Briefly explain why these principles matter for project success.

Now, working step by step through each section, create a complete Project Charter that follows these principles:

1. Executive Summary: Concisely describe the project's purpose and business case.
2. Project Purpose/Vision: Establish clear objectives that are specific, measurable, and aligned with organizational goals.
3. Scope and Boundaries: Define what is included and explicitly excluded from the project, considering both functionality and constraints.
4. Stakeholder Information: Identify all relevant parties and their roles, especially focusing on decision-makers and approvers.
5. Project Timeline: Outline high-level milestones with estimated durations (not detailed scheduling).
6. Resource Requirements: Estimate budgetary needs, personnel, and other resources.
7. Constraints and Assumptions: Document limitations and presumptions affecting the project.
8. Risk Assessment: Identify preliminary risks and potential mitigation approaches.
9. Success Criteria: Define concrete, measurable indicators that will determine project completion and success.
10. Approval Section: Include placeholder for stakeholder signatures.

For each section, explain your reasoning process as you develop the content, and ensure all elements work together cohesively. The document should be concise (aim for 3-5 pages) but comprehensive.

After completing the initial draft, review the document against these validation criteria:
- Does it clearly connect project objectives to business goals?
- Are scope statements specific and measurable?
- Have all major stakeholders been identified?
- Are success criteria measurable and achievable?
- Are all relevant project constraints identified?

Based on this validation, refine any sections that need improvement. Format the final document using markdown with clear section headings.
```

**Structure requirements:**
- Executive Summary (brief overview)
- Project Purpose/Vision (objectives alignment)
- Scope and Boundaries (inclusions/exclusions)
- Stakeholder Information (roles and responsibilities)
- Project Timeline (high-level milestones)
- Resource Requirements (budget, personnel, resources)
- Constraints and Assumptions (limitations)
- Risk Assessment (preliminary risks)
- Success Criteria (measurable indicators)
- Approval Section (stakeholder signatures)

**Validation criteria:**
- All sections are completed with substantive information
- Clear connection between project objectives and business goals
- Specific and measurable scope statements
- Identified and defined roles for major stakeholders
- Measurable and achievable success criteria
- Identified relevant project constraints
- Concise document (2-5 pages) in accessible language

### Feasibility study report prompt

**Context:** The feasibility study report evaluates the technical, economic, legal, operational, and scheduling feasibility of the proposed system, informing the business case and project planning.

**Prompt:**
```
I need you to create a detailed Feasibility Study Report for [project name].

Before diving into the specifics, take a step back and consider: What fundamental principles should guide any thorough feasibility analysis? What are the key dimensions that must be evaluated to determine if a project is viable? Outline these principles and explain why they're crucial for making sound project decisions.

Now, working systematically through the analysis process, create a comprehensive Feasibility Study Report with the following sections:

1. Executive Summary: Summarize the overall findings and recommendation.
2. Project Overview: Briefly describe the proposed system and its objectives.
3. Technical Feasibility:
   - Analyze technological requirements and capabilities
   - Evaluate available technologies vs. required technologies
   - Assess technical risks and dependencies
   - Explain your reasoning for each technical evaluation point

4. Economic Feasibility:
   - Develop detailed cost estimates (development, implementation, operation)
   - Project expected benefits and ROI
   - Perform cost-benefit analysis
   - Walk through your financial reasoning process step by step

5. Legal Feasibility:
   - Identify regulatory compliance requirements
   - Analyze potential legal constraints or issues
   - Assess intellectual property considerations
   - Explain your evaluation process for each legal consideration

6. Operational Feasibility:
   - Evaluate organizational readiness
   - Assess operational impacts
   - Analyze user acceptance factors
   - Detail your reasoning for operational conclusions

7. Schedule Feasibility:
   - Analyze timeline constraints
   - Evaluate resource availability against schedule needs
   - Assess dependencies that affect timing
   - Show your step-by-step analysis of scheduling factors

8. Alternative Solutions:
   - Present viable alternatives
   - Compare alternatives against evaluation criteria
   - Explain your comparative reasoning

9. Conclusion and Recommendations:
   - Provide clear go/no-go recommendation
   - Summarize key findings that support this recommendation
   - Explain any contingencies for proceeding

After completing the initial draft, review the document against these validation criteria:
- Is the analysis comprehensive across all feasibility dimensions?
- Are cost estimates realistic and well-supported?
- Is the recommendation clearly justified by the presented evidence?
- Are risks and constraints adequately identified and addressed?
- Is there clear reasoning connecting findings to conclusions?

Based on this review, refine any sections that need improvement. Format the final document using markdown with clear section headings and hierarchical structure.
```

**Structure requirements:**
- Executive Summary
- Project Overview
- Technical Feasibility Analysis
- Economic Feasibility Analysis
- Legal Feasibility Analysis
- Operational Feasibility Analysis
- Schedule Feasibility Analysis
- Alternative Solutions Analysis
- Conclusion and Recommendations

**Validation criteria:**
- Comprehensive analysis across all feasibility dimensions
- Realistic and well-supported cost estimates
- Clear justification for recommendations
- Thorough identification of risks and constraints
- Logical connection between findings and conclusions

## Requirements gathering phase documentation

### Business requirements document (BRD) prompt

**Context:** The BRD captures high-level business needs, objectives, and vision for the project. It forms the foundation for the SRS and FRD, ensuring all technical requirements align with business requirements.

**Prompt:**
```
I need you to create a comprehensive Business Requirements Document (BRD) for [project name].

Before beginning, take a step back and consider: What fundamental business analysis principles should guide requirements gathering? What makes business requirements effective for driving successful projects? Outline these core principles and explain why they're essential for translating business needs into effective solutions.

Now, working methodically through the requirements gathering process, create a detailed BRD with these sections:

1. Executive Summary: Provide a concise overview of the business need and proposed solution.

2. Project Background:
   - Explain the business context and history leading to this project
   - Identify the business problem or opportunity being addressed
   - Walk through your reasoning about why this project matters to the organization

3. Business Objectives:
   - Define specific, measurable business goals
   - Explain how each objective connects to organizational strategy
   - Show your chain of thought linking objectives to business value

4. Current State Analysis:
   - Document existing processes, systems, and pain points
   - Include process flows for key business functions
   - Explain your analytical approach to understanding the current state

5. Future State Vision:
   - Describe the desired business state after implementation
   - Explain the reasoning behind your vision for the future state
   - Connect this vision to business objectives

6. Business Requirements:
   - For each requirement:
     - Assign a unique identifier for traceability
     - Categorize appropriately (functional, process, reporting, etc.)
     - Define acceptance criteria
     - Prioritize based on business value
     - Explain your reasoning for priority and categorization
   - Organize requirements logically by business function or process
   - Ensure each requirement is specific, measurable, and aligned with objectives

7. Stakeholder Analysis:
   - Identify all affected parties and their interests
   - Document key stakeholder needs and concerns
   - Explain how stakeholder needs influenced requirements

8. Constraints and Assumptions:
   - Document business, regulatory, and operational constraints
   - List assumptions made during requirements gathering
   - Explain how these factors impact the proposed solution

9. Project Scope:
   - Define clear boundaries of what will and won't be delivered
   - Explain your reasoning for scope decisions

10. Glossary:
    - Define business terms and acronyms
    - Ensure consistent terminology throughout

After completing the initial draft, validate the document against these criteria:
- Are requirements clear, concise, and unambiguous?
- Is each requirement testable and verifiable?
- Do requirements comprehensively cover all business needs?
- Are there conflicts or contradictions between requirements?
- Are all requirements aligned with stated business objectives?
- Are requirements properly prioritized based on business value?

Based on this validation, refine any sections that need improvement. Format the final document using markdown with clear section headings and a consistent structure.
```

**Structure requirements:**
- Executive Summary
- Project Background
- Business Objectives
- Current State Analysis
- Future State Vision
- Business Requirements (categorized and prioritized)
- Stakeholder Analysis
- Constraints and Assumptions
- Project Scope
- Glossary

**Validation criteria:**
- Clear, concise, and unambiguous requirements
- Each requirement is testable and verifiable
- Comprehensive coverage of business needs
- No conflicts or contradictions between requirements
- Alignment with business objectives
- Appropriate prioritization based on business value

### Software requirements specification (SRS) prompt

**Context:** The SRS defines detailed functional and non-functional requirements of the software system, serving as a contract between stakeholders and the development team. It informs the system design document and test plan.

**Prompt:**
```
I need you to create a comprehensive Software Requirements Specification (SRS) for [project name], following IEEE 29148:2011 standards.

Before diving into specific requirements, take a step back and consider: What fundamental principles make a software requirements specification effective? What are the essential qualities that ensure requirements are implementable and verifiable? Outline these principles and explain their importance to software development success.

Now, working systematically through the requirements process, create a detailed SRS with these sections:

1. Introduction:
   - Purpose: Explain the intended audience and usage of this document
   - Scope: Define the software and its objectives, benefits, and goals
   - Definitions: List specialized terms and definitions
   - References: Cite related documents (especially the BRD)
   - Overview: Summarize the rest of the SRS

2. Overall Description:
   - Product Perspective: Describe the system's context and how it relates to other systems
   - Product Functions: Summarize the major functions the software will perform
   - User Characteristics: Define the expected user classes and their expertise
   - Constraints: Identify limitations that impact development
   - Assumptions and Dependencies: List factors upon which the requirements depend
   - Reason through the system's position in the larger ecosystem

3. External Interface Requirements:
   - User Interfaces: Detail UI requirements, screenshots, and navigation principles
   - Hardware Interfaces: Specify hardware components the system must support
   - Software Interfaces: Define interactions with other software components
   - Communications Interfaces: Describe communication mechanisms and protocols
   - For each interface, explain your reasoning about design principles and constraints

4. System Features:
   - For each feature:
     - Assign a unique identifier
     - Description: Brief overview
     - Stimulus/Response: What triggers the feature and expected outcomes
     - Functional Requirements: Detailed capabilities
     - Explain chain of thought for defining acceptance criteria
   - Group features logically to show relationships and dependencies

5. Non-functional Requirements:
   - Performance: Response times, throughput, capacity, scalability metrics
   - Security: Authentication, authorization, data protection requirements
   - Reliability: Availability, failure rate, recovery capabilities
   - Usability: Learning curve, efficiency of use, satisfaction metrics
   - For each category, walk through your reasoning process for establishing specific, measurable criteria

6. Other Requirements:
   - Database: Logical requirements for data persistence
   - Operations: Installation, maintenance, support requirements
   - For each requirement, explain why it's necessary and how it supports system functions

After completing the initial draft, validate the document against these IEEE criteria:
- Correctness: Does it accurately represent the system to be developed?
- Unambiguity: Does each requirement have only one interpretation?
- Completeness: Are all significant requirements included?
- Consistency: Are there contradictions among requirements?
- Verifiability: Can each requirement be tested?
- Traceability: Is the origin of each requirement clear?

Based on this validation, refine any sections requiring improvement. Format the final document using markdown with clear section headings and requirements properly labeled with unique identifiers.
```

**Structure requirements:**
- Introduction (purpose, scope, definitions, references, overview)
- Overall Description (product perspective, functions, users, constraints, assumptions)
- External Interface Requirements (user, hardware, software, communications)
- System Features (detailed functional requirements by feature)
- Non-functional Requirements (performance, security, reliability, etc.)
- Other Requirements (database, operations, etc.)

**Validation criteria:**
- Correctness: Accurately represents the system to be developed
- Unambiguity: Each requirement has only one interpretation
- Completeness: All significant requirements are included
- Consistency: No contradictions among requirements
- Ranked for importance/stability: Priority levels are assigned
- Verifiable: Each requirement can be tested or validated
- Modifiable: Structure allows changes to be made consistently
- Traceable: Origin of each requirement is clear

### Use case document prompt

**Context:** The use case document describes specific scenarios of system interaction from a user perspective, supplementing the FRD and SRS with narrative-based scenarios that are referenced during test case creation.

**Prompt:**
```
I need you to create a comprehensive Use Case Document for [project name] that captures key user interactions with the system.

Before diving into specific use cases, take a step back and consider: What makes effective use cases that truly capture user interactions? What principles should guide use case development to ensure they provide value for both technical and non-technical stakeholders? Outline these principles and explain why they matter for bridging user needs and system functionality.

Now, working systematically through the use case development process, create a detailed Use Case Document with these components:

1. Introduction:
   - Purpose: Explain how this document complements the SRS and FRD
   - Scope: Define which system functions are covered by use cases
   - Related Documents: Reference the SRS, FRD, and other relevant documents
   - Overview: Explain the document's organization

2. Actors Definition:
   - For each actor (user type or external system):
     - Name and description
     - Characteristics and technical expertise
     - Goals when interacting with the system
   - Explain your reasoning for identifying these specific actors

3. Use Case Model Overview:
   - High-level diagram showing relationships between actors and use cases
   - Use case categories or groupings
   - Explain your organizational approach and why it effectively represents system functionality

4. Detailed Use Cases:
   - For each use case:
     - Unique identifier and name
     - Brief description
     - Actors involved (primary and secondary)
     - Preconditions that must be true before execution
     - Basic flow (main success scenario):
       * Step-by-step interaction between actor and system
       * System responses to user actions
     - Alternative flows:
       * Variations from the basic flow
       * Error conditions and exception handling
     - Postconditions after successful completion
     - Special requirements (non-functional requirements specific to this use case)
     - Explain your reasoning for each element of the use case

5. Use Case Relationships:
   - Include, extend, and generalization relationships
   - Explain the rationale behind these relationships

6. Use Case Priorities:
   - Categorize use cases by implementation priority
   - Explain your reasoning for prioritization decisions

7. Traceability Matrix:
   - Map use cases to functional requirements in the SRS
   - Show how use cases collectively cover requirements
   - Explain your approach to ensuring complete coverage

After completing the initial draft, validate the document against these criteria:
- Do use cases accurately reflect user interactions with the system?
- Are all significant system functionalities represented by use cases?
- Are use cases detailed enough to guide both design and testing?
- Is the language clear and understandable to both technical and non-technical stakeholders?
- Do use cases collectively cover all functional requirements in the SRS?
- Are exception paths and error conditions adequately addressed?

Based on this validation, refine any sections requiring improvement. Format the final document using markdown with clear section headings, use case identifiers, and consistent structure throughout.
```

**Structure requirements:**
- Introduction (purpose, scope, related documents, overview)
- Actors Definition (name, description, characteristics, goals)
- Use Case Model Overview (diagram, categories)
- Detailed Use Cases (identifier, description, actors, preconditions, basic flow, alternative flows, postconditions, special requirements)
- Use Case Relationships (include, extend, generalization)
- Use Case Priorities (implementation priority)
- Traceability Matrix (mapping to functional requirements)

**Validation criteria:**
- Accurate reflection of user interactions
- Coverage of all significant system functionalities
- Sufficient detail for design and testing guidance
- Clear language for technical and non-technical stakeholders
- Complete coverage of functional requirements
- Adequate addressing of exception paths and error conditions

## Design phase documentation

### System architecture document (SAD) prompt

**Context:** The SAD describes the high-level architecture of the system, including major components, interfaces, and technologies. It's based on the SRS and provides the framework for the detailed design document.

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

### Detailed technical design document (TDD) prompt

**Context:** The TDD contains detailed specifications for each system component, including algorithms, data structures, interface definitions, and processing logic. It's the most detailed design document and directly guides implementation.

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

## Testing phase documentation

### Master test plan prompt

**Context:** The master test plan outlines the overall testing strategy, approach, schedule, resources, and responsibilities. It's based on SRS and design documents and guides all testing activities.

**Prompt:**
```
I need you to create a comprehensive Master Test Plan for [project name], following IEEE 829 standards.

Before diving into specific testing details, take a step back and consider: What fundamental testing principles should guide a thorough test strategy? What testing approaches are most effective for ensuring software quality? Outline these core principles and explain why they're crucial for effective testing.

Now, working methodically through the test planning process, create a detailed Master Test Plan with these sections:

1. Test Plan Identifier:
   - Unique document identifier
   - Version information

2. Introduction:
   - Purpose: Define the document's audience and scope
   - System Overview: Briefly describe the system under test
   - References: Cite related documents (SRS, SAD, TDD)
   - Document Structure: Explain how the plan is organized

3. Test Items:
   - List all software items to be tested
   - Version information and current status
   - Features to be tested
   - Features not to be tested with justification
   - Walk through your reasoning for test coverage decisions

4. Testing Approach:
   - Overall testing strategy
   - For each test level (unit, integration, system, acceptance):
     * Objectives and focus areas
     * Testing techniques to be employed
     * Tools and environments
     * Entrance and exit criteria
   - Explain your rationale for selecting these approaches
   - Describe your reasoning for test prioritization

5. Test Environment:
   - Hardware requirements
   - Software requirements
   - Network configuration
   - Security considerations
   - Data requirements
   - Explain your reasoning for environment specifications

6. Test Deliverables:
   - Test plans (specific to each test level)
   - Test cases and procedures
   - Test data
   - Test reports
   - Defect reports
   - Explain the purpose and content of each deliverable

7. Testing Tasks:
   - Task breakdown with dependencies
   - Task schedule and milestones
   - Resource allocation
   - Walk through your task planning logic

8. Responsibilities:
   - Test team roles and responsibilities
   - Development team responsibilities
   - Management responsibilities
   - Stakeholder involvement
   - Explain your reasoning for role assignments

9. Staffing and Training:
   - Required skills and expertise
   - Team composition
   - Training requirements
   - Explain your approach to team development

10. Schedule:
    - Major testing milestones
    - Task dependencies and critical path
    - Resource allocation timeline
    - Walk through your schedule planning logic

11. Risks and Contingencies:
    - Testing risks and mitigations
    - Project risks affecting testing
    - Contingency plans
    - Explain your risk assessment methodology

12. Defect Management:
    - Defect reporting procedures
    - Defect tracking and management
    - Defect priority and severity definitions
    - Resolution workflow
    - Explain your defect management approach

13. Test Metrics and Reporting:
    - Key performance indicators
    - Progress tracking metrics
    - Quality metrics
    - Reporting frequency and formats
    - Explain your rationale for selected metrics

14. Test Automation Strategy:
    - Scope of automation
    - Tools and frameworks
    - Approach and best practices
    - Explain your automation decision process

15. Approval:
    - Sign-off requirements
    - Approval process
    - Decision-making authorities

After completing the initial draft, validate the document against these criteria:
- Does the test plan cover all system requirements?
- Is the testing approach appropriate for the system complexity?
- Are resource requirements realistic?
- Is the schedule feasible?
- Is the risk assessment comprehensive?
- Are test entry and exit criteria clearly defined?
- Does the approach address all testing levels?
- Is the defect management process well-defined?

Based on this validation, refine any sections requiring improvement. Format the final document using markdown with clear section headings and a consistent structure throughout.
```

**Structure requirements:**
- Test Plan Identifier (unique identifier, version)
- Introduction (purpose, system overview, references, structure)
- Test Items (software items, versions, features)
- Testing Approach (strategy, test levels, techniques, criteria)
- Test Environment (hardware, software, network, security, data)
- Test Deliverables (plans, cases, data, reports)
- Testing Tasks (breakdown, schedule, resources)
- Responsibilities (roles, assignments)
- Staffing and Training (skills, team, training)
- Schedule (milestones, dependencies, timeline)
- Risks and Contingencies (risks, mitigations, plans)
- Defect Management (procedures, tracking, priorities, workflow)
- Test Metrics and Reporting (indicators, metrics, reporting)
- Test Automation Strategy (scope, tools, approach)
- Approval (sign-off, process, authorities)

**Validation criteria:**
- Coverage of all system requirements
- Appropriate testing approach for system complexity
- Realistic resource requirements
- Feasible schedule
- Comprehensive risk assessment
- Clearly defined test entry and exit criteria
- Addresses all testing levels
- Well-defined defect management process

### Test case document prompt

**Context:** The test case document contains detailed test scenarios, steps, expected results, and traceability to requirements. It's derived from requirements and use cases to ensure complete coverage.

**Prompt:**
```
I need you to create a comprehensive Test Case Document for [project name].

Before diving into specific test cases, take a step back and consider: What makes effective test cases that truly verify software functionality? What principles should guide test case development to ensure thorough coverage and unambiguous execution? Outline these core principles and explain why they're crucial for effective testing.

Now, working methodically through the test case development process, create a detailed Test Case Document with these sections:

1. Introduction:
   - Purpose: Define the document's audience and usage
   - Scope: Specify which features are covered by these test cases
   - References: Cite related documents (SRS, Use Cases, Master Test Plan)
   - Document Structure: Explain how test cases are organized

2. Test Case Summary:
   - Overview of test coverage
   - Test case categories and distribution
   - Traceability summary
   - Explain your approach to ensuring comprehensive test coverage

3. Test Case Specification:
   - For each test case:
     * Unique identifier (TC-XXX)
     * Test case name
     * Requirement reference(s)
     * Test objective
     * Initial conditions and prerequisites
     * Test data requirements
     * Detailed test steps:
       - Step number
       - Action to perform
       - Expected result
       - Pass/Fail criteria
     * Post-conditions
     * Special procedural requirements
     * Inter-case dependencies
     * Walk through your reasoning for test case design decisions
   
   - Organize test cases logically by feature or functional area
   - Include both positive and negative test scenarios
   - Explain your strategy for edge case and boundary testing

4. Test Data Requirements:
   - Detailed specification of required test data
   - Data generation or acquisition methods
   - Data validation requirements
   - Explain your approach to test data management

5. Traceability Matrix:
   - Map test cases to requirements
   - Identify coverage gaps
   - Show your reasoning process for traceability analysis

6. Test Case Prioritization:
   - Priority levels and definitions
   - Assignment of priorities to test cases
   - Explain your prioritization methodology

7. Test Case Review Checklist:
   - Quality criteria for test cases
   - Review process
   - Explain your approach to ensuring test case quality

After completing the initial draft, validate the document against these criteria:
- Do test cases collectively cover all requirements?
- Are test steps clear, specific, and unambiguous?
- Do test cases include both positive and negative scenarios?
- Are test cases independent where possible?
- Do test cases adequately cover edge cases and boundaries?
- Is each test step associated with a verifiable expected result?
- Are preconditions and test data requirements clearly specified?
- Is the traceability to requirements complete and accurate?

Based on this validation, refine any sections requiring improvement. Format the final document using markdown with clear section headings, consistent test case formatting, and a logical organization structure.
```

**Structure requirements:**
- Introduction (purpose, scope, references, structure)
- Test Case Summary (coverage, categories, traceability)
- Test Case Specification (identifier, name, references, objective, conditions, data, steps, results, criteria)
- Test Data Requirements (specification, methods, validation)
- Traceability Matrix (mapping, gaps)
- Test Case Prioritization (levels, definitions, assignments)
- Test Case Review Checklist (criteria, process)

**Validation criteria:**
- Collective coverage of all requirements
- Clear, specific, and unambiguous test steps
- Inclusion of both positive and negative scenarios
- Independence of test cases where possible
- Adequate coverage of edge cases and boundaries
- Verifiable expected result for each test step
- Clear specification of preconditions and test data requirements
- Complete and accurate traceability to requirements

## Implementation phase documentation

### Development plan prompt

**Context:** The development plan outlines the implementation strategy, coding standards, tools, environments, and development schedule. It's based on design documents and guides the implementation process.

**Prompt:**
```
I need you to create a comprehensive Development Plan for [project name].

Before diving into implementation details, take a step back and consider: What fundamental development principles should guide the implementation phase? What practices lead to efficient, high-quality software development? Outline these core principles and explain why they're crucial for successful implementation.

Now, working methodically through the development planning process, create a detailed Development Plan with these sections:

1. Introduction:
   - Purpose: Define the document's audience and usage
   - Scope: Specify which components and phases are covered
   - References: Cite related documents (SRS, SAD, TDD)
   - Document Structure: Preview the plan's organization

2. Development Strategy:
   - Overall approach (agile, iterative, incremental)
   - Development methodology and practices
   - Implementation priorities and phasing
   - Explain your reasoning for the selected development approach
   - Walk through your strategy for managing development complexity

3. Development Environment:
   - Hardware and software requirements
   - Development tools and IDEs
   - Source code management system
   - Build automation tools
   - Deployment tools
   - Explain your rationale for environment and tool selections

4. Coding Standards:
   - Naming conventions
   - Code organization and structure
   - Documentation standards
   - Error handling conventions
   - Logging standards
   - Security practices
   - Performance considerations
   - Explain your reasoning for each standard and its importance

5. Version Control Strategy:
   - Repository organization
   - Branching strategy
   - Commit guidelines
   - Code review process
   - Walk through your approach to version control and collaboration

6. Build and Release Process:
   - Build process and tools
   - Continuous integration approach
   - Release preparation and verification
   - Deployment procedures
   - Explain your reasoning for build and deployment approaches

7. Development Schedule:
   - Component development breakdown
   - Milestones and deliverables
   - Task dependencies
   - Resource allocation
   - Walk through your schedule planning logic

8. Development Risks and Mitigation:
   - Technical risks
   - Schedule risks
   - Resource risks
   - Dependency risks
   - Mitigation strategies
   - Explain your risk assessment methodology

9. Quality Assurance:
   - Unit testing approach
   - Code review procedures
   - Static analysis tools
   - Development-phase testing
   - Quality metrics
   - Explain your strategy for ensuring code quality

10. Documentation Requirements:
    - Code documentation standards
    - Technical documentation deliverables
    - Explain your approach to documentation during development

11. Team Organization and Communication:
    - Team structure and roles
    - Communication channels and frequency
    - Status reporting
    - Explain your reasoning for team organization

After completing the initial draft, validate the document against these criteria:
- Is the development approach appropriate for the project scope and constraints?
- Are coding standards clear and comprehensive?
- Is the development environment fully specified?
- Is the version control strategy well-defined?
- Is the build and release process automated and repeatable?
- Is the development schedule realistic and aligned with project milestones?
- Are development risks identified with appropriate mitigations?
- Are quality assurance practices sufficient?

Based on this validation, refine any sections requiring improvement. Format the final document using markdown with clear section headings and a consistent structure throughout.
```

**Structure requirements:**
- Introduction (purpose, scope, references, structure)
- Development Strategy (approach, methodology, priorities)
- Development Environment (hardware, software, tools)
- Coding Standards (naming, organization, documentation, error handling)
- Version Control Strategy (repository, branching, commits, reviews)
- Build and Release Process (build, integration, release, deployment)
- Development Schedule (breakdown, milestones, dependencies, resources)
- Development Risks and Mitigation (risks, strategies)
- Quality Assurance (testing, reviews, analysis, metrics)
- Documentation Requirements (standards, deliverables)
- Team Organization and Communication (structure, channels, reporting)

**Validation criteria:**
- Appropriate development approach for project scope and constraints
- Clear and comprehensive coding standards
- Fully specified development environment
- Well-defined version control strategy
- Automated and repeatable build and release process
- Realistic and aligned development schedule
- Identified development risks with appropriate mitigations
- Sufficient quality assurance practices

## Deployment phase documentation

### Deployment plan prompt

**Context:** The deployment plan details the strategy, schedule, resources, and procedures for implementing the system in production. It's based on system architecture and technical requirements and guides deployment activities.

**Prompt:**
```
I need you to create a comprehensive Deployment Plan for [project name].

Before diving into deployment details, take a step back and consider: What fundamental principles ensure successful software deployment? What strategies minimize risk and disruption during system implementation? Outline these core principles and explain why they're crucial for deployment success.

Now, working methodically through the deployment planning process, create a detailed Deployment Plan with these sections:

1. Introduction:
   - Purpose: Define the document's audience and usage
   - Scope: Specify what is covered by this deployment plan
   - References: Cite related documents (SRS, SAD, Test Results)
   - Document Structure: Preview the plan's organization

2. Deployment Overview:
   - Deployment approach summary
   - Key deployment objectives
   - Critical success factors
   - Walk through your reasoning for the selected deployment approach
   - Explain how this approach minimizes risk and ensures success

3. Deployment Strategy:
   - Deployment type (phased, parallel, pilot, cutover)
   - Implementation sequence and dependencies
   - Environments (staging, production)
   - Rollout schedule
   - Explain your rationale for strategic decisions
   - Step through your approach to managing deployment complexity

4. Schedule and Milestones:
   - Detailed timeline with activities and tasks
   - Key milestones and decision points
   - Dependencies and critical path
   - Resource allocation timeline
   - Explain your scheduling logic and constraints

5. Resource Requirements:
   - Hardware resources
   - Software resources
   - Network infrastructure
   - Support personnel
   - End-user involvement
   - Explain your reasoning for resource allocation

6. Deployment Team:
   - Team structure and roles
   - Responsibilities and authorities
   - Communication channels
   - Escalation procedures
   - Walk through your team organization approach

7. Pre-Deployment Activities:
   - Readiness assessment criteria
   - Environment preparation
   - System testing in staging
   - User acceptance criteria
   - Go/No-Go decision process
   - Explain your pre-deployment verification approach

8. Deployment Procedures:
   - Detailed step-by-step procedures for:
     * Database preparation
     * Application installation
     * Configuration activities
     * Integration verification
     * Security implementation
   - For each procedure, explain your reasoning for specific steps
   - Include timing, dependencies, and responsible parties

9. Training Plan:
   - Training approach and objectives
   - Training materials
   - Training schedule
   - Training verification
   - Explain your approach to ensuring user readiness

10. Data Migration Plan:
    - Data sources and mapping
    - Migration tools and procedures
    - Validation methodology
    - Fallback procedures
    - Explain your data migration strategy and verification approach

11. Cutover Strategy:
    - Cutover sequence and timing
    - Service interruption handling
    - User notification procedures
    - Support during cutover
    - Walk through your cutover planning logic

12. Rollback Plan:
    - Rollback decision criteria
    - Detailed rollback procedures
    - Data recovery mechanisms
    - Service restoration timeline
    - Explain your contingency planning approach

13. Post-Deployment Activities:
    - System verification
    - Performance monitoring
    - Issue tracking and resolution
    - User support procedures
    - Explain your approach to ensuring system stability

14. Risk Management:
    - Deployment risks identification
    - Risk assessment (probability and impact)
    - Mitigation strategies
    - Contingency plans
    - Explain your risk assessment methodology

15. Communication Plan:
    - Stakeholder identification
    - Communication methods and frequency
    - Status reporting
    - Escalation procedures
    - Walk through your communication strategy

After completing the initial draft, validate the document against these criteria:
- Does the plan address all components of the system?
- Is the deployment approach appropriate for the system complexity?
- Is the schedule realistic and includes dependencies?
- Are resource requirements clearly defined?
- Are rollback procedures comprehensive?
- Is the risk assessment thorough with appropriate mitigations?
- Are communication procedures well-defined?
- Is there clear definition of deployment success criteria?

Based on this validation, refine any sections requiring improvement. Format the final document using markdown with clear section headings and a consistent structure throughout.
```

**Structure requirements:**
- Introduction (purpose, scope, references, structure)
- Deployment Overview (approach, objectives, success factors)
- Deployment Strategy (type, sequence, environments, schedule)
- Schedule and Milestones (timeline, milestones, dependencies, resources)
- Resource Requirements (hardware, software, network, personnel)
- Deployment Team (structure, roles, responsibilities, communication)
- Pre-Deployment Activities (readiness, preparation, testing, criteria)
- Deployment Procedures (step-by-step procedures for deployment tasks)
- Training Plan (approach, materials, schedule, verification)
- Data Migration Plan (sources, mapping, tools, validation)
- Cutover Strategy (sequence, timing, notification, support)
- Rollback Plan (criteria, procedures, recovery, restoration)
- Post-Deployment Activities (verification, monitoring, support)
- Risk Management (risks, assessment, mitigation, contingency)
- Communication Plan (stakeholders, methods, reporting, escalation)

**Validation criteria:**
- Addresses all components of the system
- Appropriate deployment approach for system complexity
- Realistic schedule with dependencies
- Clearly defined resource requirements
- Comprehensive rollback procedures
- Thorough risk assessment with appropriate mitigations
- Well-defined communication procedures
- Clear definition of deployment success criteria

## Maintenance phase documentation

### User manual prompt

**Context:** The user manual provides comprehensive guidance for end users on system functionality and operations. It's based on functional requirements and UI design and supports system adoption.

**Prompt:**
```
I need you to create a comprehensive User Manual for [project name].

Before diving into specific functionality documentation, take a step back and consider: What makes an effective user manual that truly empowers users? What principles should guide user documentation to ensure it's accessible, usable, and helpful? Outline these core principles and explain why they're crucial for user adoption and satisfaction.

Now, working methodically through the user manual development process, create a detailed User Manual with these sections:

1. Introduction:
   - Purpose: Define the document's audience and scope
   - System Overview: Provide a high-level description of the system
   - Document Conventions: Explain formatting, icons, and terminology
   - Document Structure: Preview how the manual is organized
   - Explain your approach to making the introduction engaging and informative

2. Getting Started:
   - System Requirements: Specify hardware and software prerequisites
   - Installation Procedures: Provide step-by-step installation instructions
   - First-time Setup: Detail initial configuration steps
   - Login Procedures: Explain how to access the system
   - Walk through your reasoning for onboarding sequence
   - Explain your approach to removing barriers to entry

3. System Navigation:
   - User Interface Overview: Describe the main interface elements
   - Navigation Principles: Explain how to move through the system
   - Common Controls: Document buttons, menus, and interaction elements
   - Search Functionality: Detail how to find information or features
   - Explain your approach to helping users build a mental model of the system

4. Basic Features:
   - For each core feature:
     * Feature Overview: Describe the feature's purpose and value
     * Step-by-Step Instructions: Provide detailed usage guidance
     * Screenshots: Include annotated interface images
     * Examples: Show common usage scenarios
     * Tips and Best Practices: Offer usage advice
     * Walk through your reasoning for explaining this feature
   
   - Organize features logically based on user workflows
   - Explain your approach to making instructions clear and actionable

5. Advanced Features:
   - For each advanced feature:
     * Feature Overview: Describe complex functionality
     * Detailed Usage Instructions: Provide comprehensive guidance
     * Advanced Configuration: Explain customization options
     * Integration with Other Features: Show feature relationships
     * Examples: Demonstrate sophisticated usage scenarios
     * Explain your strategy for making complex features understandable
   
   - Build on basic feature knowledge
   - Explain your approach to scaffolding user knowledge

6. Workflow Tutorials:
   - End-to-End Processes: Document complete user workflows
   - Task-Based Guidance: Organize by user goals
   - Real-World Scenarios: Provide contextual examples
   - Explain your reasoning for selected workflows and scenarios

7. Troubleshooting:
   - Common Issues: List frequently encountered problems
   - Diagnostic Steps: Provide troubleshooting procedures
   - Error Messages: Document system errors with explanations
   - Resolution Procedures: Detail how to fix or work around issues
   - Explain your approach to empowering users to solve problems

8. Reference Material:
   - System Messages: Catalog notifications and prompts
   - Keyboard Shortcuts: List efficiency keys and combinations
   - Field Descriptions: Document data fields and formats
   - Configuration Settings: Explain system parameters
   - Explain your approach to organizing reference information

9. Glossary:
   - Terminology Definitions: Explain domain-specific terms
   - Acronyms: Decode abbreviations used in the system
   - Walk through your approach to clarity and consistency

10. Index:
    - Comprehensive Topic Listing: Provide alphabetical access
    - Cross-References: Show related topics
    - Explain your indexing strategy for findability

After completing the initial draft, validate the document against these criteria:
- Is the language clear, concise, and appropriate for the target audience?
- Are instructions complete with all necessary steps?
- Do screenshots match the actual interface?
- Are all features and functions documented?
- Is the organization logical and intuitive?
- Does the manual anticipate common user questions and problems?
- Are complex procedures broken down into manageable steps?
- Is terminology consistent throughout?

Based on this validation, refine any sections requiring improvement. Format the final document using markdown with clear section headings, visual aids, and a consistent structure throughout.
```

**Structure requirements:**
- Introduction (purpose, overview, conventions, structure)
- Getting Started (requirements, installation, setup, login)
- System Navigation (interface, principles, controls, search)
- Basic Features (overview, instructions, screenshots, examples, tips)
- Advanced Features (overview, instructions, configuration, integration, examples)
- Workflow Tutorials (processes, guidance, scenarios)
- Troubleshooting (issues, diagnostics, errors, resolutions)
- Reference Material (messages, shortcuts, fields, settings)
- Glossary (terms, acronyms)
- Index (topics, cross-references)

**Validation criteria:**
- Clear, concise, and appropriate language for target audience
- Complete instructions with all necessary steps
- Screenshots match actual interface
- Documentation of all features and functions
- Logical and intuitive organization
- Anticipation of common user questions and problems
- Complex procedures broken down into manageable steps
- Consistent terminology throughout

## Prompt engineering meta-principles

To maximize the effectiveness of this BDUF documentation prompt engineering system, apply these meta-principles consistently:

1. **Context embedding**: Begin each prompt by establishing the document's purpose and relationship to other BDUF artifacts, creating continuity in the documentation ecosystem.

2. **Principle-first reasoning**: Always start with high-level principles before diving into details, ensuring conceptual clarity guides implementation specifics.

3. **Explicit decision articulation**: Require explanation of reasoning for each significant design choice or requirement, improving transparency and traceability.

4. **Validation loops**: Include explicit self-review stages against established criteria, fostering iterative quality improvement.

5. **Consistent structure enforcement**: Maintain parallel organization across related documents while adapting to each document type's unique requirements.

6. **Stakeholder perspective inclusion**: Guide thinking from multiple viewpoints (end-users, developers, operations) to ensure comprehensive documentation.

7. **Traceability enforcement**: Continuously reference related documents to maintain alignment throughout the BDUF documentation chain.

This system transforms BDUF documentation from a burdensome task into a structured process that leverages AI capabilities while maintaining human oversight for critical decisions. By incorporating advanced prompt engineering techniques, each document can be generated with higher quality, greater consistency, and less effort than traditional manual approaches.