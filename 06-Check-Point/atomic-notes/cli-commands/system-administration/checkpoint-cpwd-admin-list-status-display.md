---
state: fleeting
type: checkpoint-command-atomic
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-admin-foundation-cliguide
validation-status: verified
command-family: monitoring
source-lines: 2490-2543
---

# CheckPoint cpwd_admin list - Status Display

## Command Purpose
Displays comprehensive status information for all WatchDog monitored processes including execution state, restart counts, and monitoring mode.

## Syntax Pattern
```
cpwd_admin list [-full] [-ctx <VSID>]
```

## Key Parameters
- **-full**: Shows verbose output with additional configuration details
- **-ctx <VSID>**: VSX context specification for Virtual System processes

## Status Column Meanings
- **APP**: WatchDog name of monitored process
- **PID**: Process ID of monitored process
- **STAT**: E (executing) or T (terminated)
- **#START**: Number of times WatchDog started the process
- **START_TIME**: Last process start timestamp
- **MON**: Y (active monitoring) or N (passive monitoring)
- **COMMAND**: Command used to start the process

## System Context
Primary diagnostic tool for CheckPoint process health assessment and troubleshooting. Essential for understanding system state and identifying failing services.

## Connection Targets
- checkpoint-cpwd-admin-process-monitoring-system
- checkpoint-process-troubleshooting-methodology
- checkpoint-vsx-context-management