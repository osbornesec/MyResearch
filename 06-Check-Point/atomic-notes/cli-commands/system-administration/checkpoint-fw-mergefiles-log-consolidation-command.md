---
state: fleeting
type: atomic-note
created: 2025-06-18
source-credibility: 9
research-context: checkpoint-cli-commands
validation-status: verified
---

# CheckPoint FW Mergefiles - Log File Consolidation Command

## Core Concept
The `fw mergefiles` command consolidates multiple CheckPoint Security or Audit log files into a single unified log file, enabling efficient log analysis and management across time periods or multiple sources.

## Command Syntax
```bash
fw [-d] mergefiles {-h | -help}
fw [-d] mergefiles [-r] [-s] [-t <Time Conversion File>] <Name of Log File 1> <Name of Log File 2> ... <Name of Log File N> <Name of Merged Log File>
```

## Core Parameters
- **-d**: Debug mode for troubleshooting
- **-r**: Remove duplicate entries during merge
- **-s**: Sort merged file by timestamp field
- **-t <Time Conversion File>**: Handle timezone differences between log servers
- **-h | -help**: Display built-in usage information

## Log File Types Supported
- **Security logs**: `$FWDIR/log/*.log` files
- **Audit logs**: `$FWDIR/log/*.adtlog` files

## Critical Safety Requirements
- **Never merge active log files** (`fw.log` or `fw.adtlog`)
- **Must use `fw logswitch` first** to rotate active logs before merging
- **Unifies records with same Unique-ID (UID)** across multiple files
- **2GB file size limit** - automatically creates multiple files if exceeded

## Usage Example
```bash
# Switch active log first
fw logswitch

# Merge multiple security logs
fw mergefiles -s $FWDIR/2019-09-07_000000.log $FWDIR/2019-09-09_000000.log $FWDIR/2019-09-10_000000.log /var/log/2019-Sep-Merged.log
```

## File Size Limitations
- **Maximum merged file size**: 2GB
- **Auto-splitting behavior**: Creates numbered files (_1.log, _2.log, etc.)
- **Path length limit**: 230 characters maximum for file names

## Source Quality
- **Primary Source**: CheckPoint Admin Foundation CLI Guide (processed 2025-06-17)
- **Credibility Score**: 9/10 (Official vendor documentation)
- **Validation Method**: Direct extraction from authoritative CheckPoint documentation

## Connection Potential
- Links to log management workflows and security monitoring practices
- Connects with other `fw` log commands: `fw logswitch`, `fw lslogs`, `fw repairlog`
- Relates to audit compliance and forensic analysis procedures
- Integrates with SIEM and log analysis automation systems