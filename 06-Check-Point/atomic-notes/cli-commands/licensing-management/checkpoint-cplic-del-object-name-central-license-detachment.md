---
state: fleeting
type: checkpoint-command-atomic
created: 2025-06-17
source-credibility: 9
command: cplic del <object name>
---

# CheckPoint cplic del <object name> - Central License Detachment

## Command Purpose
Detaches a Central license from a remote managed Security Gateway or Cluster Member.

## Syntax
```
cplic [-d] del <Object Name> <options>
```

## Parameters
- `-d` - Runs the command in debug mode (use only for troubleshooting)
- `<Object Name>` - Name of the managed object (Security Gateway or Cluster Member)
- `<options>` - Additional detachment parameters

## Usage Context
Used on Management Servers to remotely detach Central licenses from managed Security Gateways and Cluster Members.