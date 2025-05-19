# Change Control Plan Prompt

**Context:** The Change Control Plan defines the procedures, roles, and processes for managing changes to project scope, requirements, design, and other baselined artifacts. It ensures that changes are properly evaluated, approved, documented, and implemented in a controlled manner. This document is essential in BDUF methodologies to maintain the integrity of project baselines and prevent scope creep.

**Required Expertise Persona:** As a Configuration Management Expert with 15+ years of experience implementing change control processes for complex software projects, you possess deep expertise in change management methodologies and best practices. Your background includes establishing change control boards, implementing change tracking systems, and developing impact analysis frameworks for critical systems. You excel at creating processes that balance rigorous control with project progress needs. Your experience spans regulated industries where strict change control is mandated, and you understand how to create scalable processes that maintain compliance while supporting project evolution. You've successfully managed change control during all phases of the SDLC and know how to adapt processes to different project sizes and complexity levels.

**Prompt:**
```
I need you to create a comprehensive Change Control Plan for [project name].

Before diving into specific change control procedures, take a step back and consider: What fundamental principles make an effective change control system? What qualities ensure that changes are properly evaluated while maintaining project momentum? Outline these core principles and explain why they're crucial for maintaining system integrity through controlled evolution.

Now, working methodically through the change control planning process, create a detailed Change Control Plan with these sections:

1. Introduction:
   - Purpose: Define the document's audience and usage
   - Scope: Specify which project artifacts are under change control
   - References: Cite related documents (Project Management Plan, Configuration Management Plan)
   - Document Structure: Preview the plan's organization
   - Explain your approach to effective change control

2. Change Control Philosophy:
   - Guiding Principles: Define the mindset for change management
   - Objectives: Detail what the change control process aims to achieve
   - Baseline Management: Explain the concept and importance of baselines
   - Walk through your reasoning for this philosophical approach
   - Explain how these principles balance control with project progress

3. Configuration Items:
   - Controlled Artifacts: Identify which documents/deliverables are under change control
   - Baseline Establishment: Define when artifacts come under formal control
   - Version Control: Explain versioning scheme for controlled items
   - Explain your approach to determining what should be controlled
   - Walk through how configuration items are identified and maintained

4. Change Control Roles and Responsibilities:
   - Change Control Board (CCB): Define composition and authority
   - Change Requestors: Specify who can request changes and how
   - Change Evaluators: Detail who assesses change impacts
   - Change Implementers: Identify who implements approved changes
   - Change Verifiers: Specify who verifies correct implementation
   - Walk through your reasoning for this organizational structure
   - Explain how responsibilities are assigned to ensure proper oversight

5. Change Request Process:
   - Change Request Initiation: Define how changes are requested
   - Request Documentation: Detail required information for change requests
   - Change Classification: Explain how changes are categorized (minor/major, etc.)
   - Prioritization Criteria: Specify how change priorities are determined
   - Explain your approach to standardizing change requests
   - Walk through the request workflow from initiation to logging

6. Change Impact Analysis:
   - Analysis Scope: Define what impacts to assess
   - Technical Impact: Detail how to evaluate technical implications
   - Schedule Impact: Explain how to assess timeline effects
   - Resource Impact: Define how to determine resource requirements
   - Cost Impact: Detail financial impact assessment
   - Risk Assessment: Explain risk evaluation for proposed changes
   - Explain your approach to comprehensive impact analysis
   - Walk through analysis techniques for different change types

7. Change Evaluation and Approval:
   - Evaluation Criteria: Define how changes are evaluated
   - CCB Meeting Process: Detail how the CCB reviews changes
   - Decision Outcomes: Specify possible decisions (approve/reject/defer)
   - Approval Thresholds: Define authority levels for different change types
   - Emergency Change Process: Explain expedited procedures for urgent changes
   - Explain your reasoning for the decision-making approach
   - Walk through the evaluation process step-by-step

8. Change Implementation:
   - Implementation Planning: Define how approved changes are planned
   - Change Scheduling: Explain how changes are scheduled
   - Implementation Verification: Detail how implementations are verified
   - Change Closure: Define how to close implemented changes
   - Explain your approach to controlled implementation
   - Walk through the implementation workflow

9. Change Documentation:
   - Change Log: Define the central record of all changes
   - Change Request Form: Detail the standard change request format
   - Status Reporting: Explain change status tracking and reporting
   - Document Update Procedures: Define how documents are updated
   - Explain your documentation strategy and its importance
   - Walk through the document update process

10. Change Control Tools:
    - Tool Requirements: Define requirements for change control tools
    - Selected Tools: Identify tools to be used
    - Tool Usage: Explain how tools support the process
    - Explain your approach to tool selection and usage
    - Walk through tool workflows for change management

11. Change Control Metrics:
    - Process Metrics: Define measurements for process performance
    - Change Volume Metrics: Explain tracking of change quantities and types
    - Impact Metrics: Detail how change impacts are measured
    - Explain your approach to data-driven process improvement
    - Walk through how metrics guide process refinement

12. Change Control Auditing:
    - Audit Process: Define how change control is audited
    - Compliance Verification: Explain how to verify process adherence
    - Audit Frequency: Specify how often audits occur
    - Explain your audit approach and its importance
    - Walk through the audit procedure and follow-up

13. Training and Communication:
    - Training Requirements: Define change control training needs
    - Communication Plan: Detail how changes are communicated
    - Stakeholder Notification: Specify who is informed of changes
    - Explain your approach to ensuring process understanding
    - Walk through communication protocols for different change types

After completing the initial draft, validate the document against these criteria:
- Is the change control process comprehensive yet practical?
- Are roles and responsibilities clearly defined?
- Does the impact analysis approach cover all relevant dimensions?
- Is the approval process appropriate for different change types?
- Are documentation requirements thorough and maintainable?
- Does the process include emergency change procedures?
- Is there a clear way to measure the effectiveness of the process?
- Does the plan align with organizational governance requirements?

Based on this validation, refine any sections requiring improvement. Format the final document using markdown with clear section headings, workflow diagrams, and a consistent structure throughout.
```

**Structure requirements:**
- Introduction (purpose, scope, references, structure)
- Change Control Philosophy (principles, objectives, baseline management)
- Configuration Items (artifacts, establishment, version control)
- Change Control Roles and Responsibilities (CCB, requestors, evaluators, implementers, verifiers)
- Change Request Process (initiation, documentation, classification, prioritization)
- Change Impact Analysis (scope, technical, schedule, resource, cost, risk)
- Change Evaluation and Approval (criteria, CCB process, outcomes, thresholds, emergency process)
- Change Implementation (planning, scheduling, verification, closure)
- Change Documentation (log, form, reporting, update procedures)
- Change Control Tools (requirements, selection, usage)
- Change Control Metrics (process, volume, impact)
- Change Control Auditing (process, verification, frequency)
- Training and Communication (requirements, plan, notification)

**Validation criteria:**
- Comprehensive yet practical change control process
- Clearly defined roles and responsibilities
- Impact analysis approach covering all relevant dimensions
- Appropriate approval process for different change types
- Thorough and maintainable documentation requirements
- Inclusion of emergency change procedures
- Clear metrics for measuring process effectiveness
- Alignment with organizational governance requirements
- Scalability for different change volumes and complexities
- Balance between control and project progress