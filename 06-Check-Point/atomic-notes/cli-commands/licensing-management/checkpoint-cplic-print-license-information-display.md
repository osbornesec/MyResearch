---
state: fleeting
type: checkpoint-command-atomic
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-admin-foundation-cliguide
validation-status: verified
command-family: pki
source-lines: 541-590
---

# CheckPoint cplic print - License Information Display

## Command Purpose
Displays detailed information about installed CheckPoint licenses on local computer, including both Local and Central licenses on Security Gateways and Cluster Members.

## Syntax Pattern
```bash
cplic [-d] print [{-n|-noheader}] [-x] [{-t|-type}] [-F <Output File>] 
[{-p|-preatures}] [-D]
```

## Key Parameters
- `-n|-noheader`: Print licenses without header information
- `-x`: Include license signatures in output
- `-t|-type`: Show license type (Central or Local)
- `-F <Output File>`: Save command output to specified file
- `-p|-preatures`: Display licenses resolved to primitive features
- `-D`: Multi-Domain Server - show only Domain licenses

## Security Context
Essential for license audit and compliance verification. Signature display (`-x`) provides cryptographic validation data necessary for license verification and troubleshooting certificate-based licensing issues.

## Output Format
Standard format displays: Host | Expiration | Features
Extended format includes: Host | Expiration | Signature | Features

## Connection Targets
- License compliance auditing
- Certificate signature validation
- Feature authorization verification
- Multi-Domain Server license tracking