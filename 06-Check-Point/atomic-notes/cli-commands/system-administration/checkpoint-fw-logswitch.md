---
state: permanent
type: atomic-note
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-security-administration
validation-status: verified
---

# Check Point fw logswitch - Active Log File Rotation Command

## Core Concept

The `fw logswitch` command rotates Check Point's active log files by closing the current active log, renaming it with a timestamp, and creating a new active log file with the default name. This command applies to both Security logs (fw.log) and Audit logs (fw.adtlog).

## Technical Operation

The command performs three sequential operations:
1. **Closes** the current active log file
2. **Renames** the current active log file with timestamp format (YYYY-MM-DD_HHMMSS)
3. **Creates** a new active log file with the default name

## Command Syntax and Options

### Basic Security Log Rotation
```bash
fw logswitch
```
Output: `Log file has been switched to: 2018-06-13_182359.log`

### Audit Log Rotation
```bash
fw logswitch -audit
```
Output: `Log file has been switched to: 2018-06-13_185711.adtlog`

### Remote Gateway Log Rotation
```bash
fw logswitch -h <IP Address or Hostname>
```
This switches logs on a remote gateway and can copy the switched log to the management server.

## Critical Prerequisites for Active Log Handling

**Important**: Active log files (fw.log and fw.adtlog) cannot be directly fetched or merged. The `fw logswitch` command must be executed first to rotate active logs before they can be:
- Fetched with `fw fetchlogs`
- Merged with `fw mergefiles`
- Processed by other log management commands

## Integration with Log Management Workflow

This command is essential for:
- **Log archival processes** - rotating logs before backup
- **Remote log collection** - switching logs before fetching from gateways
- **Log file merging** - ensuring active logs are rotated before merge operations
- **Forensic analysis** - preserving current state while creating new active logs

## Connection Potential

Links to: [[checkpoint-fw-fetchlogs]], [[checkpoint-fw-mergefiles]], [[checkpoint-log-management-workflow]], [[checkpoint-security-gateway-administration]]