# Disaster Recovery Plan Prompt

**Context:** The Disaster Recovery Plan defines the procedures, resources, and strategies for recovering the system in the event of a significant disruption or disaster. It details how to restore critical system functions to ensure business continuity. This document is essential for minimizing downtime, data loss, and business impact during emergency situations, providing a structured approach to system recovery.

**Required Expertise Persona:** As a Business Continuity and Disaster Recovery Specialist with 16+ years of experience designing and implementing recovery solutions for mission-critical systems, you possess extensive expertise in DR strategies, recovery technologies, and resilience planning. Your background includes developing comprehensive DR plans across various industries where system availability is paramount. You excel at balancing recovery objectives with resource constraints and have successfully led organizations through actual disaster recovery situations. Your experience spans diverse technology environments and recovery scenarios, from localized failures to site-wide disasters. You understand how to create pragmatic recovery procedures that can be executed under pressure by operations teams. Your knowledge of recovery testing methodologies, backup technologies, and failover systems enables you to design robust DR plans that ensure business survivability.

**Prompt:**
```
I need you to create a comprehensive Disaster Recovery Plan for [project name].

Before diving into specific recovery procedures, take a step back and consider: What fundamental principles make an effective disaster recovery plan? What qualities ensure that recovery activities can be executed successfully during crisis situations? Outline these core principles and explain why they're crucial for effective disaster recovery.

Now, working methodically through the disaster recovery planning process, create a detailed Disaster Recovery Plan with these sections:

1. Introduction:
   - Purpose: Define the document's audience and usage
   - Scope: Specify what systems and scenarios are covered
   - References: Cite related documents (Business Continuity Plan, System Architecture)
   - Document Structure: Preview the plan's organization
   - Plan Activation: Explain when and how the plan is activated
   - Explain your approach to practical disaster recovery planning

2. Disaster Recovery Overview:
   - Recovery Strategy: Define the overall approach to recovery
   - Recovery Objectives: Specify Recovery Time Objective (RTO) and Recovery Point Objective (RPO)
   - Critical Functions: Identify system functions requiring priority recovery
   - Dependencies: Detail external and internal dependencies
   - Recovery Priorities: Establish the sequence of recovery activities
   - Walk through your reasoning for the recovery strategy
   - Explain how the strategy aligns with business objectives

3. Risk Assessment and Business Impact:
   - Threat Scenarios: Identify potential disaster scenarios
   - Vulnerability Assessment: Analyze system vulnerabilities
   - Business Impact Analysis: Detail consequences of system unavailability
   - Critical Resources: Identify essential components for operation
   - Explain your approach to risk-based recovery planning
   - Walk through how impact analysis influences recovery priorities

4. Recovery Team Organization:
   - Team Structure: Define recovery team organization
   - Roles and Responsibilities: Detail specific duties during recovery
   - Contact Information: Provide emergency contact details
   - Escalation Procedures: Define when and how to escalate issues
   - External Resources: Identify third-party support contacts
   - Explain your approach to recovery team organization
   - Walk through how the team operates during a disaster

5. Notification and Activation Procedures:
   - Incident Detection: Define how disasters are identified
   - Assessment Criteria: Specify how impact is evaluated
   - Activation Decision: Detail who decides to activate the plan
   - Notification Process: Explain how team members are notified
   - Escalation Triggers: Define thresholds for escalation
   - Walk through the activation decision process
   - Explain your notification strategy and its rationale

6. Disaster Recovery Facilities:
   - Primary Site: Describe the main operational facility
   - Recovery Site: Detail alternate processing facilities
   - Infrastructure Requirements: Specify required recovery infrastructure
   - Activation Process: Explain how recovery sites are activated
   - Explain your approach to recovery site selection and preparation
   - Walk through the transition to recovery facilities

7. Data Backup and Recovery:
   - Backup Strategy: Define the overall approach to data backup
   - Backup Schedule: Detail timing and frequency of backups
   - Backup Verification: Explain how backups are validated
   - Recovery Procedures: Provide step-by-step data restoration instructions
   - Backup Technologies: Describe tools and methods used
   - Explain your backup strategy and its alignment with recovery objectives
   - Walk through the data recovery process

8. System Recovery Procedures:
   - For each critical system component:
     * Recovery Priority: Specify the component's recovery sequence
     * Recovery Time: Define targeted restoration timeframe
     * Prerequisites: List dependencies for recovery
     * Recovery Steps: Provide detailed recovery instructions
     * Verification: Explain how to confirm successful recovery
     * Fallback Procedures: Detail what to do if recovery fails
   - Organize procedures in recovery sequence order
   - Explain your approach to systematic recovery
   - Walk through the recovery workflow from start to completion

9. Network Recovery:
   - Network Infrastructure: Detail network component recovery
   - Connectivity Restoration: Explain how connections are reestablished
   - Security Measures: Define security controls during recovery
   - Validation Steps: Specify how network recovery is verified
   - Explain your network recovery strategy
   - Walk through network restoration sequence

10. Application Recovery:
    - Application Components: Identify application elements requiring recovery
    - Data Dependencies: Specify data requirements for applications
    - Configuration Recovery: Detail configuration restoration
    - Application Testing: Define validation procedures
    - Explain your application recovery approach
    - Walk through application restoration process

11. External Dependencies Recovery:
    - Third-Party Services: Detail recovery of external service connections
    - Vendor Coordination: Explain how to work with external providers
    - Alternative Options: Identify backup options for critical services
    - Explain your strategy for managing external dependencies
    - Walk through vendor communication procedures

12. Communication Plan:
    - Internal Communication: Define how to communicate with staff
    - Stakeholder Communication: Detail external communication approach
    - Status Reporting: Specify how recovery progress is reported
    - Communication Templates: Provide pre-approved message templates
    - Explain your communication strategy during recovery
    - Walk through the communication workflow

13. Return to Normal Operations:
    - Recovery Completion Criteria: Define when recovery is complete
    - Transition Process: Detail how to return to primary facilities
    - Verification Process: Explain validation before resuming normal operations
    - Post-Incident Review: Define how incidents are analyzed afterward
    - Explain your approach to orderly restoration of normal operations
    - Walk through the transition from recovery to normal state

14. Plan Testing and Maintenance:
    - Testing Strategy: Define how the plan is tested
    - Test Types: Detail different testing approaches (tabletop, functional, full)
    - Test Schedule: Specify testing frequency
    - Test Documentation: Explain how tests are documented
    - Plan Updates: Define how the plan is maintained and updated
    - Explain your approach to ensuring plan viability
    - Walk through the testing and maintenance cycle

15. Appendices:
    - Recovery Checklists: Provide quick-reference recovery steps
    - Contact Lists: Comprehensive emergency contacts
    - Resource Requirements: Detailed equipment and resource needs
    - Recovery Site Information: Technical details about recovery sites
    - Backup Schedule and Retention: Detailed backup information
    - Explain how these supporting materials enhance the plan
    - Walk through how to use the appendices during recovery

After completing the initial draft, validate the document against these criteria:
- Are recovery procedures clear, detailed, and actionable during an emergency?
- Do recovery time and point objectives align with business requirements?
- Are roles and responsibilities clearly defined?
- Does the plan address multiple disaster scenarios?
- Are dependencies and critical resources identified?
- Is the activation process clear and decision authority specified?
- Are testing and maintenance procedures adequately defined?
- Does the plan include sufficient verification steps?

Based on this validation, refine any sections requiring improvement. Format the final document using markdown with clear section headings, numbered procedures, callout boxes for critical information, and a consistent structure throughout.
```

