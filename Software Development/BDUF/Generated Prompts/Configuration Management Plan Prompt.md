# Configuration Management Plan Prompt

**Context:** The Configuration Management Plan defines the processes, tools, and practices for identifying, controlling, and tracking system components and documentation throughout the project lifecycle. It ensures that all configuration items are properly identified, changes are controlled, and the status of items is accurately recorded. This document is essential for maintaining system integrity and providing a stable foundation for development, testing, and maintenance activities.

**Required Expertise Persona:** As a Configuration Management Director with 18+ years of experience implementing CM systems for large-scale software projects, you possess extensive expertise in configuration management methodologies, tools, and best practices. Your background includes establishing CM processes compliant with industry standards (IEEE 828, ISO 10007, CMMI) across diverse development environments. You excel at designing CM systems that balance rigorous control with development efficiency. Your experience spans the entire system lifecycle, from initial development through long-term maintenance. You've successfully implemented CM processes for complex systems involving multiple teams, components, and release streams. Your knowledge of CM tools, automation approaches, and auditing techniques enables you to develop comprehensive CM plans that ensure system integrity while supporting project objectives.

**Prompt:**
```
I need you to create a comprehensive Configuration Management Plan for [project name].

Before diving into specific CM procedures, take a step back and consider: What fundamental principles make an effective configuration management system? What qualities ensure that configuration control maintains system integrity without impeding development progress? Outline these core principles and explain why they're crucial for successful system development and maintenance.

Now, working methodically through the configuration management planning process, create a detailed Configuration Management Plan with these sections:

1. Introduction:
   - Purpose: Define the document's audience and usage
   - Scope: Specify what aspects of the project are covered
   - References: Cite related documents (Project Plan, Quality Plan)
   - Document Structure: Preview the plan's organization
   - CM Philosophy: Outline the project's approach to configuration management
   - Explain your approach to comprehensive configuration management

2. Configuration Management Organization:
   - CM Roles and Responsibilities: Define who performs CM functions
   - CM Authority: Establish the authority structure for CM decisions
   - Relationship to Project Organization: Explain how CM fits into the project
   - CM Resources: Identify personnel, tools, and infrastructure
   - Walk through your reasoning for the CM organizational structure
   - Explain how the organization balances control with efficiency

3. Configuration Identification:
   - Configuration Item Definition: Explain what constitutes a CI
   - Identification Scheme: Define naming and numbering conventions
   - CI Selection Criteria: Detail how items are selected for CM
   - CI Hierarchy: Explain relationships between configuration items
   - Configuration Breakdown Structure: Define the hierarchical structure
   - Baselines: Define key baseline points in the project lifecycle
   - Explain your approach to configuration identification
   - Walk through how configuration items are identified and structured

4. Configuration Control:
   - Change Request Process: Define how changes to CIs are requested
   - Change Evaluation: Detail how change impacts are assessed
   - Change Control Board: Define composition and functioning
   - Approval Process: Specify how changes are approved
   - Implementation Verification: Explain how change implementation is verified
   - Emergency Change Procedures: Detail expedited process for urgent changes
   - Explain your change control methodology
   - Walk through the change process from request to implementation

5. Configuration Status Accounting:
   - Status Tracking: Define how CI status is tracked
   - Configuration Reports: Specify standard CM reports
   - Metrics: Identify key CM metrics to be tracked
   - Record Keeping: Detail what information is maintained
   - Status Communication: Explain how status is communicated
   - Explain your approach to status accounting
   - Walk through how to interpret status information

6. Configuration Audits and Reviews:
   - Functional Configuration Audit: Define process for verifying function
   - Physical Configuration Audit: Explain verification of physical attributes
   - Configuration Reviews: Detail regular CM review activities
   - Audit Schedule: Define when audits occur
   - Audit Documentation: Specify how audit results are documented
   - Explain your audit methodology and its importance
   - Walk through the audit process step by step

7. Interface Control:
   - Interface Identification: Define how interfaces are identified
   - Interface Documentation: Specify how interfaces are documented
   - Interface Control Process: Detail how interfaces are controlled
   - Explain your approach to interface management
   - Walk through interface control procedures

8. Supplier Configuration Management:
   - Supplier CM Requirements: Define CM requirements for suppliers
   - Supplier CM Assessment: Explain how supplier CM is evaluated
   - Integration with Project CM: Detail how supplier items integrate
   - Explain your approach to extending CM to suppliers
   - Walk through supplier CM coordination

9. Configuration Management Tools:
   - Tool Requirements: Define needs for CM tools
   - Selected Tools: Identify specific tools to be used
   - Tool Configuration: Specify how tools are configured
   - Tool Training: Define training requirements
   - Explain your tool selection criteria and approach
   - Walk through tool usage for key CM activities

10. Version Control:
    - Repository Structure: Define source code repository organization
    - Branching Strategy: Detail how code branches are managed
    - Tagging/Labeling: Specify how versions are identified
    - Merge Procedures: Define how branches are merged
    - Explain your version control strategy and rationale
    - Walk through version control workflows

11. Build and Release Management:
    - Build Process: Define how system builds are created
    - Build Identification: Specify how builds are identified
    - Release Packaging: Detail how releases are packaged
    - Release Approval: Define release authorization process
    - Distribution: Explain how releases are distributed
    - Explain your build and release methodology
    - Walk through the build and release workflow

12. Environment Configuration Management:
    - Environment Definition: Identify development, test, production environments
    - Environment Control: Detail how environments are controlled
    - Environment Documentation: Specify how environments are documented
    - Explain your approach to environment configuration
    - Walk through environment management procedures

13. Configuration Management Security:
    - Access Control: Define CM system access restrictions
    - Audit Trails: Specify logging of CM activities
    - Backup and Recovery: Detail backup procedures for CM data
    - Explain your approach to CM security
    - Walk through security measures for critical CM activities

14. Configuration Management Plan Maintenance:
    - Plan Review: Define how the CM plan is reviewed
    - Plan Update: Specify process for updating the plan
    - Measurements: Identify how CM effectiveness is measured
    - Continuous Improvement: Detail how CM processes are improved
    - Explain your approach to CM process evolution
    - Walk through the improvement cycle

After completing the initial draft, validate the document against these criteria:
- Does the plan clearly identify what items are under configuration control?
- Are CM roles and responsibilities clearly assigned?
- Is the change control process comprehensive yet practical?
- Are configuration identification schemes consistent and clear?
- Does the plan address baseline management effectively?
- Are audit and review procedures thorough and scheduled appropriately?
- Is the build and release process well-defined?
- Does the plan integrate with other project processes (quality, development)?

Based on this validation, refine any sections requiring improvement. Format the final document using markdown with clear section headings, diagrams for processes, and a consistent structure throughout.
```

