---
state: fleeting
type: checkpoint-command-atomic
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-admin-foundation-cliguide
validation-status: verified
command-family: installation
source-lines: 1619-1642
---

# CheckPoint cprinstall snapshot - Remote Backup Creation

## Command Purpose
Creates a snapshot (backup) on managed Security Gateway running SecurePlatform OS and saves it locally on that gateway for recovery purposes.

## Syntax Pattern
```bash
cprinstall snapshot <Object Name> <Snapshot File>
```

## Key Parameters
- **Object Name**: Security Gateway object name from SmartConsole configuration
- **Snapshot File**: Name for the backup file to be created on the target gateway
- SecurePlatform OS only - not available for Gaia OS

## Licensing Context
Essential for change management and rollback procedures before software installations. Provides recovery capability for SmartUpdate operations and system configuration changes.

## Connection Targets
- [[checkpoint-cprinstall-revert-snapshot-recovery]]
- [[checkpoint-cprinstall-show-snapshot-listing]]
- [[checkpoint-backup-recovery-procedures]]
- [[checkpoint-change-management-workflow]]