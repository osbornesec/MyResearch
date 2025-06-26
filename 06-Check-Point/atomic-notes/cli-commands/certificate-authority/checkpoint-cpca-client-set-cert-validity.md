---
state: fleeting
type: atomic-note
created: 2025-06-18
source-credibility: 8
research-context: CheckPoint CLI command documentation
validation-status: verified
---

# CheckPoint CPCA Client Set Certificate Validity Period Configuration

## Core Concept

The `cpca_client set_cert_validity` command configures the default certificate validity period for new certificates issued by CheckPoint's Internal Certificate Authority (ICA). This command allows administrators to set custom validity periods for different certificate types (SIC, IKE, USER) using various time units.

## Command Syntax

```bash
cpca_client set_cert_validity -k {SIC | IKE | USER} [-y <Number of Years>] [-d <Number of Days>] [-h <Number of Hours>] [-s <Number of Seconds>]
```

## Parameters

| Parameter | Description |
|-----------|-------------|
| `-k {SIC \| IKE \| USER}` | **Required**: Specifies the certificate type |
| `-y <Number of Years>` | **Optional**: Validity period in years |
| `-d <Number of Days>` | **Optional**: Validity period in days |
| `-h <Number of Hours>` | **Optional**: Validity period in hours |
| `-s <Number of Seconds>` | **Optional**: Validity period in seconds |

## Usage Context

- **Multi-Domain Environment**: Must run in the context of the applicable Domain Management Server using `mdsenv <IP Address or Name of Domain Management Server>`
- **Future Application**: The new certificate validity period applies only to certificates created after this change
- **Certificate Types**:
  - **SIC**: Secure Internal Communication certificates
  - **IKE**: Internet Key Exchange certificates  
  - **USER**: User certificates

## Usage Example

```bash
[Expert@MGMT:0]# cpca_client set_cert_validity -k IKE -y 3
cert validity period was changed successfully.
[Expert@MGMT:0]#
```

## Source Quality

- **Primary Source**: CheckPoint Admin Foundation CLI Guide
- **Credibility Score**: 8/10 (Official vendor documentation)
- **Validation Method**: Direct extraction from processed CheckPoint documentation

## Connection Potential

- Links to CheckPoint certificate management workflows
- Connects to Multi-Domain Server administration concepts
- Related to PKI and certificate lifecycle management practices
- Associated with CheckPoint Security Management architecture