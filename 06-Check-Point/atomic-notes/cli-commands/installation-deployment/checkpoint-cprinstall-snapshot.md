---
state: fleeting
type: atomic-note
created: 2025-06-18
source-credibility: 9
research-context: CheckPoint CLI command documentation
validation-status: verified
---

# CheckPoint CLI cprinstall snapshot - SecurePlatform backup creation command

## Core Concept
The `cprinstall snapshot` command creates a snapshot (backup) on a managed Security Gateway running SecurePlatform OS and saves it locally on that Security Gateway.

## Command Details

### Syntax
```bash
cprinstall snapshot <Object Name> <Snapshot File>
```

### Parameters
- **Object Name**: The name of the Security Gateway object as configured in SmartConsole
- **Snapshot File**: Name of the SecurePlatform snapshot file to create

### Prerequisites and Notes
- Must be executed from Expert mode
- Only works on Security Gateways running SecurePlatform OS
- On Multi-Domain Server environments, must run in context of applicable Domain Management Server:
  ```bash
  mdsenv <IP Address or Name of Domain Management Server>
  ```

### Related Commands
- `cprinstall show` - Displays all snapshot files on the managed Security Gateway
- `cprinstall revert` - Restores Security Gateway from a saved snapshot
- `cprinstall delete` - Deletes snapshot files

## Research Context
Essential CheckPoint CLI command for creating system backups on SecurePlatform-based Security Gateways, enabling disaster recovery and system rollback capabilities.

## Source Quality
- **Primary Source**: CheckPoint Admin Foundation CLI Guide (processed 2025-06-17)
- **Credibility Score**: 9/10
- **Validation Method**: Official CheckPoint documentation

## Connection Potential
- Links to checkpoint-securexl-acceleration-patterns-software-optimization
- Connects to checkpoint-clusterxl-dead-timeout-configuration
- Relates to checkpoint-gaia-portal-troubleshooting-methodology
- Associates with checkpoint-multidomain-management-ai-agent-coordination
- Builds on checkpoint-corexl-performance-architecture-framework