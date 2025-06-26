---
state: fleeting
type: atomic-note
created: 2025-06-18
source-credibility: 9
research-context: CheckPoint CLI command documentation
validation-status: verified
---

# CheckPoint cprinstall delete Command - Snapshot File Deletion

## Core Concept
The `cprinstall delete` command removes snapshot (backup) files from managed Security Gateways running SecurePlatform OS, providing administrators with the ability to clean up obsolete backup files remotely from the management server.

## Command Syntax
```bash
cprinstall delete <Object Name> <Snapshot File>
```

## Parameters
- **Object Name**: The name of the Security Gateway object as configured in SmartConsole
- **Snapshot File**: The specific name of the snapshot (backup) file on SecurePlatform OS to be deleted

## Operational Requirements
- **Expert Mode Required**: Command must be executed from Expert mode on the management server
- **Multi-Domain Context**: On Multi-Domain Servers, must run in the context of the applicable Domain Management Server using: `mdsenv <IP Address or Name of Domain Management Server>`
- **Target Platform**: Only works with Security Gateways running SecurePlatform OS

## Usage Example
```bash
[Mapes1886007] # cprinstall delete MyDB Snapshot2Map2017
```

## Research Context
This command is part of the comprehensive CheckPoint remote installation and management toolkit, specifically designed for snapshot lifecycle management on SecurePlatform-based Security Gateways.

## Source Quality
- **Primary Source**: CheckPoint Admin Foundation CLI Guide (Official Documentation)
- **Credibility Score**: 9/10
- **Validation Method**: Official vendor documentation

## Connection Potential
- [[checkpoint-cprinstall-snapshot]] - Related snapshot creation command
- [[checkpoint-cprinstall-show]] - Command to list available snapshots
- [[checkpoint-cprinstall-revert]] - Snapshot restoration functionality
- [[checkpoint-expert-mode-requirements]] - Expert mode context for command execution
- [[checkpoint-multi-domain-management]] - Multi-domain server operational context
- [[checkpoint-secureplatform-os]] - Platform-specific requirements and limitations