**Structure requirements:**
- Introduction (purpose, scope, references, structure, philosophy)
- Configuration Management Organization (roles, authority, relationship, resources)
- Configuration Identification (definition, scheme, criteria, hierarchy, structure, baselines)
- Configuration Control (request, evaluation, board, approval, verification, emergency)
- Configuration Status Accounting (tracking, reports, metrics, records, communication)
- Configuration Audits and Reviews (functional, physical, reviews, schedule, documentation)
- Interface Control (identification, documentation, process)
- Supplier Configuration Management (requirements, assessment, integration)
- Configuration Management Tools (requirements, selection, configuration, training)
- Version Control (structure, branching, tagging, merging)
- Build and Release Management (process, identification, packaging, approval, distribution)
- Environment Configuration Management (definition, control, documentation)
- Configuration Management Security (access, audit trails, backup)
- Configuration Management Plan Maintenance (review, update, measurements, improvement)

**Validation criteria:**
- Clear identification of items under configuration control
- Clear assignment of CM roles and responsibilities
- Comprehensive yet practical change control process
- Consistent and clear configuration identification schemes
- Effective baseline management approach
- Thorough and appropriately scheduled audit and review procedures
- Well-defined build and release process
- Integration with other project processes
- Appropriate level of rigor for project complexity
- Balance between control and development efficiency