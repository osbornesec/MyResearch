---
state: fleeting
type: checkpoint-command-atomic
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-admin-foundation-cliguide
validation-status: verified
command-family: process-management
source-lines: 2572-2620
---

# CheckPoint cpwd_admin start - Process Management

## Command Purpose
Starts a process under WatchDog monitoring with specified path, command syntax, and monitoring parameters.

## Syntax Pattern
```
cpwd_admin start -name <AppName> -path "<FullPath>" -command "<CommandSyntax>" [options]
```

## Key Parameters
- **-name**: Application name as displayed in cpwd_admin list
- **-path**: Full path to executable (with or without environment variables)
- **-command**: Command and arguments to execute
- **-env**: Environment variable inheritance (inherit | specific variables)
- **-slp_timeout**: Sleep timeout override
- **-retry_limit**: Restart attempt limit (number | u for unlimited)

## Example Configurations
- **FWM**: path="$FWDIR/bin/fwm" command="fwm"
- **FWD**: path="/opt/CPsuite-R81.20/fw1/bin/fw" command="fwd"
- **CPD**: path="$CPDIR/bin/cpd" command="cpd"

## System Context
Used for adding custom processes to WatchDog monitoring or restarting failed processes with specific parameters. Critical for service management and high availability.

## Connection Targets
- checkpoint-cpwd-admin-process-monitoring-system
- checkpoint-process-configuration-management
- checkpoint-environment-variable-management