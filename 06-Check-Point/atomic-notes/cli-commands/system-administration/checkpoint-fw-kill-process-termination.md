---
state: fleeting
type: checkpoint-command-atomic
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-admin-foundation-cliguide
validation-status: verified
command-family: process-management
source-lines: 3015-3041
---

# CheckPoint fw kill - Process Termination

## Command Purpose
Forcibly terminates specified CheckPoint processes using configurable signals for emergency process management.

## Syntax Pattern
```
fw [-d] kill [-t <SignalNumber>] <ProcessName>
```

## Key Parameters
- **-t <SignalNumber>**: Specific signal to send (default: Signal 15 SIGTERM)
- **<ProcessName>**: CheckPoint process name (visible in ps auxwf output)
- **-d**: Debug mode for troubleshooting

## Signal Options
- **SIGTERM (15)**: Default graceful termination signal
- **SIGKILL (9)**: Immediate forced termination
- **See kill -l**: For complete signal list and numbers

## Critical Warning
Ensure killed processes are restarted manually or automatically. Improper use can destabilize CheckPoint services. Refer to sk97638 for process restart procedures.

## System Context
Emergency tool for terminating unresponsive or problematic CheckPoint processes when normal shutdown procedures fail. Essential for system recovery and troubleshooting.

## Connection Targets
- checkpoint-process-management-framework
- checkpoint-signal-handling-system
- checkpoint-emergency-recovery-procedures