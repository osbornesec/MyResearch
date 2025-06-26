---
state: fleeting
type: atomic-note
created: 2025-06-18
source-credibility: 9
research-context: checkpoint-cli-commands
validation-status: verified
---

# CheckPoint CPCA Client SIC Certificate Creation Command

## Core Concept
The `cpca_client create_cert` command issues SIC (Secure Internal Communications) certificates for Security Management Server or Domain Management Server in CheckPoint environments.

## Command Syntax
```
cpca_client [-d] create_cert [-p <CA port number>] -n "CN=<Common Name>" -f <Full Path to PKCS12 file> [-w <Password>] [-k {SIC | USER | IKE | ADMIN_PKG}] [-c "<Comment for Certificate>"]
```

## Parameters
| Parameter | Description |
|-----------|-------------|
| `-d` | Runs the command in debug mode (troubleshooting only) |
| `-p <CA port number>` | Specifies TCP port for Certificate Authority connection (default: 18209) |
| `-n "CN=<Common Name>"` | Sets the Common Name for the certificate |
| `-f <Full Path to PKCS12 file>` | Specifies the PKCS12 file path for storing certificate and keys |
| `-w <Password>` | Optional. Specifies the certificate password |
| `-k {SIC \| USER \| IKE \| ADMIN_PKG}` | Optional. Specifies the certificate type |
| `-c "<Comment for Certificate>"` | Optional. Adds certificate comment (must use double quotes) |

## Usage Example
```bash
[Expert@MGMT:0]# cpca_client create_cert -n "cn=cp_mgmt" -f $CPDIR/conf/sic_cert.pl2
```

## Multi-Domain Context
On Multi-Domain Servers, this command must be run in the context of the applicable Domain Management Server:
```bash
mdsenv <IP Address or Name of Domain Management Server>
```

## Source Quality
- **Primary Source**: CheckPoint Administration Foundation CLI Guide
- **Credibility Score**: 9/10
- **Validation Method**: Official CheckPoint documentation

## Connection Potential
- [[checkpoint-sic-certificate-management]]
- [[checkpoint-multi-domain-server-administration]]
- [[checkpoint-certificate-authority-operations]]
- [[checkpoint-cpca-client-commands]]
- [[checkpoint-pkcs12-certificate-storage]]