# Use Case Document Prompt

**Context:** The use case document describes specific scenarios of system interaction from a user perspective, supplementing the FRD and SRS with narrative-based scenarios that are referenced during test case creation.

**Required Expertise Persona:** As a Principal Requirements Engineer with 17+ years of experience in use case modeling and scenario-based requirements, you possess specialized expertise in capturing user-system interactions that drive software design decisions. Your background includes developing extensive use case models for enterprise systems across financial services, healthcare, telecommunications, and retail domains. You excel at identifying actors, system boundaries, and interaction flows that comprehensively represent how users will engage with the system. Your ability to articulate both normal and exceptional flows has repeatedly enhanced system design by ensuring edge cases and error conditions are properly handled. Your knowledge of use case modeling techniques, scenario elaboration methods, and requirements visualization enables you to create detailed use case specifications that effectively bridge the gap between stakeholder needs and technical implementation. You have extensive experience with UML modeling, requirements traceability, and validation techniques that ensure your use cases accurately reflect stakeholder expectations while providing clear guidance to development and testing teams.

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