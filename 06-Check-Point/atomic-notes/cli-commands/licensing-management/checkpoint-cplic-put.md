---
state: permanent
type: atomic-note
created: 2025-06-17T10:45:00Z
source-credibility: 9
research-context: checkpoint-cli-license-management
validation-status: verified
---

# Check Point License Installation Command (cplic put)

## Core Concept
The `cplic put` command installs and attaches Check Point licenses on local and remote Check Point computers, supporting both local license installation and remote license attachment to managed devices.

## Command Syntax
```bash
# Local license installation
cplic put [-d] [{-o | -overwrite}] [{-c | -check-only}] [{-s | -select}] 
         [-F <Output File>] [{-P | -Pre-boot}] [{-k | -kernel-only}] 
         -l <License File> [<Host>] [<Expiration Date>] [<Signature>] [<SKU/Features>]

# Remote license attachment
cplic put <Object Name> [-ip <Dynamic IP Address>] [-F <Output File>] 
         -l <License File> [<Host>] [<Expiration Date>] [<Signature>] [<SKU/Features>]
```

## Key Parameters
- **-l <License File>**: Specifies the license file to install (required)
- **-o | -overwrite**: Erases existing local licenses (not central licenses)
- **-c | -check-only**: Verifies license validity without installation
- **<Object Name>**: Target Security Gateway/Cluster Member object name
- **-ip <Dynamic IP>**: For devices with dynamically assigned IP addresses

## Execution Context
- **Platforms**: Management Server, Security Gateway, Cluster Member, Scalable Platform
- **Access Modes**: Gaia Clish or Expert mode
- **License Types**: Local licenses (direct installation) and Central licenses (remote attachment)

## Operational Behavior
- Automatically updates license repository when attaching remote licenses
- Validates license IP matching and signature integrity
- Supports multiple license attachment in single operation
- Requires licenses obtained from Check Point User Center

## Usage Example
```bash
[Expert@HostName:0]# cplic put -l License.lic
Host         Expiration    SKU
192.168.2.3  14Jan2016     CPSB-SWB CPSB-ADNC-M CK0123456789ab
```

## Connection Potential
- Links to Check Point license management workflow
- Connects to `cplic get`, `cplic print`, and `cplic del` commands
- Related to Security Gateway configuration and cluster licensing
- Associated with central license distribution from Management Server