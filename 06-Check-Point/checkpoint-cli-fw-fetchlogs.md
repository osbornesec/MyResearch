---
state: fleeting
type: research-atomic
created: 2025-06-17
source-credibility: 9
research-context: "Check Point CLI command extraction from administrative foundation guide"
validation-status: verified
source: "Check Point CLI Reference Guide R81.20"
domain: "Log Management"
---

# Check Point CLI Command fw fetchlogs

## Core Concept

Retrieves Security log files (*.log*) and Audit log files (*.adtlog*) from specified Check Point computers, moving files from remote systems to local storage.

## Syntax and Parameters

```bash
fw [-d] fetchlogs [-f <Name of Log File 1>] [-f <Name of Log File 2>]... [-f <Name of Log File N>] <Target>
```

## Key Parameters

- `-d`: Debug mode (redirect output to file recommended)
- `-f <Log File Name>`: Specify log file to fetch (supports wildcards)
- `<Target>`: Remote Check Point computer with established SIC trust

## File Movement Behavior

**Source Location**: `$FWDIR/log/` directory on remote Check Point computer
**Destination**: `$FWDIR/log/` directory on local computer
**Operation**: MOVES files (deletes from source after successful copy)

## Wildcard Support

Supports wildcards in filenames:
- `*` and `?` patterns allowed
- Must enclose wildcards in quotes: `"2017-0?-*.log"`
- Multiple files using multiple `-f` parameters

## File Renaming Convention

Retrieved files renamed as: `<ComputerName>__<OriginalFileName>`
Example: `MyGW__2019-06-01_000000.log`

## Active Log File Limitation

Cannot fetch active log files (`fw.log` or `fw.adtlog`). Requires:
1. Log switch: `fw logswitch [-audit] [-h <IP Address>]`
2. Fetch rotated file: `fw fetchlogs -f <Log File Name> <Target>`

## Target Specification

- **From Management Server**: Object name or main IP as configured in SmartConsole
- **From Security Gateway**: Main IP address as configured in SmartConsole

## Included Files

Transfers log files plus applicable log pointer files for complete log data integrity.

## Connection Potential

Links to:
- Log management procedures
- SIC trust relationships
- Log rotation and archival
- Security audit procedures
- SmartConsole configuration
- Remote log collection workflows
- Log file analysis techniques