---
state: permanent
type: atomic-note
created: 2025-06-17
source-credibility: 9
research-context: CheckPoint CLI administration
validation-status: verified
domain: checkpoint-cli
---

# CheckPoint fw Command - Core Administrative Interface

## Core Concept

The `fw` command is CheckPoint's primary command-line interface for firewall management, log handling, policy operations, and system administration. It serves as the main entry point for expert-level security gateway operations.

## Command Structure

```bash
fw [-d] <subcommand> [options]
```

**Global Options:**
- `-d`: Debug mode - provides detailed execution information
- `-i <ID>`: CoreXL instance-specific operations

## Primary Subcommands

### Log Management
- `fetchlogs`: Retrieve log files from remote systems
- `logswitch`: Rotate current log files
- `lslogs`: List available log files
- `log`: Parse and display log entries
- `mergefiles`: Combine multiple log files
- `repairlog`: Fix corrupted log files

### Policy Operations
- `fetch`: Download and install security policies
- `defaultgen`: Generate default filter policies
- `sam`: Suspicious Activity Monitoring rule management
- `sam_policy`: Advanced SAM rule operations

### System Control
- `ctl`: Kernel-level firewall control operations
- `hastat`: High availability status monitoring
- `kill`: Terminate CheckPoint processes
- `getifs`: Interface information retrieval

### Advanced Management
- `amw`: Threat Prevention policy management
- `isp_link`: ISP link control for load balancing
- `lichosts`: License host management

## Critical Design Principles

**Debug Mode Best Practice:**
All subcommands support `-d` flag for troubleshooting. When used, redirect output to files due to verbose nature.

**CoreXL Integration:**
The `-i <ID>` option allows targeting specific CoreXL firewall instances for distributed processing environments.

**Error Handling:**
Commands validate targets and provide specific error codes for automation integration.

## Common Usage Patterns

**Policy Installation:**
```bash
fw fetch -f     # Force fetch from management server
fw fetch local  # Load locally stored policy
```

**Log Operations:**
```bash
fw logswitch    # Rotate current logs
fw fetchlogs -f <logfile> <target>  # Retrieve specific logs
```

**System Diagnostics:**
```bash
fw hastat       # Check HA status
fw ctl pstat    # Performance statistics
```

## Connection Potential

Links to:
- [[checkpoint-corexl-architecture]] - CoreXL instance management
- [[checkpoint-policy-installation]] - Policy deployment workflows
- [[checkpoint-log-management]] - Comprehensive logging operations
- [[checkpoint-high-availability]] - HA status and management
- [[checkpoint-sam-rules]] - Suspicious activity monitoring
- [[checkpoint-debugging-methodology]] - Troubleshooting approaches

## Source Quality

- **Primary Source**: CheckPoint R81.20 CLI Reference Guide
- **Credibility Score**: 9/10
- **Validation Method**: Official vendor documentation