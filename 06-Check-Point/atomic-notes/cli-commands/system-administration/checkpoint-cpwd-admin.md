---
state: permanent
type: atomic-note
created: 2025-06-17
source: checkpoint-admin-foundation-cliguide-processed-2025-06-17.md
domain: checkpoint-administration
category: process-management
---

# CheckPoint cpwd_admin - WatchDog Process Management Command

## Core Concept

The `cpwd_admin` utility is the primary interface for managing and monitoring the Check Point WatchDog (cpwd) process, which oversees critical Check Point daemons and automatically restarts them upon failure.

## Key Components

### WatchDog Function
- **Process Monitoring**: Monitors critical processes like fwm, fwd, cpd, DAService
- **Automatic Recovery**: Attempts to restart failed processes based on configuration
- **Logging**: Writes monitoring information to `$CPDIR/log/cpwd.elg`

### Monitoring Types
| Type | Description | Indicator |
|------|-------------|-----------|
| **Passive** | Restarts only on abnormal termination | MON column shows 'N' |
| **Active** | Checks process health at intervals, detects deadlocks/freezing | MON column shows 'Y' |

## Primary Commands

### Essential Operations
- `cpwd_admin list` - Shows status of all monitored processes
- `cpwd_admin monitor_list` - Shows only actively monitored processes
- `cpwd_admin exist` - Checks if WatchDog process is alive
- `cpwd_admin start <process>` - Starts a process under WatchDog monitoring
- `cpwd_admin stop <process>` - Stops a monitored process
- `cpwd_admin kill` - Terminates the WatchDog process itself

### Configuration Management
- `cpwd_admin config -a <param>=<value>` - Adds configuration parameters
- `cpwd_admin config -d <param>` - Deletes configuration parameters
- `cpwd_admin config -p` - Shows user-added configuration
- `cpwd_admin config -r` - Restores default configuration

## Critical Configuration Parameters

### Process Control
- `rerun_mode` (0/1) - Whether to restart failed processes (default: 1)
- `no_limit` (-1,0,>0) - Maximum restart attempts (default: 5)
- `sleep_timeout` (0-3600) - Wait time before restart attempt (default: 60)

### Timing Controls
- `stop_timeout` (>0) - Time to wait for process stop (default: 60)
- `reset_startups` (>0) - Time before resetting startup counter (default: 3600)
- `zero_timeout` (>0) - Wait time after exhausting restart attempts (default: 7200)

## Platform Variations

### Standard Platforms
- Management Server, Security Gateway: `cpwd_admin <command>`
- Scalable Platform (gClish): `cpwd_admin <command>`
- Scalable Platform (Expert): `g_all cpwd_admin <command>`

## Operational Considerations

### Safety Requirements
- Configuration changes require `cpstop` and `cpstart` to take effect
- Active monitoring processes are predefined by Check Point (not user-configurable)
- Configuration stored in `$CPDIR/registry/HKLM_registry.data`

### Troubleshooting Integration
- Process status monitoring for system health assessment
- Automatic restart capability reduces manual intervention
- Log analysis through `cpwd.elg` for failure pattern identification

## Connection Points
- Links to [[checkpoint-process-debugging]] for troubleshooting workflows
- Integrates with [[checkpoint-system-monitoring]] for overall health assessment
- Foundation for [[checkpoint-high-availability]] cluster management