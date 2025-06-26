---
state: fleeting
type: checkpoint-command-atomic
created: 2025-06-17
source-credibility: 9
command: cpca_client set_sign_hash
---

# CheckPoint cpca_client set_sign_hash - CA Hash Algorithm Configuration

## Command Purpose
Sets the hash algorithm that the Check Point Internal Certificate Authority (ICA) uses to sign file hashes. This command configures the cryptographic strength of certificate signatures issued by the internal CA.

## Syntax
```bash
cpca_client [-d] set_sign_hash {sha1 | sha256 | sha384 | sha512}
```

## Parameters
| Parameter | Description |
|---|---|
| `-d` | Debug mode (optional) |
| `{sha1 \| sha256 \| sha384 \| sha512}` | Hash algorithm selection. Default is SHA-256. |

## Hash Algorithm Options
- **SHA-1**: Legacy algorithm (deprecated for security reasons)
- **SHA-256**: Default algorithm, widely supported
- **SHA-384**: Enhanced security variant
- **SHA-512**: Maximum security variant

## Multi-Domain Context
On Multi-Domain Servers, must run in Domain Management Server context:
```bash
mdsenv <IP Address or Name of Domain Management Server>
```

## Security Context
- **Compatibility Warning**: SHA-256/384/512 not supported on gateways prior to R71
- **Legacy Client Impact**: Older clients and SO80 R71 may not support stronger algorithms
- **Certificate Impact**: Changes signature hash for new certificates, existing CA certificate signature unchanged
- **Service Restart Required**: Must restart Check Point services after configuration change

## Required Service Restart
**Security Management Server:**
```bash
cpstop
cpstart
```

**Multi-Domain Server:**
```bash
cpstop
cpstart
```

## Security Implications
- Stronger hash algorithms provide better cryptographic security
- Algorithm selection affects compatibility with older Check Point components
- Changes apply to new certificate signatures only
- Existing CA certificate maintains original signature algorithm without security impact

## Usage Example
```bash
[Expert@MGMT:0]# cpca_client set_sign_hash sha256
You have selected the signature hash function SHA-256
WARNING: This hash algorithm is not supported in Check Point gateways prior to R71.
WARNING: It is also not supported on older clients and SO80 R71.
Are you sure? (y/n)
Y
Internal CA signature hash changed successfully.
Note that the signature on the Internal CA certificate has not changed, but this has no security implications.
[Expert@MGMT:0]# cpstop ; cpstart
```

## Related Documentation
- See Check Point sk103840 for additional details
- Part of Check Point Internal Certificate Authority management suite