---
state: fleeting
type: checkpoint-command-atomic
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-admin-foundation-cliguide
validation-status: verified
command-family: process-management
source-lines: 2035-2153
---

# CheckPoint cpwd_admin - Process Monitoring System

## Command Purpose
The Check Point WatchDog (cpwd) process monitoring system that invokes and monitors critical CheckPoint daemons and automatically restarts failed processes.

## System Context
Core infrastructure component that ensures high availability of CheckPoint services by providing both passive (restart only on abnormal termination) and active (periodic health checks) monitoring of critical processes including fwm, fwd, cpd, and DAService.

## Key Components
- **Passive Monitoring**: WatchDog restarts process only when it terminates abnormally (MON column shows N)
- **Active Monitoring**: WatchDog checks process status at predefined intervals for deadlocks and frozen states (MON column shows Y)
- **Logging**: Monitoring information written to $CPDIR/log/cpwd.elg

## Essential Operations
- Process status monitoring and automatic restart
- Configuration management for monitoring parameters
- Process lifecycle control (start/stop/kill)
- Monitoring statistics and health reporting

## Connection Targets
- checkpoint-cpwd-admin-config-parameters
- checkpoint-cpwd-admin-list-status-display
- checkpoint-process-management-framework
- checkpoint-high-availability-monitoring