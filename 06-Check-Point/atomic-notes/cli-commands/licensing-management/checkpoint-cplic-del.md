---
state: permanent
type: atomic-note
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-license-management
validation-status: verified
connections: 3
review-frequency: monthly
---

# CheckPoint cplic del Command License Deletion

## Core Concept

The `cplic del` command deletes Check Point licenses on a host, including unwanted evaluation, expired, and other licenses. It can operate on both local computers and remote managed computers.

## Command Syntax

```bash
cplic del {-h | -help}
cplic [-d] del [-F <Output File>] <Signature> <Object Name>
```

## Execution Environment

Can be run on:
- Management Server / Security Gateway / Cluster Member in Gaia Clish or Expert mode
- Scalable Platform Security Group in Gaia gClish or Expert mode

## Key Parameters

- **-d**: Runs command in debug mode (use only for troubleshooting)
- **-F <Output File>**: Specifies output file for results
- **<Signature>**: License signature identifier for deletion
- **<Object Name>**: Name of Security Gateway/Cluster Member object as configured in SmartConsole

## Operational Context

- Removes licenses directly from the host system
- Different from `cplic db_rm` which removes from license repository only
- Can target specific licenses by signature
- Supports remote license deletion through object name specification

## Connection Potential

Links to:
- [[checkpoint-cplic-command-framework]]
- [[checkpoint-license-repository-management]]
- [[checkpoint-central-license-detachment-workflow]]