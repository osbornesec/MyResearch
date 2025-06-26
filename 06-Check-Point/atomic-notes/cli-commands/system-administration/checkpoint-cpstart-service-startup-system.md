---
state: fleeting
type: checkpoint-command-atomic
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-admin-foundation-cliguide
validation-status: verified
command-family: system-config
source-lines: 1950-1960
---

# CheckPoint cpstart - Service Startup System

## Command Purpose
Manually starts all CheckPoint processes and applications in the correct dependency order for system initialization.

## Syntax Pattern
```
cpstart [-fwflag -default | -proc | -driver]
```

## Key Options
- **-fwflag -default**: Start processes and load Default Filter policy (defaultfilter)
- **-fwflag -proc**: Start CheckPoint processes only
- **-fwflag -driver**: Load CheckPoint kernel modules only

## System Context
Essential system initialization command that brings CheckPoint services online after system boot, maintenance, or emergency shutdown. Ensures proper service startup sequence and dependency resolution.

## Startup Sequence
Systematically starts core daemons, loads kernel modules, initializes Software Blades, and establishes inter-process communication channels required for full CheckPoint functionality.

## Usage Scenarios
- System boot initialization
- Recovery after cpstop or emergency shutdown
- Service restoration after maintenance
- Selective component startup with specific flags

## Connection Targets
- checkpoint-service-dependency-framework
- checkpoint-kernel-module-loading
- checkpoint-system-initialization-procedures