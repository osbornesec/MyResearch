---
state: fleeting
type: atomic-note
created: 2025-06-18
source-credibility: 9
research-context: checkpoint-cli-command-reference
validation-status: verified
---

# CheckPoint CPCA Client Revoke Non-Existent Certificate Command

## Core Concept

The `cpca_client revoke_non_exist_cert` command revokes non-existent certificates issued by the Internal Certificate Authority (ICA) using a batch file containing certificate details in a specific format.

## Command Syntax

```bash
cpca_client [-d] revoke_non_exist_cert -i <Full Path to Input File>
```

## Parameters

| Parameter | Description |
|-----------|-------------|
| `-d` | Runs the cpca_client command under debug mode |
| `-i <Full Path to Input File>` | Specifies the file containing the list of certificates to revoke |

## Input File Format

The input file must match the format used by `cpca_client lscert` command output:

```
Subject = CN=cp_mgmt,O=MGMT.5p72vp
Status = Valid    Kind = SIC    Serial = 30287    DP = 0
Not_Before: Sat Apr 7 19:40:12 2018 Not_After: Fri Apr 7 19:40:12 2023
<Empty Line>
Subject = CN=cp_mgmt,O=MGMT.5p72vp
Status = Valid    Kind = SIC    Serial = 60870    DP = 0
Not_Before: Sat Apr 7 19:40:13 2018 Not_After: Fri Apr 7 19:40:13 2023
```

## Multi-Domain Context

On a Multi-Domain Server, this command must be run in the context of the applicable Domain Management Server:
```bash
mdsenv <IP Address or Name of Domain Management Server>
```

## Error Handling

The command saves error messages in a file named `<Name of Input File>.failures`.

## Use Case

This command is specifically designed for revoking certificates that no longer exist in the system but need to be formally revoked for security or compliance purposes, typically during cleanup operations or certificate lifecycle management.

## Source Quality
- **Primary Source**: CheckPoint Administration Foundation CLI Guide
- **Credibility Score**: 9/10
- **Validation Method**: Official CheckPoint documentation

## Connection Potential
- Links to [[checkpoint-cpca-client-revoke-cert]] (standard certificate revocation)
- Links to [[checkpoint-cpca-client-lscert]] (certificate listing for input format)
- Links to [[checkpoint-certificate-management]] (broader certificate lifecycle)
- Links to [[checkpoint-multi-domain-server-operations]] (MDS context requirements)
- Links to [[checkpoint-ica-internal-certificate-authority]] (ICA overview)