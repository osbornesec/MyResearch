---
state: fleeting
type: atomic-note
created: 2025-06-18
source-credibility: 9
research-context: CheckPoint CLI command reference
validation-status: verified
---

# CheckPoint CPCA Client Double Sign Certificate Command

## Core Concept
The `cpca_client double_sign` command creates a second signature for an existing certificate, providing additional authentication and validation layers in CheckPoint's Internal Certificate Authority (ICA) system.

## Command Syntax
```bash
cpca_client [-d] double_sign [-p <CA port number>] -i <Certificate File in PEM format> [-o <Full Path to Output File>]
```

## Parameters
| Parameter | Description |
|-----------|-------------|
| `-d` | Runs command in debug mode for troubleshooting |
| `-p <CA port number>` | Optional. Specifies TCP port for CA connection (default: 18209) |
| `-i <Certificate File in PEM format>` | Required. Imports specified certificate in PEM format |
| `-o <Full Path to Output File>` | Optional. Saves the double-signed certificate to specified file |

## Usage Context
- **Primary Function**: Creates dual-signature certificates for enhanced security
- **Multi-Domain Requirement**: Must run in Domain Management Server context using `mdsenv <IP Address or Name of Domain Management Server>`
- **Certificate Format**: Requires PEM format input certificates
- **Output**: Generates certificate with additional signature validation

## Example Implementation
```bash
[Expert@MGMT:0]# cpca_client double_sign -i certificate.pem
Requesting Double Signature for the following Certificate:
    refCount: 1
    Subject: Email=example@example.com,CN=http://www.example.com/,OU=ValiCert Class 2 Policy Validation Authority
Double Sign of Cert:
    (dn ("Email=example@example.com,CN=http://www.example.com/,OU=exampleOU Class 2 Policy Validation Authority"))
    (doubleSignCert (52016390...ebb67e96))
```

## Security Implications
- **Enhanced Validation**: Provides additional certificate authentication layer
- **Trust Chain**: Strengthens certificate trust relationships
- **Compliance**: Supports regulatory requirements for dual-signature validation
- **ICA Integration**: Works within CheckPoint's Internal Certificate Authority framework

## Research Context
This command is part of CheckPoint's comprehensive certificate management system, enabling organizations to implement multi-signature certificate validation for enhanced security postures.

## Source Quality
- **Primary Source**: CheckPoint Admin Foundation CLI Guide
- **Credibility Score**: 9/10 (Official vendor documentation)
- **Validation Method**: Direct extraction from official CheckPoint documentation

## Connection Potential
- [[checkpoint-cpca-client-command-framework]]
- [[checkpoint-internal-certificate-authority-system]]
- [[checkpoint-certificate-management-operations]]
- [[checkpoint-multi-domain-certificate-administration]]
- [[checkpoint-pem-certificate-format-handling]]
- [[checkpoint-security-management-server-operations]]