---
state: fleeting
type: atomic-note
created: 2025-06-18
source-credibility: 9
research-context: checkpoint-cli-commands
validation-status: verified
---

# CheckPoint CLI Command fw - Multi-Purpose Firewall Management Tool

## Core Concept
The `fw` command is a multi-purpose CheckPoint CLI utility that serves as the primary interface for managing Security Gateway operations including log file management, process control, and security monitoring functions.

## Command Syntax
```bash
fw [-d]
    fetchlogs <options>
    hastat <options>
    kill <options>
    log <options>
    logswitch <options>
    lslogs <options>
    mergefiles <options>
    repairlog <options>
    sam <options>
    sam_policy <options>
```

## Primary Functions
- **Log File Operations**: Performs various operations on Security or Audit log files
- **Process Management**: Kills specified Check Point processes
- **Security Monitoring**: Manages Suspicious Activity Monitoring (SAM) rules
- **Policy Management**: Manages Suspicious Activity Policy editor

## Core Parameters

| Parameter | Description |
|-----------|-------------|
| `-d` | Runs the command in debug mode (use only for troubleshooting) |
| `fetchlogs <options>` | Fetches Security or Audit log files from specified computers |
| `hastat <options>` | Shows High Availability configuration status |
| `kill <options>` | Kills specified Check Point processes |
| `log <options>` | Shows content of Check Point log files |
| `logswitch <options>` | Switches current active log file |
| `lslogs <options>` | Lists Check Point log files |
| `mergefiles <options>` | Merges multiple log files into single file |
| `repairlog <options>` | Rebuilds pointer files for log files |
| `sam <options>` | Manages SAM rules |
| `sam_policy <options>` | Manages Suspicious Activity Policy editor |

## Usage Best Practices
- When using `-d` parameter, redirect output to file or use script command to save CLI session
- Each sub-command has specific options and use cases
- Primary tool for Security Gateway log management and process control

## Source Quality
- **Primary Source**: CheckPoint Admin Foundation CLI Guide
- **Credibility Score**: 9/10
- **Validation Method**: Official CheckPoint documentation

## Connection Potential
Links to:
- [[checkpoint-fwaccel-command-interface]] - Acceleration management
- [[checkpoint-corexl-firewall-worker-instance-architecture]] - Multi-core architecture
- [[checkpoint-securexl-acceleration-patterns-software-optimization]] - Performance optimization
- [[checkpoint-policy-installation-acceleration]] - Policy management
- [[checkpoint-debug-flag-configuration]] - Debug operations
- [[checkpoint-cpview-performance-monitoring]] - Performance monitoring
- [[checkpoint-cluster-acceleration-coordination]] - Cluster operations