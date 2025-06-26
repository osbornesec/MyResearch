---
state: fleeting
type: checkpoint-command-atomic
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-admin-foundation-cliguide
validation-status: verified
command-family: diagnostics
source-lines: 3100-3200
---

# CheckPoint fw fetchlogs - Log Transfer System

## Command Purpose
Transfers Security and Audit log files from remote CheckPoint computers to local system, removing files from source after successful transfer.

## Syntax Pattern
```
fw [-d] fetchlogs [-f <LogFileName>] <Target>
```

## Key Parameters
- **-f <LogFileName>**: Specific log file name (supports wildcards * and ?)
- **<Target>**: Remote CheckPoint computer with established SIC trust
- Multiple -f parameters allowed for multiple files

## Transfer Behavior
- **Source**: Moves (deletes) files from $FWDIR/log/ on remote system
- **Destination**: Places files in $FWDIR/log/ on local system
- **Renaming**: Adds computer name prefix (e.g., MyGW__2019-06-01_000000.log)
- **Limitations**: Cannot fetch active log files (fw.log, fw.adtlog)

## Active Log Handling
1. Perform log switch: `fw logswitch [-audit] [-h <Target>]`
2. Fetch rotated file: `fw fetchlogs -f <LogFileName> <Target>`

## Connection Targets
- checkpoint-log-rotation-management
- checkpoint-sic-trust-authentication
- checkpoint-distributed-log-collection