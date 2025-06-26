---
state: fleeting
type: atomic-note
created: 2025-06-18
source-credibility: 9
research-context: checkpoint-multi-domain-management
validation-status: verified
source: Check Point CLI Reference Guide R81.20
---

# CheckPoint mds_backup Multi-Domain Server Backup Command

## Core Concept
The mds_backup command performs comprehensive backup operations for Check Point Multi-Domain Servers, creating a complete archive of binaries, databases, and configuration data using gtar and dump utilities, with output stored as timestamped tar files.

## Command Syntax
```bash
mds_backup -h
mds_backup [-b] [-d <Target Directory>] [-ds] [-l] [-mask] [-s] [-v] [-x]
```

## Key Parameters
- **-h**: Display help text and usage information
- **-b**: Batch mode execution without interactive prompts
- **-d <Target Directory>**: Specify output directory (defaults to current directory)
- **-ds**: Include domain-specific backup options
- **-l**: Include log files in backup operation
- **-mask**: Apply masking to sensitive data during backup
- **-s**: Create snapshot-based backup
- **-v**: Enable verbose output during backup process
- **-x**: Exclude specific components from backup

## Operational Requirements
- **Privileges**: Requires Multi-Domain Superuser privileges for execution
- **Working directory**: Must run from location outside product directory tree to avoid circular references
- **Consistency**: All High Availability servers must be backed up simultaneously
- **Administrative coordination**: No SmartConsole changes during backup operation

## Backup Output Format
- **File naming**: Combines backup date and time (e.g., 13Sep2015-141437.mdsbk.tar)
- **Content**: Single tar archive containing all databases and configuration data
- **Location**: Stored in specified target directory or current working directory
- **Portability**: Includes mds_restore and gtar binaries for restoration

## Best Practices and Limitations
- **Log switching**: Perform log switch before backup to ensure consistency
- **Active logs**: Excludes active security logs (*.log) and audit logs (*.adtlog) to prevent inconsistencies
- **External storage**: Copy backup files to external storage after completion
- **Version matching**: Restoration requires identical software version and hotfix level

## Connection Potential
Links to [[checkpoint-mds-restore]], [[multi-domain-management-backup]], [[checkpoint-high-availability-backup]], [[database-backup-strategies]], [[checkpoint-log-management]]