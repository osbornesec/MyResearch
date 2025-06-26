---
state: fleeting
type: atomic-note
created: 2025-06-18
source: checkpoint-admin-foundation-cliguide-processed-2025-06-17.md
domain: checkpoint-cli
concept-type: command-reference
review-frequency: quarterly
---

# CheckPoint CPCA Client Certificate Revocation Command

## Core Concept

The `cpca_client revoke_cert` command revokes a certificate issued by the Internal Certificate Authority (ICA) on CheckPoint Security Management Server or Domain Management Server.

## Command Syntax

```bash
cpca_client [-d] revoke_cert [-p <CA port number>] -n "CN=<Common Name>" -s <Certificate Serial Number>
```

## Parameters

| Parameter | Description |
|-----------|-------------|
| `-d` | Optional. Runs the command in debug mode for troubleshooting |
| `-p <CA port number>` | Optional. Specifies TCP port for CA connection (default: 18209) |
| `-n "CN=<Common Name>"` | Specifies certificate CN. Can be used alone or with `-s` |
| `-s <Certificate Serial Number>` | Specifies certificate serial number. Can be used alone or with `-n` |

## Usage Requirements

- **Multi-Domain Server**: Must run in Domain Management Server context using `mdsenv <IP Address or Name of Domain Management Server>`
- **Certificate Identification**: Use `cpca_client lscert` command to get CN and serial number
- **Parameter Flexibility**: Can use `-n` only, `-s` only, or both together

## Command Examples

### Example 1: Revoke by Common Name
```bash
[Expert@MGMT:0]# cpca_client lscert
Subject = CN=VS1 VPN Certificate, O=MyDomain_Server.checkpoint.com.s6t98x
Status = Valid Kind = IKE Serial = 27214 DP = 1

[Expert@MGMT:0]# cpca_client -d revoke_cert -n "CN=VS1 VPN Certificate"
Certificate was revoked successfully
```

### Example 2: Revoke by Serial Number
```bash
[Expert@MGMT:0]# cpca_client lscert
Subject = CN=VS1 VPN Certificate, O=MyDomain_Server.checkpoint.com.s6t98x
Status = Valid Kind = IKE Serial = 27214 DP = 1

[Expert@MGMT:0]# cpca_client -d revoke_cert -s 27214
Certificate was revoked successfully
```

## Source Quality
- **Primary Source**: CheckPoint CLI Administrator Guide
- **Credibility Score**: 9/10 (Official vendor documentation)
- **Validation Method**: Direct extraction from processed documentation

## Connection Potential
- Links to `checkpoint-cpca-client-lscert` (certificate listing)
- Links to `checkpoint-sic-certificate-management` (broader certificate management)
- Links to `checkpoint-multi-domain-server-commands` (MDS context requirements)
- Links to `checkpoint-internal-certificate-authority` (ICA management)
- Links to `checkpoint-vsx-sic-reset` (certificate reset procedures)