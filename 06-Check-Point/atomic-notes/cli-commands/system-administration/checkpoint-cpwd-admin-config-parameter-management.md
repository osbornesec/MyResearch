---
state: fleeting
type: checkpoint-command-atomic
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-admin-foundation-cliguide
validation-status: verified
command-family: system-config
source-lines: 2153-2278
---

# CheckPoint cpwd_admin config - Parameter Management

## Command Purpose
Configures Check Point WatchDog operational parameters including restart behavior, timeout values, and process limits.

## Syntax Pattern
```
cpwd_admin config -a <param>=<value> | -d <param> | -p | -r
```

## Key Parameters
- **-a**: Add configuration parameters (no_limit, rerun_mode, sleep_timeout, etc.)
- **-d**: Delete user-defined configuration parameters
- **-p**: Show current WatchDog configuration parameters
- **-r**: Restore default WatchDog configuration

## Critical Configuration Options
- **rerun_mode**: Controls process restart behavior (0=monitor only, 1=restart)
- **no_limit**: Maximum restart attempts (-1=unlimited, 0=never, >0=specific count)
- **sleep_timeout**: Delay before restart attempt (0-3600 seconds, default 60)
- **reset_startups**: Time before resetting startup counter (default 3600 seconds)

## System Context
Configuration changes require cpstop/cpstart to take effect. Parameters stored in $CPDIR/registry/HKLM_registry.data file in Wd_Config section.

## Connection Targets
- checkpoint-cpwd-admin-process-monitoring-system
- checkpoint-registry-configuration-management
- checkpoint-service-restart-procedures