---
state: fleeting
type: atomic-note
created: 2025-06-18
source-credibility: 9
research-context: CheckPoint CLI command documentation
validation-status: verified
---

# CheckPoint CLI fw lslogs Command - Log File Listing Tool

## Core Concept
The `fw lslogs` command displays a list of Security log files (`$FWDIR/log/*.log`) and Audit log files (`$FWDIR/log/*.adtlog`) residing on local or remote CheckPoint computers, with filtering, sorting, and extended information capabilities.

## Command Syntax
```bash
fw [-d] lslogs [-f <Name of Log File 1>] [-f <Name of Log File 2>] ... [-f <Name of Log File N>] [-e] [-r] [-s {name | size | stime | etime}] [<Target>]
```

## Parameters

| Parameter | Description |
|---|---|
| `-d` | Debug mode - use only for troubleshooting |
| `-f <Name of Log File>` | Specifies log file name pattern to show (wildcards * and ? supported, must be quoted) |
| `-e` | Extended file list showing Size, Creation Time, Closing Time, and Log File Name |
| `-r` | Reverse sort order (descending) |
| `-s {name\|size\|stime\|etime}` | Sort by: name, size, creation time (default), or closing time |
| `<Target>` | Remote CheckPoint computer (IP address or hostname) |

## Usage Examples

### Basic Usage
```bash
# Show all log files on local computer
fw lslogs

# Show all log files including audit logs
fw lslogs -f "+"

# Show specific date pattern with extended info
fw lslogs -f "2019-06-14*" -f "2019-06-15*" -e

# Sort by name in reverse order
fw lslogs -f "2019-06-14*" -e -s name -r

# Query remote Security Gateway
fw lslogs -f "2019-06-14*" 192.168.3.53
```

### Example Output
Default output format:
```
    Size Log file name
        9KB 2019-06-14_000000.log
       11KB 2019-06-15_000000.log
        9KB fw.log
```

Extended output format:
```
    Size Creation Time Closing Time Log file name
       11KB 14Jun2018 0:00:00 15Jun2018 0:00:00 2019-06-15_000000.log
        9KB 13Jun2018 18:23:59 14Jun2018 0:00:00 2019-06-14_000000.log
```

## Key Features
- **File Pattern Matching**: Supports wildcards for flexible file selection
- **Remote Query**: Can list logs from managed Security Gateways
- **Multiple File Types**: Handles both Security (.log) and Audit (.adtlog) files
- **Sorting Options**: Four different sort criteria with reverse order capability
- **Extended Information**: Optional detailed metadata display

## Source Quality
- **Primary Source**: CheckPoint Admin Foundation CLI Guide
- **Credibility Score**: 9/10
- **Validation Method**: Official vendor documentation

## Connection Potential
Links to other CheckPoint log management commands:
- [[checkpoint-fw-log-command]] - View log file contents
- [[checkpoint-fw-logswitch-command]] - Switch active log files
- [[checkpoint-fw-fetchlogs-command]] - Fetch logs from remote systems
- [[checkpoint-fw-mergefiles-command]] - Merge multiple log files
- [[checkpoint-log-management-workflow]] - Overall log management process