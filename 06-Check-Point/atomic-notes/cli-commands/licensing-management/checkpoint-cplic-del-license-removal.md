---
state: fleeting
type: checkpoint-command-atomic
created: 2025-06-17
source-credibility: 9
command: cplic del
---

# CheckPoint cplic del - License Removal

## Command Purpose
Deletes a Check Point license on a host, including unwanted evaluation, expired, and other licenses.

## Syntax
```
cplic [-d] del <options>
```

## Parameters
- `-d` - Runs the command in debug mode (use only for troubleshooting)
- `<options>` - Various deletion options for specific license types

## Usage Context
Used when you need to remove unwanted, expired, or invalid licenses from a CheckPoint system to clean up licensing configurations.