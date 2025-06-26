---
state: fleeting
type: research-atomic
created: 2025-06-17
source-credibility: 9
research-context: identity-awareness-troubleshooting
validation-status: verified
source: sk113747 - How to troubleshoot Identity Awareness AD Query connectivity issues
---

# Identity Awareness AD Query Connectivity Diagnosis

## Core Concept
AD Query troubleshooting requires systematic verification of user permissions, connectivity testing using both Windows and Gateway tools, and comprehensive debugging when standard tests fail.

## User Permission Verification Requirements
- **Domain Administrator**: Preferred user configuration for simplified setup
- **Custom user setup**: Follow version-specific guidelines (Windows 2008+ vs 2003)
- **Permission validation**: Essential before proceeding to connectivity tests

## Connectivity Testing Tools
- **Wbemtest (Windows side)**: Explores WMI details, permissions, and connectivity
- **test_ad_connectivity (Gateway side)**: Tests LDAP and WMI connectivity
- Both tools required for comprehensive AD Query functionality validation

## Error Analysis Methods
- **NTSTATUS error codes**: 0xC0000022 (Access Denied), 0x00000102 (Timeout)
- **Wireshark filtering**: ldap.resultCode == 49 for credential verification
- **Log file analysis**: $FWDIR/log/test_ad_connectivity.elg with grep filtering

## Research Context
Critical diagnostic workflow for Identity Awareness authentication troubleshooting.

## Connection Potential
- Links to Active Directory integration concepts
- Connects to WMI and LDAP connectivity patterns
- Related to identity management troubleshooting methodologies