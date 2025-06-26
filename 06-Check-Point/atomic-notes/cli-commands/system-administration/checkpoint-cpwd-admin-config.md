---
state: permanent
type: atomic-note
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-watchdog-administration
validation-status: verified
review-frequency: monthly
connections: 4
---

# Check Point WatchDog Configuration Management

## Core Concept

The `cpwd_admin config` command configures Check Point WatchDog process monitoring parameters, allowing administrators to control restart behavior, process limits, timeouts, and monitoring thresholds for system reliability management.

## Primary Function

Modifies WatchDog configuration parameters that control how the Check Point WatchDog daemon monitors, restarts, and manages Check Point processes across Security Gateways, Management Servers, and VSX environments.

## Command Syntax

```bash
cpwd_admin config -h|-a <param>=<value>|-d <param>|-p|-r
```

## Key Configuration Parameters

### Process Restart Control
- **rerun_mode**: Enable/disable automatic process restart (0=monitor only, 1=restart)
- **no_limit**: Maximum restart attempts (-1=unlimited, 0=never, >0=specific count)
- **sleep_timeout**: Delay before restart attempt (0-3600 seconds, default 60)

### Process Management Limits
- **num_of_procs**: Maximum monitored processes (30-2000, default 2000)
- **stop_timeout**: Process termination wait time (seconds, default 60)
- **reset_startups**: Counter reset interval (seconds, default 3600)

### VSX-Specific Configuration
- **default_ctx**: Default context assignment for VSX processes
- **display_ctx**: Show CTX column in process listings (0=hide, 1=show)

## Critical Operations

**Add Configuration**: `-a param1=value1 param2=value2`
**Delete Configuration**: `-d param1 param2`
**Show Current**: `-p`
**Restore Defaults**: `-r`

## System Impact Requirements

Configuration changes require full Check Point service restart using `cpstop` followed by `cpstart` to take effect. Parameters are stored in `$CPDIR/registry/HKLM_registry.data` file.

## Connection Potential

Links to process monitoring, system reliability, VSX management, and Check Point service orchestration concepts.