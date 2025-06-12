# Interface Specifications (IRS/ICD) Prompt

**Context:** Interface Specifications (also known as Interface Requirements Specifications or Interface Control Documents) formally define the points of interaction between system components or between the system and external entities. These specifications are crucial for ensuring seamless integration between components developed by different teams and for external system interactions. They serve as contracts that detail data formats, communication protocols, and interaction behaviors.

**Required Expertise Persona:** As a Systems Integration Architect with 15+ years of experience designing and implementing complex system interfaces, you possess deep expertise in API design, communication protocols, and integration patterns. You've worked across diverse technology stacks and understand the nuances of different interface types (REST, SOAP, message queues, file-based, etc.). Your experience spans both internal component interfaces and external system integrations. You excel at defining precise interface contracts that maintain system boundaries while enabling seamless communication. Your background in distributed systems enables you to anticipate integration challenges and design interfaces that are robust, performant, and maintainable.

**Prompt:**
```
I need you to create comprehensive Interface Specifications (IRS/ICD) for [project name].

Before diving into specific interface details, take a step back and consider: What fundamental principles make effective interface specifications? What qualities ensure that interfaces support robust integration while maintaining component independence? Outline these core principles and explain why they're crucial for successful system integration.

Now, working methodically through the interface specification process, create detailed Interface Specifications with these sections:

1. Introduction:
   - Purpose: Define the document's audience and usage
   - Scope: Specify which interfaces are covered
   - References: Cite related documents (SRS, SAD)
   - Document Structure: Preview the specification's organization
   - Explain your approach to comprehensive interface documentation

2. Interface Overview:
   - System Context: Provide a high-level view of system components and external systems
   - Interface Inventory: List all interfaces being specified
   - Interface Classification: Categorize interfaces (internal/external, synchronous/asynchronous, etc.)
   - Interface Diagram: Illustrate component relationships and data flows
   - Explain your reasoning for the interface organization and classification

3. Interface Requirements:
   - For each interface:
     * Interface Identifier: Assign a unique ID
     * Interface Purpose: Describe what the interface accomplishes
     * Participating Components: Identify systems/components that interact
     * Functional Requirements: Define expected behaviors
     * Non-functional Requirements: Specify performance, security, reliability criteria
     * Constraints: Document limitations or restrictions
     * Explain your approach to defining comprehensive requirements

4. Interface Design:
   - For each interface:
     * Interface Type: Specify the type (API, file exchange, database, UI, etc.)
     * Communication Style: Define style (request/response, publish/subscribe, etc.)
     * Protocol: Specify communication protocol (HTTP, MQTT, etc.)
     * Endpoint Information: Document endpoints, addresses, routing information
     * Authentication/Authorization: Define security mechanisms
     * Explain your reasoning for design decisions

5. Data Specifications:
   - For each interface:
     * Data Elements: Define all data fields/parameters
     * Data Types: Specify formats, sizes, valid ranges
     * Data Structures: Document message formats, schemas, or object models
     * Sample Payloads: Provide example data for key scenarios
     * Validation Rules: Define data validation requirements
     * Walk through your approach to comprehensive data specification

6. Behavioral Specifications:
   - For each interface:
     * Sequence Diagrams: Illustrate interaction sequences
     * State Information: Document stateful behaviors if applicable
     * Operation Contracts: Define pre/post conditions for operations
     * Timing Constraints: Specify timing requirements
     * Explain your reasoning for behavioral specifications

7. Error Handling:
   - For each interface:
     * Error Scenarios: Identify potential error conditions
     * Error Codes: Define specific error codes and messages
     * Error Recovery: Specify recovery procedures
     * Fault Tolerance: Document graceful degradation approaches
     * Walk through your error handling strategy

8. Interface Versioning:
   - Version Control Strategy: Define approach to interface versioning
   - Compatibility Requirements: Specify backward/forward compatibility expectations
   - Evolution Process: Document procedures for interface changes
   - Explain your approach to managing interface evolution

9. Interface Testing:
   - Test Approach: Define testing methodology for interfaces
   - Test Scenarios: Outline key test cases for each interface
   - Test Data: Specify test data requirements
   - Validation Criteria: Define acceptance criteria
   - Explain your testing strategy for interfaces

10. Security Considerations:
    - Security Requirements: Document security controls for each interface
    - Data Protection: Specify data encryption or masking
    - Access Control: Define authorization requirements
    - Audit/Logging: Specify monitoring requirements
    - Explain your approach to secure interface design

After completing the initial draft, validate the document against these criteria:
- Are all interfaces between components and external systems identified?
- Are data formats and structures completely and precisely defined?
- Are communication protocols and methods clearly specified?
- Are error scenarios and handling procedures adequately documented?
- Are security requirements addressed for each interface?
- Is versioning and backward compatibility addressed?
- Are the specifications testable and verifiable?
- Is there sufficient detail for independent implementation by different teams?

Based on this validation, refine any sections requiring improvement. Format the final document using markdown with clear section headings, diagrams, and a consistent structure throughout.
```

**Structure requirements:**
- Introduction (purpose, scope, references, structure)
- Interface Overview (system context, inventory, classification, diagram)
- Interface Requirements (identifier, purpose, participants, functional/non-functional requirements, constraints)
- Interface Design (type, style, protocol, endpoints, security)
- Data Specifications (elements, types, structures, samples, validation)
- Behavioral Specifications (sequences, state, operations, timing)
- Error Handling (scenarios, codes, recovery, fault tolerance)
- Interface Versioning (control, compatibility, evolution)
- Interface Testing (approach, scenarios, data, validation)
- Security Considerations (requirements, protection, access, audit)

**Validation criteria:**
- Identification of all system interfaces
- Complete and precise definition of data formats and structures
- Clear specification of communication protocols and methods
- Adequate documentation of error scenarios and handling
- Addressing of security requirements for each interface
- Coverage of versioning and backward compatibility
- Testability and verifiability of specifications
- Sufficient detail for independent implementation
- Consistency with system architecture and requirements
- Clear diagrams illustrating interface relationships