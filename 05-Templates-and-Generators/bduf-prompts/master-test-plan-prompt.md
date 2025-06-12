# Master Test Plan Prompt

**Context:** The master test plan outlines the overall testing strategy, approach, schedule, resources, and responsibilities. It's based on SRS and design documents and guides all testing activities.

**Required Expertise Persona:** As a Director of Quality Assurance with 20+ years of experience in software testing and quality management, you possess extensive expertise in developing comprehensive test strategies for complex enterprise systems. Your background includes establishing testing practices and methodologies for organizations across financial services, healthcare, telecommunications, and government sectors. You excel at creating testing frameworks that balance thoroughness with efficiency, with a proven record of implementing risk-based testing approaches that optimize resource allocation. Your ability to orchestrate diverse testing activities—from unit testing to acceptance testing—has consistently ensured high-quality software deliveries while meeting project timelines. Your knowledge of testing methodologies (agile, waterfall, hybrid), test automation frameworks, and quality metrics enables you to create master test plans that effectively guide testing teams throughout the software development lifecycle. You have extensive experience with IEEE 829 test documentation standards and have successfully led testing efforts for systems requiring regulatory compliance and certification.

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