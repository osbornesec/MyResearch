---
state: fleeting
type: checkpoint-command-atomic
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-admin-foundation-cliguide
validation-status: verified
command-family: firewall
source-lines: 22789-22950
---

# CheckPoint fw log - Security Audit Analysis

## Command Purpose
Shows content of Security ($FWDIR/log/*.log) or Audit ($FWDIR/log/*.adtlog) log files with comprehensive filtering and formatting options.

## Syntax Pattern
```bash
fw [-d] log [-a] [-b "<start>" "<end>"] [-c <action>] [-f|-t] [-h <origin>] [-i] [-l] [-m {initial|semi|raw}] [-n] [-s "<start>"] [-e "<end>"] [<logfile>]
```

## Key Parameters
- `-a`: Show only Account log entries
- `-b`: Show entries between start and end timestamps
- `-c`: Filter by action (accept, drop, reject, encrypt, decrypt)
- `-f`: Monitor file indefinitely for new entries
- `-h`: Show logs from specific Security Gateway
- `-m`: Log unification mode (initial/semi/raw)
- `-s/-e`: Start/end timestamp filtering

## Security Context
Primary log analysis tool for Security Gateway incident investigation and audit compliance. Provides real-time monitoring capability and comprehensive filtering for security event analysis and forensic investigation.

## Connection Targets
- checkpoint-log-file-management
- checkpoint-security-incident-investigation
- checkpoint-audit-compliance-reporting
- checkpoint-timestamp-filtering-methodology