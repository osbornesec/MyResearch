---
state: permanent
type: atomic-note
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-security-commands
validation-status: verified
connections: 3
review-frequency: quarterly
---

# Check Point fw log Command - Security Log Analysis Interface

## Core Concept

The `fw log` command is Check Point's primary tool for viewing and analyzing Security Gateway log files, providing filtered access to both Security ($FWDIR/log/*.log) and Audit ($FWDIR/log/*.adtlog) logs with extensive filtering and formatting options.

## Technical Specifications

**Basic Syntax:**
```bash
fw log [-options] [<Log File>]
```

**Primary Log Types:**
- **Security Logs**: `$FWDIR/log/fw.log` (default)
- **Audit Logs**: `$FWDIR/log/fw.adtlog` (with `-a` parameter)

## Essential Parameters

**Time-Based Filtering:**
- `-s "timestamp"`: Show entries after specified time
- `-e "timestamp"`: Show entries before specified time  
- `-b "start" "end"`: Show entries between timestamps
- `-l`: Show both date and time for each entry

**Action-Based Filtering:**
- `-c <action>`: Filter by specific action (accept, drop, reject, encrypt, decrypt, etc.)

**Display Control:**
- `-f`: Follow mode - monitor active log continuously
- `-t`: Tail mode - show only new entries 
- `-m {initial|semi|raw}`: Unification mode control
- `-q`: Show field header names
- `-g`: Remove field delimiters

## Output Format Structure

Each log entry displays fields in this sequence:
```
HeaderDateHour ContentVersion HighLevelLogKey Uuid SequenceNum Flags Action Origin IfDir InterfaceName LogId ...
```

**Key Fields:**
- **Action**: Connection fate (accept, drop, reject, encrypt, etc.)
- **Origin**: Security Gateway that generated the log
- **src/dst**: Source and destination objects
- **service_id**: Service used for connection inspection

## Operational Context

- **Performance**: Use `-n` and `-p` to disable DNS/port resolution for faster processing
- **Log Rotation**: Works with switched log files created by `fw logswitch`
- **Real-time Monitoring**: `-f` parameter enables continuous log monitoring
- **Troubleshooting**: Essential for security policy validation and incident analysis

## Source Quality
- **Primary Source**: Check Point R81.20 Administration Guide
- **Credibility Score**: 9/10
- **Validation Method**: Official Check Point documentation

## Connection Potential
Links to: [[checkpoint-fw-logswitch]], [[checkpoint-log-analysis-methodology]], [[security-gateway-troubleshooting]]