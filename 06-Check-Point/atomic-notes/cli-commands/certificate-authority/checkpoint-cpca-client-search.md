---
state: fleeting
type: atomic-note
created: 2025-06-18
source-credibility: 9
research-context: CheckPoint CLI command documentation
validation-status: verified
---

# CheckPoint CPCA Client Certificate Search Command

## Core Concept
The `cpca_client search` command searches for certificates in the CheckPoint Internal Certificate Authority (ICA), allowing administrators to locate specific certificates based on various criteria including DN, comment, serial number, device information, certificate type, and status.

## Command Syntax
```bash
cpca_client [-d] search <String> [-where {dn | comment | serial | device_type | device_id | device_name}] [-kind {SIC | IKE | User | LDAP}] [-stat {Pending | Valid | Revoked | Expired | Renewed}] [-max <Maximal Number of Results>] [-showfp {y|n}]
```

## Parameters

| Parameter | Description |
|-----------|-------------|
| `-d` | Runs the command in debug mode. Use only for troubleshooting the command itself |
| `<String>` | Search string to match against certificates |
| `-where` | Specifies search field: dn, comment, serial, device_type, device_id, or device_name |
| `-kind` | Certificate type filter: SIC, IKE, User, or LDAP |
| `-stat` | Certificate status filter: Pending, Valid, Revoked, Expired, or Renewed |
| `-max` | Maximum number of results to return |
| `-showfp {y\|n}` | Show certificate fingerprint and thumbprint (default: y) |

## Usage Examples

### Example 1: Search by Comment and Filter by Type/Status
```bash
[Expert@MGMT:0]# cpca_client search samplecompany -where comment -kind SIC LDAP -stat Pending Valid Renewed
```

### Example 2: Search by DN with Default Settings
```bash
[Expert@MGMT:0]# cpca_client search 192.168.3.51 -where dn
Operation succeeded. rc=0.
1 certs found.
Subject = CN=192.168.3.51,O=MGMT.5p72vp
Status = Valid Kind = SIC Serial = 73455 DP = 0
Not_Before: Sat Apr 7 19:40:12 2018 Not_After: Fri Apr 7 19:40:12 2023
Fingerprint = [fingerprint data displayed]
```

## Multi-Domain Server Context
On a Multi-Domain Server, this command must be run in the context of the applicable Domain Management Server:
```bash
mdsenv <IP Address or Name of Domain Management Server>
```

## Best Practices
- Redirect output to a file or use the script command to save CLI session when using this command
- Use specific search criteria to limit results and improve performance
- Consider using `-max` parameter to prevent overwhelming output

## Research Context
Essential command for CheckPoint certificate management, enabling administrators to locate and identify certificates within the Internal Certificate Authority infrastructure for maintenance, troubleshooting, and security auditing purposes.

## Source Quality
- **Primary Source**: CheckPoint CLI Administration Foundation Guide
- **Credibility Score**: 9/10
- **Validation Method**: Official vendor documentation

## Connection Potential
- Links to other CheckPoint CPCA client commands (lscert, revoke_cert, create_cert)
- Connects to CheckPoint certificate management workflows
- Related to ICA certificate lifecycle management
- Integrates with Multi-Domain Server management concepts
- Links to CheckPoint security administration methodologies