---
state: fleeting
type: checkpoint-command-atomic
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-admin-foundation-cliguide
validation-status: verified
command-family: system-config
source-lines: 1950-1965
---

# CheckPoint cpstop - Service Shutdown System

## Command Purpose
Manually stops all CheckPoint processes and applications in the correct dependency order for graceful system shutdown.

## Syntax Pattern
```
cpstop
```

## System Context
Essential maintenance command that gracefully terminates all CheckPoint services while preserving system integrity and preventing data corruption during shutdown sequences.

## Shutdown Sequence
Systematically stops Software Blades, terminates core daemons, and unloads kernel modules in reverse dependency order to ensure clean service termination.

## Usage Scenarios
- System maintenance preparation
- Emergency service shutdown
- Configuration change preparation
- Pre-reboot service cleanup

## Exclusions
Does not affect cprid daemon (use dedicated cprid command). For stopping specific processes, refer to sk97638 procedures.

## Connection Targets
- checkpoint-service-dependency-framework
- checkpoint-maintenance-procedures
- checkpoint-graceful-shutdown-protocols