---
state: permanent
type: atomic-note
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-cli-commands
validation-status: verified
domain: checkpoint-administration
---

# CheckPoint fw fetchlogs Command

## Core Concept

The `fw fetchlogs` command retrieves Security log files (`$FWDIR/log/*.log*`) or Audit log files (`$FWDIR/log/*.adtlog*`) from specified CheckPoint computers, compressing them during transfer and renaming them with the source gateway identifier.

## Command Syntax

```bash
fw [-d] fetchlogs [-f <Name of Log File 1>] [-f <Name of Log File 2>]... [-f <Name of Log File N>] <Target>
```

## Key Behaviors

### File Naming Convention
- Fetched files are renamed as: `<Gateway_Object_Name>__<Original_Log_Name>.log`
- Example: `MyGW__2019-06-01_000000.log`
- Creates associated pointer files (.logaccount_ptr, .loginitial_ptr, .logptr)

### Compression
- Files are compressed using gzip (RFC 1950-1952) during transfer
- Uses LZ77 algorithm variation
- Binary data remains uncompressed, text data (usernames, URLs) is compressed
- Compression ratio varies and is unpredictable

### Best Practice Workflow
```bash
# 1. Switch logs on target gateway
fw logswitch [-audit] [-h <IP Address or Hostname>]

# 2. Fetch the rotated log file
fw fetchlogs -f <Log File Name> <IP Address or Hostname>
```

## Parameters

| Parameter | Description |
|-----------|-------------|
| `-d` | Debug mode - redirect output to file or use script command |
| `-f <Log File Name>` | Specify log file name to fetch (multiple -f options allowed) |
| `<Target>` | IP address or hostname of CheckPoint computer |

## Connection Links

- `[[checkpoint-fw-lslogs]]` - List available log files before fetching
- `[[checkpoint-fw-logswitch]]` - Rotate logs before fetching
- `[[checkpoint-log-management-workflow]]` - Overall log management process
- `[[checkpoint-compression-algorithms]]` - File compression details
- `[[checkpoint-expert-mode-commands]]` - CLI command context

## Source Quality

- **Primary Source**: CheckPoint R81.20 Administration Guide
- **Credibility Score**: 9/10 (Official vendor documentation)
- **Validation Method**: Direct extraction from official CLI reference