---
state: permanent
type: atomic-note
created: 2025-06-18
source-credibility: 9
research-context: CheckPoint CLI commands comprehensive analysis
validation-status: verified
---

# CheckPoint cp_conf lic Command - License Management

## Core Concept

The `cp_conf lic` command provides comprehensive management of CheckPoint licenses, including adding, removing, and displaying installed licenses. This command serves as the primary CLI interface for license administration across Security Management Servers, Security Gateways, and Scalable Platform Security Groups.

## Command Syntax

| Command | Parameters | Description |
|---------|------------|-------------|
| `cp_conf lic` | `-h` | Shows built-in usage help |
| | `add -f <Full Path to License File>` | Adds license from CheckPoint license file |
| | `add -m <Host> <Date> <Signature> <SKU/Features>` | Adds license manually with details |
| | `del <Signature Key>` | Deletes license based on signature |
| | `get [-x]` | Shows installed licenses (with signature if -x) |

## Functionality Overview

**Primary Functions:**
- **License Installation**: Add licenses from files or manual entry
- **License Removal**: Delete licenses based on signature keys
- **License Display**: Show current installed licenses and details
- **License Validation**: Verify license authenticity and validity

**License Management Capabilities:**
- File-based license installation from CheckPoint User Center
- Manual license entry with host, date, signature, and feature details
- Selective license removal using signature key identification
- Comprehensive license status reporting with optional signature display

## Usage Context

**Platform Support:**
- **Management Server**: Standard Gaia Clish or Expert mode
- **Security Gateway**: Standard Gaia Clish or Expert mode  
- **Scalable Platform**: Gaia gClish or Expert mode (with g_all prefix)
- **Multi-Domain Server**: Requires DMS context using `mdsenv`

**Prerequisites:**
- Administrative privileges for license management
- Valid CheckPoint licenses from User Center
- Proper system time synchronization for license validity
- Network connectivity for license validation when applicable

## Implementation Examples

**Adding License from File:**
```bash
[Expert@HostName:0]# cp_conf lic add -f /License.lic
License was installed successfully.
```

**Viewing Installed Licenses:**
```bash
[Expert@HostName:0]# cp_conf lic get
Host         Expiration    Signature    Features
192.168.3.28 25Aug2019    ############ CPSG-FW,CPSG-VPN,CPSG-ADNC
```

**Viewing Licenses with Signature Keys:**
```bash
[Expert@HostName:0]# cp_conf lic get -x
Host         Expiration    Signature                Features
192.168.3.28 25Aug2019    1234567890abcdef12345    CPSG-FW,CPSG-VPN,CPSG-ADNC
```

**Manual License Addition:**
```bash
[Expert@HostName:0]# cp_conf lic add -m 192.168.3.28 "25Aug2019" "1234567890abcdef" "CPSG-FW,CPSG-VPN"
License was installed successfully.
```

**Removing License:**
```bash
[Expert@HostName:0]# cp_conf lic del 1234567890abcdef12345
License deleted successfully.
```

## Multi-Domain Environment

**Domain Management Server Context:**
```bash
# Switch to specific DMS context
[Expert@MDS:0]# mdsenv 192.168.1.100
[Expert@192.168.1.100:0]# cp_conf lic get
# Shows licenses for this specific domain
```

**Scalable Platform Usage:**
```bash
# In Expert mode on Scalable Platform
[Expert@SecurityGroup:0]# g_all cp_conf lic get
# Shows licenses across security group
```

## License Information Fields

**Standard License Display:**
- **Host**: IP address or hostname the license is bound to
- **Expiration**: License validity end date
- **Signature**: Truncated signature identifier (full with -x option)
- **Features**: Licensed CheckPoint features and blades

**Common Feature Codes:**
- CPSG-FW: Firewall security blade
- CPSG-VPN: VPN security blade  
- CPSG-ADNC: Advanced Networking (routing, QoS)
- CPSG-IPS: Intrusion Prevention System
- CPSG-ABOT: Anti-Bot protection
- CPSG-AV: Anti-Virus protection

## Integration Context

**Related Commands:**
- `cplic db_add` - Alternative license addition method
- `cplic print` - Alternative license display method
- `cplic del` - Alternative license deletion method
- `contract_util` - Service contract management

**cpconfig Menu Equivalent:**
This command corresponds to:
- cpconfig → Licenses and contracts

## Operational Considerations

**License Management Best Practices:**
- Backup license files in secure location
- Monitor license expiration dates proactively
- Test license installation in non-production environment first
- Document license assignments and feature allocations

**Troubleshooting Applications:**
- Verify proper license installation after system changes
- Validate feature availability before deployment
- Confirm license binding to correct host addresses
- Support compliance auditing and license tracking

**Security Considerations:**
- Protect license files from unauthorized access
- Verify signature authenticity before installation
- Monitor for license tampering or unauthorized modifications
- Maintain audit trail of license management activities

## Error Handling

**Common Issues:**
- Invalid license file format or corruption
- Expired licenses or incorrect date formats  
- Signature key mismatches during deletion
- Host binding conflicts or IP address changes
- Insufficient privileges for license operations

**Validation Checks:**
- License file integrity and format validation
- Host binding verification and compatibility
- Expiration date validation and warnings
- Feature compatibility with installed software versions

## Source Quality

- **Primary Source**: CheckPoint R81.20 Administration Foundation CLI Guide
- **Credibility Score**: 9/10 (Official vendor documentation)
- **Validation Method**: Direct extraction from authoritative CheckPoint documentation
- **Technical Accuracy**: Verified through official command reference with practical examples

## Connection Potential

- Links to [[checkpoint-license-management-fundamentals]]
- Connects with [[checkpoint-contract-util-commands]]
- Relates to [[checkpoint-multi-domain-server-licensing]]
- Integrates with [[checkpoint-scalable-platform-licensing]]
- Foundation for [[checkpoint-compliance-license-tracking]]