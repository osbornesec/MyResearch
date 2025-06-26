---
state: fleeting
type: checkpoint-command-atomic
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-admin-foundation-cliguide
validation-status: verified
command-family: process-management
source-lines: 2640-2700
---

# CheckPoint cpwd_admin stop - Process Termination

## Command Purpose
Stops a WatchDog monitored process using specified termination commands and parameters.

## Syntax Pattern
```
cpwd_admin stop -name <AppName> [-ctx <VSID>] [-path "<FullPath>"] [-command "<CommandSyntax>"] [-env options]
```

## Key Parameters
- **-name**: Application name as shown in cpwd_admin list (FWM, FWD, CPD, CPM)
- **-ctx <VSID>**: VSX Gateway context specification
- **-path**: Full path to executable for stop command
- **-command**: Termination command syntax
- **-env**: Environment variable inheritance configuration

## Example Stop Commands
- **FWM**: path="$FWDIR/bin/fwm" command="fw kill fwm"
- **FWD**: path="/opt/CPsuite-R81.20/fw1/bin/fw" command="fw kill fwd"
- **CPD**: path="$CPDIR/bin/cpd_admin" command="cpd_admin stop"

## System Context
Used for controlled process termination without triggering automatic WatchDog restart. Changes do not survive reboot. Essential for maintenance and troubleshooting operations.

## Connection Targets
- checkpoint-cpwd-admin-process-monitoring-system
- checkpoint-process-lifecycle-management
- checkpoint-maintenance-procedures