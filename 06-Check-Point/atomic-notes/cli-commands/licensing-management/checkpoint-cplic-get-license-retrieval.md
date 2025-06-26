---
state: fleeting
type: checkpoint-command-atomic
created: 2025-06-17
source-credibility: 9
command: cplic get
---

# CheckPoint cplic get - License Retrieval

## Command Purpose
Retrieves all licenses from managed Security Gateways and Cluster Members into the license repository on the Management Server.

## Syntax
```
cplic [-d] get <options>
```

## Parameters
- `-d` - Runs the command in debug mode (use only for troubleshooting)
- `<options>` - Retrieval options for specific managed objects

## Usage Context
Used on Management Servers to collect licensing information from all managed Security Gateways and Cluster Members into the central license repository.