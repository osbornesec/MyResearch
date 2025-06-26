---
state: fleeting
type: atomic-note
created: 2025-06-18
source: checkpoint-admin-foundation-cliguide-processed-2025-06-17.md
domain: checkpoint-certificate-authority
context: ICA public key extraction
---

# CheckPoint CPCA Client Get Public Key Command

## Core Concept

The `cpca_client get_pubkey` command extracts and saves the encoding of the public key from the Internal Certificate Authority (ICA) certificate to a specified file on CheckPoint security gateways.

## Command Syntax

```bash
cpca_client get_pubkey <output_file_path>
```

## Parameters

- **output_file_path**: File path where the public key encoding will be saved

## Functionality

- Saves the encoding of the ICA's certificate public key to a file
- Outputs the public key in encoded format (hexadecimal representation)
- Essential for certificate management and PKI operations

## Multi-Domain Environment Requirements

On Multi-Domain Server deployments, this command must be executed in the context of the applicable Domain Management Server:

```bash
mdsenv <IP_Address_or_Name_of_Domain_Management_Server>
cpca_client get_pubkey <output_file_path>
```

## Usage Example

```bash
[Expert8MGMT:0]# cpca_client get_pubkey /tmp/key.txt
[Expert8MGMT:0]# cat /tmp/key.txt
3082010a... ... ...f98b8910
```

## Use Cases

- Certificate validation processes
- PKI troubleshooting and diagnostics
- Security policy configuration
- Certificate authority management
- Public key distribution for verification

## Source Attribution

- **Primary Source**: CheckPoint Admin Foundation CLI Guide
- **Documentation Section**: cpca_client commands (page 83)
- **Command Category**: Certificate Authority management

## Connection Potential

- Links to other `cpca_client` commands for comprehensive CA management
- Connects to CheckPoint PKI infrastructure concepts
- Related to certificate validation and security policy implementation
- Associated with Multi-Domain Server environment configuration