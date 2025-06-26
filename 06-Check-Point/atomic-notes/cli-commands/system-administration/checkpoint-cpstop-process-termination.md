---
state: fleeting
type: checkpoint-command-atomic
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-admin-foundation-cliguide
validation-status: verified
command-family: system-management
source-lines: 1962-1975
---

# CheckPoint cpstop - Process Termination Command

## Command Purpose
Manually stops all CheckPoint processes and applications, terminating the complete security software stack for maintenance or troubleshooting.

## Syntax Pattern
```bash
cpstop
```

## Key Parameters
- No parameters required - performs comprehensive process shutdown
- Excludes cprid daemon (managed separately)
- Terminates all security services and management components

## Licensing Context
Critical for maintenance windows, system updates, and troubleshooting procedures. Ensures clean shutdown of all licensed security services before system maintenance or configuration changes.

## Connection Targets
- [[checkpoint-cpstart-process-initialization]]
- [[checkpoint-cpwd-admin-watchdog-process-management]]
- [[checkpoint-maintenance-procedures]]
- [[checkpoint-service-lifecycle-management]]