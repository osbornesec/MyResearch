# Requirements Traceability Matrix Prompt

**Context:** The Requirements Traceability Matrix (RTM) is a critical document that traces requirements throughout the entire software development lifecycle. It establishes and maintains relationships between requirements, design elements, code implementation, and test cases. The RTM ensures that every requirement is implemented and verified, supporting project completeness and compliance verification.

**Required Expertise Persona:** As a Senior Requirements Engineer with 12+ years of experience in requirements management for complex systems, you possess deep expertise in requirements traceability methodologies and tools. Your background includes managing requirements for mission-critical systems in regulated industries where complete traceability is mandatory. You excel at establishing clear relationships between business needs, functional requirements, technical specifications, and verification evidence. Your experience with requirements management tools and traceability processes enables you to design comprehensive traceability frameworks that support both compliance needs and project visibility. You understand how to maintain traceability across changing requirements and throughout the development lifecycle.

**Prompt:**
```
I need you to create a comprehensive Requirements Traceability Matrix (RTM) for [project name].

Before diving into specific traceability elements, take a step back and consider: What fundamental principles make an effective requirements traceability system? What qualities ensure that requirement relationships are maintained throughout the development lifecycle? Outline these core principles and explain why they're crucial for project success and verification.

Now, working methodically through the traceability matrix development process, create a detailed RTM with these sections:

1. Introduction:
   - Purpose: Define the document's audience and usage
   - Scope: Specify which requirements and artifacts are traced
   - References: Cite related documents (SRS, BRD, Test Plan)
   - Document Structure: Preview the matrix's organization
   - Explain your approach to comprehensive requirements traceability

2. Traceability Approach:
   - Traceability Strategy: Define the overall approach to traceability
   - Traceability Levels: Specify what levels of artifacts are traced
   - Traceability Relationships: Define relationship types between artifacts
   - Unique Identifiers: Explain the identification scheme for elements
   - Walk through your reasoning for the selected traceability approach
   - Explain how this approach ensures complete coverage and verification

3. Traceability Matrix Structure:
   - Matrix Format: Define the structure and format of the matrix
   - Column Definitions: Explain each column's purpose and content
   - Relationship Notation: Specify how relationships are indicated
   - Status Tracking: Define how implementation/verification status is tracked
   - Explain your matrix design decisions
   - Walk through how the structure facilitates analysis and reporting

4. Forward Traceability:
   - Business Requirements to System Requirements: Map business needs to system specifications
   - System Requirements to Design Elements: Trace requirements to design components
   - Requirements to Implementation: Link requirements to code modules
   - Requirements to Test Cases: Connect requirements to verification methods
   - Explain your approach to ensuring forward traceability
   - Walk through how to validate complete forward coverage

5. Backward Traceability:
   - Test Cases to Requirements: Verify each test has requirement coverage
   - Implementation to Requirements: Ensure all code fulfills requirements
   - Design Elements to Requirements: Link design decisions to requirements
   - System Requirements to Business Requirements: Connect back to business justification
   - Explain your approach to backward traceability validation
   - Walk through techniques for identifying unlinked elements

6. Bidirectional Traceability:
   - Impact Analysis: Explain how to assess change impacts
   - Coverage Analysis: Define how to evaluate requirement coverage
   - Gap Analysis: Detail methods for identifying traceability gaps
   - Explain your approach to comprehensive traceability analysis
   - Walk through scenarios demonstrating bidirectional traceability usage

7. Requirement Volatility Tracking:
   - Change History: Define how requirement changes are tracked
   - Version Management: Explain version control for the matrix
   - Baseline Management: Detail how baselines are established
   - Explain your approach to managing evolving requirements
   - Walk through how to maintain traceability through requirement changes

8. Traceability Maintenance:
   - Update Process: Define how the matrix is maintained
   - Responsibility Assignment: Specify who maintains different aspects
   - Verification Procedures: Detail how traceability is verified
   - Review Cadence: Define frequency of traceability reviews
   - Explain your maintenance strategy and its importance
   - Walk through the review and update workflow

9. Traceability Reports:
   - Standard Reports: Define common reports and their purpose
   - Coverage Reports: Detail how to generate coverage statistics
   - Verification Status: Explain how to track verification progress
   - Explain your reporting approach and its audience
   - Walk through how reports support project management decisions

10. Traceability Matrix:
    - The actual matrix with the following columns:
      * Requirement ID: Unique identifier for each requirement
      * Requirement Description: Brief description of the requirement
      * Requirement Source: Origin document and section
      * Design Reference: Corresponding design elements
      * Implementation Reference: Corresponding code modules
      * Test Case Reference: Corresponding test cases
      * Verification Status: Current verification state
      * Comments: Additional information or notes
    - Explain how to interpret and use the matrix
    - Walk through examples of complete traceability chains

After completing the initial draft, validate the document against these criteria:
- Does the matrix include all requirements from source documents?
- Is each requirement traced to design elements?
- Is each requirement linked to implementation components?
- Is each requirement connected to verification methods?
- Are all relationships bidirectional and complete?
- Does the approach support impact analysis for changes?
- Is the maintenance process clearly defined?
- Are reporting capabilities sufficient for project needs?

Based on this validation, refine any sections requiring improvement. Format the final document using markdown with clear section headings, tables for the matrix, and a consistent structure throughout.
```

**Structure requirements:**
- Introduction (purpose, scope, references, structure)
- Traceability Approach (strategy, levels, relationships, identifiers)
- Traceability Matrix Structure (format, columns, notation, status)
- Forward Traceability (business to system, system to design, requirements to implementation/tests)
- Backward Traceability (tests to requirements, implementation to requirements, design to requirements)
- Bidirectional Traceability (impact analysis, coverage analysis, gap analysis)
- Requirement Volatility Tracking (change history, version management, baselines)
- Traceability Maintenance (update process, responsibilities, verification, review)
- Traceability Reports (standard reports, coverage reports, verification status)
- Traceability Matrix (the actual matrix with all required columns)

**Validation criteria:**
- Inclusion of all requirements from source documents
- Traceability of each requirement to design elements
- Linkage of each requirement to implementation components
- Connection of each requirement to verification methods
- Bidirectional and complete relationships
- Support for impact analysis for changes
- Clear definition of maintenance process
- Sufficient reporting capabilities for project needs
- Consistent identification scheme across artifacts
- Clear status tracking for implementation and verification