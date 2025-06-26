---
state: fleeting
type: checkpoint-command-atomic
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-admin-foundation-cliguide
validation-status: verified
command-family: system-management
source-lines: 2034-2151
---

# CheckPoint cpwd_admin - WatchDog Process Management

## Command Purpose
Manages the CheckPoint WatchDog (cpwd) that monitors and automatically restarts critical CheckPoint processes like fwm, fwd, cpd, DAService when they fail.

## Syntax Pattern
```bash
cpwd_admin config <options>    # Configure WatchDog settings
cpwd_admin list <options>      # Show monitored process status
cpwd_admin start <options>     # Start monitored process
cpwd_admin stop <options>      # Stop monitored process
cpwd_admin monitor_list        # Show actively monitored processes
```

## Key Parameters
- **Passive Monitoring**: Restarts only on abnormal termination (MON=N)
- **Active Monitoring**: Regular health checks including deadlock detection (MON=Y)
- **Process Management**: Start, stop, configure individual monitored processes
- **Monitoring Control**: Enable/disable active monitoring globally

## Licensing Context
Essential for maintaining licensed service availability and automated recovery. Ensures continuous operation of critical security services and management components without manual intervention.

## Connection Targets
- [[checkpoint-daemon-monitoring-architecture]]
- [[checkpoint-process-recovery-automation]]
- [[checkpoint-service-availability-management]]
- [[checkpoint-operational-resilience-framework]]