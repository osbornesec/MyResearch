---
state: permanent
type: atomic-note
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-license-management
validation-status: verified
connections: 3
review-frequency: monthly
---

# CheckPoint CPLIC Print Command - License Display

## Core Concept

The `cplic print` command displays details of installed Check Point licenses on the local Check Point computer, showing host information, expiration dates, signatures, and licensed features for both Local and Central licenses.

## Command Syntax

```bash
cplic print {-h | -help}
cplic [-d] print [{-n | -noheader}] [-x] [{-t | -type}] [-F <Output File>] [{-p | -preatures}] [-D]
```

## Key Parameters

- **`-x`**: Displays license signature strings (extended format)
- **`-p | -preatures`**: Shows primitive features in detailed format
- **`-n | -noheader`**: Suppresses column headers in output
- **`-F <Output File>`**: Saves command output to specified file
- **`-d`**: Debug mode (use only for troubleshooting)

## Platform Compatibility

- Management Server (Gaia Clish/Expert mode)
- Security Gateway (Gaia Clish/Expert mode)  
- Cluster Member (Gaia Clish/Expert mode)
- Scalable Platform Security Group (Gaia gClish/Expert mode)

## Output Format Examples

**Standard Output:**
```
Host           Expiration    Features
192.168.3.28   25Aug2019     CPMP-XXX    CK-XXXXXXXXXXX
```

**Extended Output (-x flag):**
```
Host           Expiration    Signature                          Features
192.168.3.28   25Aug2019     [signature-string]                 CPMP-XXX
```

## Administrative Context

- Essential for license inventory and compliance verification
- Signature strings required for license deletion operations (`cplic del`)
- Shows both Local and Central licenses on Security Gateways/Cluster Members
- Critical for troubleshooting license-related issues

## Connection Potential

Links to license management workflows, signature-based operations, and Check Point administrative procedures.