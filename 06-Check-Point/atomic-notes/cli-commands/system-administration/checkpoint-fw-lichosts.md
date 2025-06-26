---
state: fleeting
type: atomic-note
created: 2025-06-18
source-credibility: 9
research-context: checkpoint-cli-commands
validation-status: verified
---

# CheckPoint CLI fw lichosts - Internal Host License Display Command

## Core Concept
The `fw lichosts` command displays IP addresses of internal hosts that the Security Gateway has detected and counted based on the installed license. This command helps administrators monitor license compliance and identify internal hosts protected by the Security Gateway.

## Command Syntax
```bash
fw [-d] lichosts [-1] [-x]
```

## Parameters
- **-d**: Debug mode (general fw command parameter)
- **-1**: Single line output format
- **-x**: Extended output format

## Usage Description
- Shows list of hosts protected by the Security Gateway
- Displays license status for internal host counting
- Used for license compliance monitoring and troubleshooting
- Helps identify "too many internal hosts" license issues

## Example Output
```bash
[Expert@MyGW:0]# fw lichosts
License allows an unlimited number of hosts
[Expert@MyGW:0]
```

## Research Context
Essential for CheckPoint Security Gateway license management and internal network visibility. Critical for troubleshooting license-related host counting issues.

## Source Quality
- **Primary Source**: CheckPoint Admin Foundation CLI Guide (processed 2025-06-17)
- **Credibility Score**: 9/10 (Official CheckPoint documentation)
- **Validation Method**: Direct extraction from official CLI guide

## Connection Potential
- Links to CheckPoint license management concepts
- Connects to Security Gateway administration workflows
- Related to network topology discovery and host counting
- Associated with troubleshooting "too many internal hosts" errors (SK10200)
- Part of broader CheckPoint CLI command framework