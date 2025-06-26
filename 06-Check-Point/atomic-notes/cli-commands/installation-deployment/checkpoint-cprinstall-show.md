---
state: fleeting
type: atomic-note
created: 2025-06-18
source-credibility: 9
research-context: checkpoint-cli-commands
validation-status: verified
---

# CheckPoint cprinstall show - SecurePlatform Snapshot File Display

## Core Concept

The `cprinstall show` command displays all snapshot (backup) files stored on a managed Security Gateway running SecurePlatform OS. This command provides visibility into available backup files that can be used for system recovery operations.

## Command Syntax

```bash
cprinstall show <Object Name>
```

## Parameters

- **Object Name**: The name of the Security Gateway object as configured in SmartConsole

## Prerequisites and Execution Context

- Must be executed from Expert mode
- On Multi-Domain Server environments, must run in the context of the applicable Domain Management Server using: `mdsenv <IP Address or Name of Domain Management Server>`
- Requires administrative privileges on the Security Management Server

## Usage Example

```bash
[Expert@MGM-T]# cprinstall show GW1
GU_backup.tsg
[Expert@MGM-T]#
```

In this example:
- `GW1` is the Security Gateway object name
- `GU_backup.tsg` is the snapshot file found on the gateway

## Related Operations

This command is typically used in conjunction with:
- `cprinstall snapshot` - Creates new snapshot files
- `cprinstall revert` - Restores system from snapshot files
- `cprinstall delete` - Removes snapshot files

## Source Quality

- **Primary Source**: CheckPoint Admin Foundation CLI Guide (processed 2025-06-17)
- **Credibility Score**: 9/10 (Official CheckPoint documentation)
- **Validation Method**: Direct extraction from official CLI reference

## Connection Potential

Links to existing vault concepts:
- CheckPoint CLI command framework
- SecurePlatform snapshot management
- Security Gateway administration
- Backup and recovery procedures
- Multi-Domain Server operations