# Installation Guide Prompt

**Context:** The Installation Guide provides detailed instructions for installing and initially configuring the software system in target environments. It covers prerequisites, installation steps, configuration options, verification procedures, and troubleshooting. This document is essential for ensuring consistent, successful deployment of the system and is typically used by system administrators or deployment specialists.

**Required Expertise Persona:** As a Senior Deployment Engineer with 14+ years of experience deploying complex software systems across diverse environments, you possess deep expertise in installation processes, system configuration, and deployment automation. Your background includes creating comprehensive installation documentation for enterprise-level applications deployed on-premises, in cloud environments, and in hybrid configurations. You excel at anticipating installation challenges and providing clear, actionable solutions. Your experience spans multiple operating systems, database platforms, and middleware technologies. You understand how to craft installation instructions that accommodate different technical skill levels and environmental variations. Your knowledge of installation validation, configuration management, and troubleshooting techniques enables you to create installation guides that ensure successful deployment under varied conditions.

**Prompt:**
```
I need you to create a comprehensive Installation Guide for [project name].

Before diving into specific installation procedures, take a step back and consider: What fundamental principles make an effective installation guide? What qualities ensure that installation instructions are clear, accurate, and lead to successful deployment? Outline these core principles and explain why they're crucial for trouble-free system installation.

Now, working methodically through the installation documentation process, create a detailed Installation Guide with these sections:

1. Introduction:
   - Purpose: Define the document's audience and usage
   - Scope: Specify what installation scenarios are covered
   - References: Cite related documents (System Architecture, Deployment Plan)
   - Document Conventions: Explain notation, icons, and formatting
   - Document Structure: Preview the guide's organization
   - Explain your approach to comprehensive installation documentation

2. System Overview:
   - System Architecture Summary: Provide a high-level view of the system
   - Component Overview: Briefly describe main components being installed
   - Deployment Topology: Explain deployment patterns and options
   - Walk through your approach to providing installation context
   - Explain how understanding the architecture helps with installation

3. Pre-Installation Requirements:
   - Hardware Requirements: Specify minimum and recommended hardware
   - Software Prerequisites: Detail required software and versions
   - Network Requirements: Describe network configuration needs
   - Security Prerequisites: Explain security prerequisites
   - Environment Preparation: List preparation tasks before installation
   - Permissions and Access: Detail required permissions
   - Explain your reasoning for each prerequisite
   - Walk through how to verify prerequisites are met

4. Installation Planning:
   - Installation Scenarios: Detail different installation options
   - Installation Strategy: Recommend approaches for different scenarios
   - Sizing Guidelines: Provide guidance on resource allocation
   - Deployment Patterns: Explain standard deployment configurations
   - Walk through decision points in the installation planning
   - Explain how to select the appropriate installation approach

5. Installation Procedure:
   - For each component or installation step:
     * Step Number and Name: Clearly identify each step
     * Objective: Explain what the step accomplishes
     * Prerequisites: List any step-specific prerequisites
     * Detailed Instructions: Provide precise, step-by-step guidance
     * Expected Results: Describe what should happen
     * Verification: Explain how to verify successful completion
     * Troubleshooting: Address common issues for this step
   - Organize steps in logical sequence
   - Include screenshots or diagrams where helpful
   - Explain your approach to clear, actionable instructions
   - Walk through how to execute the installation systematically

6. Configuration:
   - Configuration Files: Identify key configuration files
   - Configuration Parameters: Detail important configuration settings
   - Default Values: Specify default settings and when to change them
   - Configuration Examples: Provide sample configurations for scenarios
   - Validation: Explain how to validate configuration
   - Explain your approach to configuration documentation
   - Walk through the configuration decision process

7. Post-Installation Tasks:
   - System Verification: Define how to verify successful installation
   - Initial Setup: Detail required initial configuration
   - Security Hardening: Explain post-installation security measures
   - Performance Tuning: Provide initial performance optimization
   - Walk through your approach to installation verification
   - Explain the importance of post-installation steps

8. Upgrade Procedures:
   - Upgrade Paths: Define supported upgrade scenarios
   - Pre-Upgrade Preparation: Detail preparation before upgrading
   - Upgrade Steps: Provide step-by-step upgrade instructions
   - Post-Upgrade Tasks: Explain necessary post-upgrade activities
   - Rollback Procedures: Detail how to revert if necessary
   - Explain your approach to safe system upgrade
   - Walk through upgrade decision points and considerations

9. Uninstallation:
   - Uninstall Preparation: Detail preparation before uninstalling
   - Uninstall Procedure: Provide step-by-step uninstall instructions
   - Data Preservation: Explain how to preserve important data
   - Cleanup: Detail post-uninstallation cleanup activities
   - Explain your approach to complete system removal
   - Walk through uninstallation considerations

10. Troubleshooting:
    - Common Issues: List frequently encountered problems
    - Diagnostic Procedures: Detail how to diagnose issues
    - Solutions: Provide resolution steps for each issue
    - Logs and Error Messages: Explain how to interpret logs
    - Support Resources: Detail how to get additional help
    - Explain your approach to comprehensive troubleshooting guidance
    - Walk through problem-solving methodology

11. Reference Information:
    - Port Usage: List all network ports used by the system
    - File Locations: Detail important file and directory locations
    - Account Information: Describe service accounts and permissions
    - Resource Utilization: Explain typical resource consumption
    - Explain your approach to reference information organization
    - Walk through how to use reference information effectively

12. Appendices:
    - Installation Checklist: Provide a summary checklist
    - Environment Validation Scripts: Include scripts to verify environment
    - Sample Configuration Files: Provide template configurations
    - Installation Log Examples: Show sample logs for reference
    - Explain how these supporting materials enhance the guide
    - Walk through when and how to use the appendices

After completing the initial draft, validate the document against these criteria:
- Are instructions clear, precise, and in logical order?
- Are prerequisites and requirements completely specified?
- Do the instructions cover all necessary installation scenarios?
- Is troubleshooting information comprehensive and helpful?
- Are verification steps included to confirm successful installation?
- Is the document accessible to the intended audience?
- Does the guide align with the deployment architecture?
- Are security considerations adequately addressed?

Based on this validation, refine any sections requiring improvement. Format the final document using markdown with clear section headings, numbered steps, callout boxes for important notes, and visual aids where appropriate.
```

**Structure requirements:**
- Introduction (purpose, scope, references, conventions, structure)
- System Overview (architecture, components, topology)
- Pre-Installation Requirements (hardware, software, network, security, preparation, permissions)
- Installation Planning (scenarios, strategy, sizing, patterns)
- Installation Procedure (steps with objectives, prerequisites, instructions, results, verification, troubleshooting)
- Configuration (files, parameters, defaults, examples, validation)
- Post-Installation Tasks (verification, setup, security, performance)
- Upgrade Procedures (paths, preparation, steps, post-upgrade, rollback)
- Uninstallation (preparation, procedure, data preservation, cleanup)
- Troubleshooting (issues, diagnostics, solutions, logs, support)
- Reference Information (ports, files, accounts, resources)
- Appendices (checklist, scripts, sample files, log examples)

**Validation criteria:**
- Clear, precise, and logically ordered instructions
- Complete specification of prerequisites and requirements
- Coverage of all necessary installation scenarios
- Comprehensive and helpful troubleshooting information
- Inclusion of verification steps to confirm successful installation
- Accessibility to the intended audience
- Alignment with the deployment architecture
- Adequate addressing of security considerations
- Appropriate use of visual aids and examples
- Consideration of different environment variations