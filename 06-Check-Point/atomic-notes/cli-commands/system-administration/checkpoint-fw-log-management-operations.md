---
state: fleeting
type: checkpoint-command-atomic
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-admin-foundation-cliguide
validation-status: verified
command-family: diagnostics
source-lines: 3000-3100
---

# CheckPoint fw - Log Management Operations

## Command Purpose
Comprehensive log file management system for Security and Audit logs including fetching, switching, merging, and repair operations.

## Syntax Pattern
```
fw [-d] {fetchlogs|logswitch|lslogs|mergefiles|repairlog} <options>
```

## Key Operations
- **fetchlogs**: Transfer log files from remote CheckPoint computers
- **logswitch**: Rotate current active log files (fw.log, fw.adtlog)
- **lslogs**: List available log files on local or remote systems
- **mergefiles**: Combine multiple log files into single file
- **repairlog**: Rebuild pointer files for corrupted logs

## Log File Types
- **Security Logs**: $FWDIR/log/*.log* files
- **Audit Logs**: $FWDIR/log/*.adtlog* files
- **Pointer Files**: Associated indexing files for log navigation

## System Context
Essential for log management, troubleshooting, and compliance reporting. Critical for maintaining log integrity and enabling efficient log analysis across distributed CheckPoint environments.

## Connection Targets
- checkpoint-log-file-architecture
- checkpoint-log-rotation-management
- checkpoint-distributed-logging-system