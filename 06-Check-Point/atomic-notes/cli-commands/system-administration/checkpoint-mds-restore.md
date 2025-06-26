---
state: fleeting
type: atomic-note
created: 2025-06-18
source-credibility: 9
research-context: checkpoint-multi-domain-management
validation-status: verified
source: Check Point Admin Foundation CLI Guide R81.20
---

# CheckPoint mds_restore Multi-Domain Server Backup Restoration

## Core Concept
The mds_restore command restores a Multi-Domain Server or Multi-Domain Log Server from backups created with the mds_backup command, requiring exact version matching between backup source and restoration target.

## Syntax
```bash
./mds_restore <backup_file>
```

## Parameters
- **backup_file**: Path to the backup file created by mds_backup command
- **No additional options**: Command takes only the backup file as parameter

## Version Compatibility Requirements
- **Exact version matching**: Restore must occur on server with identical software version as backup source
- **Jumbo Hotfix matching**: Jumbo Hotfix Accumulator Take version must match exactly
- **Critical constraint**: Version mismatch will prevent successful restoration

## Usage Context
- **Multi-Domain Server restoration**: Primary use for restoring MDS infrastructure
- **Multi-Domain Log Server restoration**: Applies to Multi-Domain Log Server recovery
- **High Availability environments**: All HA servers should be restored simultaneously
- **Disaster recovery**: Essential component of MDS disaster recovery procedures

## Execution Prerequisites
1. **Expert mode access**: Must be executed from Expert mode command line
2. **Backup file location**: Navigate to directory containing backup file
3. **Version verification**: Confirm target server matches backup source version
4. **Administrative coordination**: Ensure no SmartConsole changes during operation

## Best Practices
- **Simultaneous restoration**: Restore all Multi-Domain Servers at same time in multi-MDS environments
- **IP address configuration**: Configure new IP address if restoring to different server
- **HA coordination**: Collect and restore backups from all HA environment servers simultaneously
- **Change management**: Prevent administrative changes during restoration process

## Connection Potential
Links to [[checkpoint-mds-backup]], [[multi-domain-management]], [[checkpoint-disaster-recovery]], [[checkpoint-version-management]], [[checkpoint-high-availability]]