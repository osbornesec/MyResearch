---
state: fleeting
type: atomic-note
created: 2025-06-18
source-credibility: 9
research-context: CheckPoint CLI Administration Commands
validation-status: verified
---

# CheckPoint CPRInstall Revert Command - SecurePlatform Snapshot Restoration

## Core Concept

The `cprinstall revert` command restores a managed Security Gateway running on SecurePlatform OS from a snapshot (backup) file previously saved on that Security Gateway. This command provides system-level rollback capability for CheckPoint security appliances.

## Command Syntax

```bash
cprinstall revert <Object Name> <Snapshot File>
```

## Parameters

| Parameter | Description |
|-----------|-------------|
| `<Object Name>` | The name of the Security Gateway object as configured in SmartConsole |
| `<Snapshot File>` | Name of the SecurePlatform snapshot file to restore from |

## Usage Requirements

### Execution Context
- **Must be run from Expert mode** - Root-level access required
- **Multi-Domain Server Context**: For MDS environments, must execute within the applicable Domain Management Server context:
  ```bash
  mdsenv <IP Address or Name of Domain Management Server>
  ```

### Prerequisites
- Snapshot file must exist on the target Security Gateway
- Use `cprinstall show` command to list available snapshot files
- Proper administrative permissions and CPRID connectivity

## Operational Notes

- **Platform Limitation**: Only works with SecurePlatform OS (legacy CheckPoint OS)
- **Snapshot Verification**: Always verify snapshot file availability using `cprinstall show` before revert operation
- **System Impact**: Complete system restoration - all configurations will revert to snapshot state
- **Downtime Required**: Gateway will be unavailable during restoration process

## Source Quality

- **Primary Source**: CheckPoint Admin Foundation CLI Guide (processed 2025-06-17)
- **Credibility Score**: 9/10 (Official vendor documentation)
- **Validation Method**: Direct extraction from authoritative technical documentation

## Connection Potential

### Related CheckPoint Commands
- [[checkpoint-cprinstall-snapshot]] - Creating snapshots for restoration
- [[checkpoint-cprinstall-show]] - Listing available snapshot files
- [[checkpoint-cprinstall-delete]] - Managing snapshot file cleanup
- [[checkpoint-expert-mode-commands]] - Expert mode command requirements

### Administrative Workflows
- [[checkpoint-disaster-recovery-procedures]] - System restoration methodologies
- [[checkpoint-multi-domain-management]] - MDS context operations
- [[checkpoint-securplatform-administration]] - SecurePlatform OS management

### Security Operations
- [[checkpoint-configuration-backup-strategies]] - Snapshot planning and management
- [[checkpoint-system-rollback-procedures]] - Recovery operation protocols