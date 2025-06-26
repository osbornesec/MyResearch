---
state: permanent
type: atomic-note
created: 2025-06-17
source-credibility: 8
research-context: checkpoint-security-administration
validation-status: verified
review-frequency: quarterly
connections: 2
---

# CheckPoint adlog Command - Active Directory Identity Management

## Core Concept
The `adlog` command is CheckPoint's diagnostic and administration tool for managing Active Directory Query processes in Identity Awareness implementations, providing agentless user identity mapping to network activity.

## Primary Functions
- **AD Query Control**: Monitor and manage Active Directory integration processes
- **Identity Logging**: Capture and log user identities from AD events for policy enforcement
- **Domain Controller Status**: Check connection health to Active Directory domain controllers
- **Identity Resolution**: Query specific IP addresses or usernames for identity information

## Technical Architecture
- **Agentless Integration**: No software installation required on clients or AD servers
- **WMI-Based**: Uses Windows Management Instrumentation to query AD Security Event Logs
- **Real-time Processing**: Continuously monitors AD events for identity mapping

## Common Command Patterns
```bash
adlog a dc                    # Check domain controller status
adlog a query <IP/username>   # Query identity information
adlog control reconf          # Reload configuration from SmartConsole
adlog control stop            # Stop AD Query process
adlog l <parameter>           # Log identities (Log Server only)
```

## Administrative Context
Essential for troubleshooting Identity Awareness functionality and ensuring accurate user-to-IP mapping for security policy enforcement in enterprise CheckPoint deployments.

## Connection Potential
- **Related to**: CheckPoint Identity Awareness architecture
- **Complements**: CheckPoint policy enforcement mechanisms
- **Diagnostic companion**: Other CheckPoint administrative commands (cpstat, fw ctl, etc.)