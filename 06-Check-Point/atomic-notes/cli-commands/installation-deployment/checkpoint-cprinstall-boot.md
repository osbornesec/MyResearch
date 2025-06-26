---
state: permanent
type: atomic-note
created: 2025-06-17
source-credibility: 9
validation-status: verified
domain: checkpoint-administration
category: remote-management
---

# Check Point cprinstall boot Command

## Core Concept
The `cprinstall boot` command remotely reboots a managed Security Gateway from the Security Management Server command line interface.

## Technical Specifications
- **Execution Context**: Expert mode required on Security Management Server
- **Syntax**: `cprinstall boot <Object Name>`
- **Parameter**: Object Name must match Security Gateway name configured in SmartConsole
- **Multi-Domain**: Requires `mdsenv <IP/Name>` context for Domain Management Server operations

## Operational Requirements
- Command must be executed from Expert mode on Security Management Server
- Security Gateway object must exist and be properly configured in SmartConsole
- CPRI (Check Point Remote Installation) connection must be established
- Administrator must have appropriate privileges for remote operations

## Use Cases
- Emergency remote reboot of unresponsive Security Gateway
- Scheduled maintenance requiring system restart
- Post-configuration changes requiring reboot
- Troubleshooting scenarios requiring clean system state

## Connection Links
- [[checkpoint-expert-mode-access]] - Required execution environment
- [[checkpoint-cpri-communication-protocol]] - Underlying remote management
- [[checkpoint-security-gateway-object-configuration]] - SmartConsole configuration
- [[checkpoint-multi-domain-management-context]] - Multi-Domain Server operations
- [[checkpoint-remote-installation-framework]] - Parent command framework

## Source Quality
- **Primary Source**: Check Point Administration Guide
- **Credibility Score**: 9/10
- **Validation Method**: Official vendor documentation