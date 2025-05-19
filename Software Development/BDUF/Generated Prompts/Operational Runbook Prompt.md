# Operational Runbook Prompt

**Context:** The Operational Runbook provides comprehensive guidance for system operations and maintenance after deployment. It details routine operational procedures, monitoring processes, troubleshooting steps, and maintenance tasks. This document ensures the system remains available, performant, and secure throughout its operational lifecycle by providing standardized procedures for operations staff.

**Required Expertise Persona:** As a Senior Operations Engineer with 15+ years of experience managing mission-critical production systems, you possess deep expertise in operational procedures, infrastructure management, and system reliability engineering. Your background spans both traditional data center operations and modern cloud environments. You've established operational practices for systems with stringent availability requirements and have extensive experience in incident management, performance tuning, and capacity planning. You excel at creating clear, actionable operational documentation that enables consistent system management even under pressure. Your knowledge of monitoring systems, automation tools, and operational security practices enables you to design comprehensive operational procedures that anticipate common issues and ensure rapid resolution.

**Prompt:**
```
I need you to create a comprehensive Operational Runbook for [project name].

Before diving into specific operational procedures, take a step back and consider: What fundamental principles make operational documentation effective and usable? What qualities ensure that operations staff can maintain system stability and respond efficiently to issues? Outline these core principles and explain why they're crucial for successful system operations.

Now, working methodically through the operational documentation process, create a detailed Operational Runbook with these sections:

1. Introduction:
   - Purpose: Define the document's audience and usage
   - Scope: Specify which system components are covered
   - References: Cite related documents (System Architecture, Deployment Plan)
   - Document Structure: Preview the runbook's organization
   - Document Maintenance: Explain how the runbook will be kept current
   - Explain your approach to creating actionable operational documentation

2. System Overview:
   - System Architecture Summary: Provide a high-level view of the system
   - Operational Architecture: Detail the operational components and dependencies
   - Environment Overview: Describe production and supporting environments
   - Critical Components: Identify mission-critical system elements
   - Walk through your approach to providing context for operations staff
   - Explain how the overview helps operators understand system relationships

3. Roles and Responsibilities:
   - Operations Team Structure: Define operational roles
   - Responsibilities Matrix: Detail who handles what aspects
   - Escalation Paths: Specify escalation routes and criteria
   - On-Call Procedures: Define on-call responsibilities and rotations
   - External Contacts: List vendor contacts and third-party support
   - Explain your reasoning for the operational responsibility structure

4. Normal Operations:
   - Operational Schedule: Detail routine operational activities
   - System Access Procedures: Define how to access system components
   - Daily Checks: List daily verification procedures
   - Weekly Maintenance: Detail weekly maintenance tasks
   - Monthly Procedures: Specify monthly operational activities
   - Quarterly Activities: Detail quarterly maintenance and reviews
   - Walk through your approach to proactive system maintenance
   - Explain how these procedures maintain system health

5. Monitoring and Alerting:
   - Monitoring Architecture: Detail monitoring systems and coverage
   - Key Metrics: Identify critical system performance indicators
   - Alerting Rules: Define alert thresholds and severity levels
   - Alert Response: Detail how to respond to different alert types
   - Dashboard Guide: Explain how to use monitoring dashboards
   - Explain your monitoring strategy and prioritization approach
   - Walk through your reasoning for selected metrics and thresholds

6. Backup and Recovery:
   - Backup Schedule: Detail what is backed up and when
   - Backup Verification: Define procedures to verify backup integrity
   - Restoration Procedures: Provide step-by-step recovery instructions
   - Backup Monitoring: Explain how to monitor backup success/failure
   - Walk through your backup strategy and recovery time objectives
   - Explain your approach to ensuring data recoverability

7. Security Operations:
   - Security Monitoring: Detail security monitoring procedures
   - User Access Management: Define user provisioning and deprovisioning
   - Security Patching: Detail security update procedures
   - Security Incident Response: Provide response procedures for security events
   - Audit Procedures: Explain security audit activities
   - Explain your approach to operational security management

8. Troubleshooting Procedures:
   - For each system component:
     * Common Issues: List frequently encountered problems
     * Diagnostic Steps: Provide troubleshooting procedures
     * Resolution Actions: Detail corrective measures
     * Verification: Explain how to verify successful resolution
   - General Troubleshooting Framework: Define a systematic approach
   - Log Analysis Guidance: Explain how to interpret system logs
   - Walk through your troubleshooting methodology
   - Explain how these procedures enable efficient problem resolution

9. Incident Management:
   - Incident Classification: Define severity levels and characteristics
   - Incident Response Workflow: Detail the incident handling process
   - Communication Templates: Provide templates for incident communications
   - Post-Incident Activities: Define post-mortem and follow-up processes
   - Incident Documentation: Explain how to document incidents
   - Explain your incident management approach and its rationale
   - Walk through how the process scales for different incident types

10. Change Management:
    - Change Request Process: Define how to initiate operational changes
    - Change Impact Assessment: Explain how to evaluate change risks
    - Change Implementation: Detail change execution procedures
    - Change Verification: Define how to verify successful changes
    - Emergency Change Procedures: Explain expedited process for urgent changes
    - Walk through your change management approach
    - Explain how the process balances stability with necessary changes

11. Capacity Management:
    - Capacity Metrics: Identify key capacity indicators
    - Capacity Monitoring: Define how to track resource utilization
    - Threshold Management: Specify capacity thresholds and alerts
    - Scaling Procedures: Detail how to scale system resources
    - Capacity Planning: Explain proactive capacity management
    - Walk through your capacity management methodology
    - Explain how these procedures prevent resource constraints

12. Disaster Recovery:
    - Disaster Scenarios: Identify potential disaster types
    - Recovery Team: Define roles during disaster recovery
    - Recovery Procedures: Provide detailed recovery instructions
    - Communication Plan: Detail stakeholder communications
    - Testing Schedule: Define DR testing procedures and frequency
    - Explain your disaster recovery strategy and its alignment with business continuity

13. Standard Operating Procedures (SOPs):
    - For each routine operation:
      * Purpose: Define the procedure's objective
      * Prerequisites: List required access and information
      * Step-by-Step Instructions: Provide detailed procedure steps
      * Verification: Explain how to verify successful completion
      * Troubleshooting: Address common issues during the procedure
    - Include SOPs for all routine operational tasks
    - Explain your approach to standardizing operational procedures

14. Operational Improvement:
    - Metrics Collection: Define operational metrics to track
    - Performance Review: Explain periodic review procedures
    - Improvement Process: Detail how to implement operational enhancements
    - Walk through your approach to continuous operational improvement
    - Explain how to identify and address operational inefficiencies

After completing the initial draft, validate the document against these criteria:
- Are procedures clear, concise, and actionable?
- Are troubleshooting steps comprehensive and systematic?
- Does the runbook cover all system components?
- Are critical operational tasks well-documented?
- Is the information organized for quick access during incidents?
- Does the document address both routine and exceptional situations?
- Is there sufficient guidance for after-hours support?
- Does the runbook promote consistent operational practices?

Based on this validation, refine any sections requiring improvement. Format the final document using markdown with clear section headings, numbered procedures, and a consistent structure throughout.
```

