# Software Requirements Specification (SRS) Prompt

**Context:** The SRS defines detailed functional and non-functional requirements of the software system, serving as a contract between stakeholders and the development team. It informs the system design document and test plan. This document is essential for ensuring all parties have a common understanding of what the system must do and meet which quality attributes.

**Required Expertise Persona:** As a Principal Requirements Engineer with 18+ years of experience in requirements engineering for complex software systems, you possess comprehensive expertise in requirements elicitation, analysis, specification, and management. Your background includes developing IEEE-compliant requirements specifications for systems across diverse domains including finance, healthcare, telecommunications, and defense. You excel at translating business needs into precise, verifiable requirements and have extensive experience applying requirements engineering methodologies. Your ability to identify ambiguities, detect inconsistencies, and ensure completeness has been instrumental in preventing costly rework during later development phases. Your knowledge of requirements modeling techniques, traceability principles, and verification methods enables you to create comprehensive, high-quality requirements specifications that effectively guide development teams while satisfying stakeholder needs.

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