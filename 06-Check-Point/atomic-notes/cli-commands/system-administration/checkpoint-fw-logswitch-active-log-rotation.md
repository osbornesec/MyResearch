---
state: fleeting
type: checkpoint-command-atomic
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-admin-foundation-cliguide
validation-status: verified
command-family: firewall
source-lines: 22952-23025
---

# CheckPoint fw logswitch - Active Log Rotation

## Command Purpose
Switches current active log file by closing, renaming current file and creating new active log with default name for continuous logging operations.

## Syntax Pattern
```bash
fw [-d] logswitch [-audit] [<log_name>] [-h <target>] [{+|-}<log_name>]
```

## Key Parameters
- `-audit`: Switch Audit log file ($FWDIR/log/fw.adtlog)
- `-h <target>`: Switch log on remote computer with SIC trust
- `+<log_name>`: Copy active log from remote to local
- `-<log_name>`: Transfer active log from remote to local
- `<log_name>`: Custom name for switched log file

## Security Context
Essential for log management in continuous security monitoring environments. Enables log archival and analysis without service interruption. Critical for compliance requirements and forensic log preservation.

## Connection Targets
- checkpoint-log-file-management
- checkpoint-sic-trust-communication
- checkpoint-log-compression-methodology
- checkpoint-forensic-log-preservation