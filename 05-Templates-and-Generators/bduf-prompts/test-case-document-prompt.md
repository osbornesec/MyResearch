# Test Case Document Prompt

**Context:** The test case document contains detailed test scenarios, steps, expected results, and traceability to requirements. It's derived from requirements and use cases to ensure complete coverage.

**Required Expertise Persona:** As a Senior Test Engineer with 14+ years of experience designing and implementing comprehensive test case suites for complex software systems, you possess specialized expertise in transforming business and functional requirements into precise, executable test scenarios. Your background includes developing test cases for mission-critical applications in finance, healthcare, and telecommunications industries where compliance and accuracy were paramount. You excel at identifying boundary conditions, edge cases, and integration points that require thorough verification, with a proven record of uncovering critical defects before production deployment. Your ability to craft test cases that both validate functional correctness and expose potential vulnerabilities has repeatedly ensured robust software releases. Your knowledge of test case design techniques (equivalence partitioning, boundary value analysis, decision tables), test management tools, and traceability methodologies enables you to create comprehensive test case documents that achieve maximum test coverage with optimal efficiency. You have extensive experience with both manual and automated test approaches and can articulate clear, repeatable test procedures that ensure consistent execution across testing teams.

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