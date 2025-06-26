---
state: permanent
type: atomic-note
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-license-management
validation-status: verified
connections: 3
review-frequency: monthly
---

# Check Point cplic put object-name Remote License Attachment

## Core Concept
The `cplic put <object name>` command attaches Central or Local licenses to remote managed Security Gateways and Cluster Members from a Management Server, automatically updating the license repository.

## Command Structure
```bash
cplic [-d] put <Object Name> [-ip<Dynamic IP Address>] [-F <Output File>] -l <License File> [<Host>] [<Expiration Date>] [<Signature>] [<SKU/Feature>]
```

## Key Parameters
- **Object Name**: Security Gateway/Cluster Member name as defined in SmartConsole
- **-ip**: For dynamic IP address (DAIP) gateways
- **-l**: License file containing license details
- **-d**: Debug mode for troubleshooting

## Operational Context
- **Execution Location**: Management Server only
- **Target Objects**: Remote Security Gateways and Cluster Members
- **License Repository**: Automatically updated when command runs
- **License Source**: User Center provides license details

## Technical Requirements
- Management Server connectivity to target gateways
- Valid license file with proper host, expiration, signature, and SKU parameters
- Object name must match SmartConsole configuration exactly

## Connection Potential
Links to checkpoint license management, remote gateway administration, and cplic command family.