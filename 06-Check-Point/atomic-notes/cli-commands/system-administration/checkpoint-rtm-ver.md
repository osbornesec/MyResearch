---
state: permanent
type: atomic-note
created: 2025-06-17
domain: checkpoint-security
command-category: system-information
validation-status: verified
connections: 3
review-frequency: quarterly
---

# Check Point RTM Version Display Command

## Core Concept
The `rtm ver` command displays the Real Time Monitor (RTM) version information on Check Point Security Gateway appliances, providing critical system identification data for troubleshooting and compatibility verification.

## Command Usage
```bash
rtm ver
```

## Output Information
- RTM software version number
- Build information and compilation date
- Platform compatibility details
- License and support status indicators

## Primary Use Cases
- **System Identification**: Verify RTM version during troubleshooting procedures
- **Compatibility Verification**: Confirm RTM version compatibility with management servers
- **Support Documentation**: Provide version information for technical support cases
- **Upgrade Planning**: Assess current RTM version before system updates

## Technical Context
RTM (Real Time Monitor) serves as the core monitoring and management interface component on Check Point Security Gateways, requiring version verification for proper operation coordination with SmartConsole and management infrastructure.

## Connection Potential
- Links to Check Point system information commands
- Connects to troubleshooting methodology workflows
- Relates to version compatibility matrices
- Associates with upgrade planning procedures