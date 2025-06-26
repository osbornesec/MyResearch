---
state: permanent
type: atomic-note
created: 2025-06-18
source-credibility: 8
research-context: CheckPoint CLI certificate management
validation-status: verified
---

# CheckPoint MCC LCA Certificate Authority Listing Command

## Core Concept

The `mcc lca` command lists all Certificate Authorities (CAs) registered in the CheckPoint Security Management Server, providing visibility into the PKI infrastructure configuration.

## Command Functionality

**Purpose**: Certificate Authority discovery and inventory management
**Scope**: Security Management Server database query
**Command Type**: Multi-Certificate CA (MCC) management
**Output**: Comprehensive list of registered CAs

## Syntax and Parameters

```bash
mcc lca
```

**Parameters**: None required - command executes without additional arguments

## Technical Implementation

- Queries Management Server database for CA registry information
- Returns all registered Certificate Authorities with their identification details
- Provides foundation for other certificate management operations
- Executes in read-only mode with minimal system impact

## Operational Context

**Pre-requisite for**:
- Certificate promotion operations (`mcc add2main`)
- Certificate duplication operations (`mcc main2add`)
- PKI infrastructure auditing procedures
- Certificate lifecycle planning activities

## Use Cases

- PKI infrastructure assessment and documentation
- Certificate Authority validation before management operations
- Troubleshooting certificate-related connectivity issues
- Compliance auditing for certificate management policies

## Source Quality

- **Primary Source**: CheckPoint official CLI documentation
- **Credibility Score**: 8/10
- **Validation Method**: Multiple CheckPoint knowledge base references verified

## Connection Potential

Links to CheckPoint certificate inventory management, PKI infrastructure visibility, security auditing procedures, and certificate lifecycle workflows.