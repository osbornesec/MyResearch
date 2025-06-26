---
state: permanent
type: atomic-note
created: 2025-06-18
source-credibility: 8
research-context: checkpoint-identity-awareness-cli-commands
validation-status: verified
---

# CheckPoint AD Log Domain Controller Status Command

## Core Concept
The `adlog dc` command displays the connection status between CheckPoint Security Gateway and Active Directory Domain Controllers for Identity Awareness functionality.

## Command Functionality
- **Primary Purpose**: Monitor connectivity health between gateway and AD DCs
- **Identity Awareness Role**: Verifies the communication channel required for user identity acquisition
- **Troubleshooting Application**: First-line diagnostic for identity acquisition failures
- **Output Information**: Connection status, DC availability, and communication health metrics

## Technical Context
- **Component**: AD Query process management
- **Authentication Method**: Clientless identity acquisition from AD event logs
- **Prerequisites**: Active Directory integration configured for Identity Awareness
- **Operational Impact**: Essential for transparent user identification without client agents

## Common Use Cases
- Troubleshooting Identity Awareness authentication failures
- Verifying AD integration health during deployment
- Monitoring ongoing connectivity to domain controllers
- Diagnosing policy enforcement issues related to user identification

## Source Quality
- **Primary Source**: CheckPoint Gaia CLI Reference Documentation
- **Credibility Score**: 8/10
- **Validation Method**: Official vendor documentation cross-reference

## Connection Potential
Links to CheckPoint Identity Awareness architecture, AD Query process, and identity-based policy enforcement concepts.