---
state: fleeting
type: checkpoint-command-atomic
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-admin-foundation-cliguide
validation-status: verified
command-family: monitoring
source-lines: 2543-2572
---

# CheckPoint cpwd_admin monitor_list - Active Monitoring

## Command Purpose
Displays status of actively monitored processes that undergo periodic health checks beyond basic process existence verification.

## Syntax Pattern
```
cpwd_admin monitor_list
```

## Output Columns
- **APP**: Application name under active monitoring
- **FILE_NAME**: Monitor file name with PID information
- **NO_MSG_TIMES**: Message count ratio (current/maximum)
- **LAST_MSG_TIME**: Timestamp of last monitoring message

## System Context
Shows only processes with active monitoring enabled (MON=Y in cpwd_admin list). These processes receive periodic health checks to detect deadlocks, frozen states, and functional issues beyond basic process termination.

## Monitoring Behavior
Active monitoring is predefined by CheckPoint for critical services. Users cannot configure which processes receive active monitoring, but can start/stop the active monitoring system entirely.

## Connection Targets
- checkpoint-cpwd-admin-process-monitoring-system
- checkpoint-active-monitoring-framework
- checkpoint-process-health-diagnostics