**Structure requirements:**
- Introduction (purpose, scope, references, structure, activation)
- Disaster Recovery Overview (strategy, objectives, functions, dependencies, priorities)
- Risk Assessment and Business Impact (threats, vulnerabilities, impact, resources)
- Recovery Team Organization (structure, roles, contacts, escalation, external)
- Notification and Activation Procedures (detection, assessment, decision, notification, triggers)
- Disaster Recovery Facilities (primary, recovery, requirements, activation)
- Data Backup and Recovery (strategy, schedule, verification, procedures, technologies)
- System Recovery Procedures (priority, time, prerequisites, steps, verification, fallback)
- Network Recovery (infrastructure, restoration, security, validation)
- Application Recovery (components, dependencies, configuration, testing)
- External Dependencies Recovery (services, coordination, alternatives)
- Communication Plan (internal, stakeholder, reporting, templates)
- Return to Normal Operations (criteria, transition, verification, review)
- Plan Testing and Maintenance (strategy, types, schedule, documentation, updates)
- Appendices (checklists, contacts, resources, site information, backup details)

**Validation criteria:**
- Clear, detailed, and actionable recovery procedures during an emergency
- Recovery time and point objectives aligned with business requirements
- Clearly defined roles and responsibilities
- Coverage of multiple disaster scenarios
- Identification of dependencies and critical resources
- Clear activation process and decision authority
- Adequate testing and maintenance procedures
- Sufficient verification steps
- Practical procedures executable under pressure
- Consideration of different failure scenarios