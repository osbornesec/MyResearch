---
state: permanent
type: atomic-note
created: 2025-06-17
domain: checkpoint-troubleshooting
source-credibility: 9
validation-status: verified
---

# Check Point Identity Awareness Six-Stage Diagnostic Methodology

## Core Concept

Comprehensive diagnostic approach for Identity Awareness AD Query connectivity issues using escalating validation stages from simple permission checks to complex debug capture analysis.

## Six-Stage Diagnostic Framework

### Stage 1: Permission Verification
- **Domain Administrator Requirements**: Verify user account privileges
- **Custom Permissions**: Apply sk93938 (Windows 2008+) or sk43874 (Windows 2003-) for non-admin accounts
- **Configuration Compliance**: Ensure exact permission implementation per documented procedures

### Stage 2: Tool-Based Connectivity Testing
- **Wbemtest (Windows-side)**: WMI permissions and connectivity validation per sk91040
- **test_ad_connectivity (Gateway-side)**: LDAP and WMI connectivity testing per sk100406
- **Error Code Analysis**: NTSTATUS value interpretation (0xC0000022 = Access Denied, 0x00000102 = Timeout)

### Stage 3: Domain Controller Status Monitoring
```bash
adlog a dc
```
Real-time connectivity status for all configured domain controllers.

### Stage 4: Manual LDAP Query Validation
```bash
ldapsearch -h DC_IP -D "Full_DN_User" -w "Password" -b "Base_DN" "Search_Filter"
```
Direct LDAP connectivity and authentication verification.

### Stage 5: Live Debug Capture
```bash
# Debug initialization
pdp d rotate
adlog a d on
adlog a d extended
pdp debug on
pdp d s all all

# Traffic capture
fw monitor -e "(port(389) or port(636)) and host(DC_IP),accept;" -o /var/tmp/ldap.pcap

# Force reinitialization
adlog a control reconf; sleep 5; watch -n 1 -d "adlog a dc"
```

### Stage 6: Support Escalation
Structured data collection including LDAP capture, debug logs, CPinfo files, and comprehensive test outputs for expert analysis.

## Debug Termination Sequence
```bash
adlog a d off
pdp d unset all all
pdp d off
cp $FWDIR/log/pdpd.elg* /var/tmp/
```

## Research Context

Six-stage escalating diagnostic methodology from sk113747 (How to troubleshoot Identity Awareness AD Query connectivity issues). Demonstrates systematic approach to complex authentication troubleshooting.

## Connection Potential

Links to LDAP troubleshooting procedures, authentication frameworks, and debug capture methodologies across identity management systems.