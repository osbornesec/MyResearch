---
state: permanent
type: atomic-note
created: 2025-06-18
source-credibility: 8
research-context: CheckPoint CLI certificate management
validation-status: verified
---

# CheckPoint MCC Add2Main Certificate Promotion Command

## Core Concept

The `mcc add2main` command promotes an additional certificate to become the main certificate for a specified Certificate Authority (CA), overwriting the previous main certificate in CheckPoint Security Management.

## Command Functionality

**Purpose**: Certificate lifecycle management for VPN and PKI operations
**Scope**: Security Management Server or Domain Management Server
**Command Type**: Multi-Certificate CA (MCC) management

## Syntax and Parameters

```bash
mcc add2main <CA Name> <Certificate Index Number>
```

**Parameters**:
- `<CA Name>`: Name of the Certificate Authority as defined in the Management Server database
- `<Certificate Index Number>`: Index number of the certificate to be promoted to main status

## Technical Requirements

- Must be executed in CheckPoint Expert mode
- All SmartConsole and database editor tools must be closed before execution
- Requires administrative privileges on Management Server
- Appropriate Domain Management Server context for Multi-Domain deployments

## Use Cases

- Certificate rotation and renewal operations  
- Recovery from certificate expiration scenarios
- Planned certificate lifecycle transitions
- PKI infrastructure maintenance procedures

## Source Quality

- **Primary Source**: CheckPoint official CLI documentation
- **Credibility Score**: 8/10
- **Validation Method**: Multiple CheckPoint knowledge base references verified

## Connection Potential

Links to CheckPoint certificate management, PKI operations, VPN infrastructure, and security management workflows.