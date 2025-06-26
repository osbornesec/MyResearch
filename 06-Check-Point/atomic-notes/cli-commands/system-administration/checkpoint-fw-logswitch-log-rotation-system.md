---
state: fleeting
type: checkpoint-command-atomic
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-admin-foundation-cliguide
validation-status: verified
command-family: diagnostics
source-lines: 3215-3320
---

# CheckPoint fw logswitch - Log Rotation System

## Command Purpose
Rotates active log files by closing current logs, renaming them with timestamps, and creating new active log files for continued logging.

## Syntax Pattern
```
fw [-d] logswitch [-audit] [<SwitchedLogName>] | -h <Target> [[+|-]<SwitchedLogName>]
```

## Key Parameters
- **-audit**: Switch audit log file (fw.adtlog) instead of security log (fw.log)
- **-h <Target>**: Switch logs on remote computer with SIC trust
- **+<Name>**: Copy switched log from remote to local system
- **-<Name>**: Transfer (move) switched log from remote to local system

## Log Rotation Process
1. **Close**: Current active log file closed
2. **Rename**: File renamed with timestamp (YYYY-MM-DD_HHMMSS format)
3. **Create**: New active log file created with default name

## Compression Behavior
Remote log transfers use gzip compression (RFC 1950-1952) with LZ77 algorithm variation. Text data compresses well while binary data remains uncompressed.

## Connection Targets
- checkpoint-log-file-architecture
- checkpoint-remote-log-management
- checkpoint-sic-trust-authentication