**Structure requirements:**
- Introduction (purpose, scope, references, structure, maintenance)
- System Overview (architecture, operational components, environments, critical elements)
- Roles and Responsibilities (team structure, matrix, escalation, on-call, contacts)
- Normal Operations (schedule, access, daily/weekly/monthly/quarterly tasks)
- Monitoring and Alerting (architecture, metrics, rules, response, dashboards)
- Backup and Recovery (schedule, verification, restoration, monitoring)
- Security Operations (monitoring, access, patching, incident response, audits)
- Troubleshooting Procedures (issues, diagnostics, resolution, verification, framework, logs)
- Incident Management (classification, workflow, communication, post-incident, documentation)
- Change Management (process, assessment, implementation, verification, emergency changes)
- Capacity Management (metrics, monitoring, thresholds, scaling, planning)
- Disaster Recovery (scenarios, team, procedures, communication, testing)
- Standard Operating Procedures (purpose, prerequisites, instructions, verification, troubleshooting)
- Operational Improvement (metrics, review, process)

**Validation criteria:**
- Clear, concise, and actionable procedures
- Comprehensive and systematic troubleshooting steps
- Coverage of all system components
- Well-documented critical operational tasks
- Organization for quick access during incidents
- Address both routine and exceptional situations
- Sufficient guidance for after-hours support
- Promotion of consistent operational practices
- Inclusion of relevant operational diagrams
- Consideration of different operator experience levels