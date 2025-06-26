---
state: permanent
type: atomic-note
created: 2025-06-18
source-credibility: 8
research-context: CheckPoint CLI certificate management
validation-status: verified
---

# CheckPoint MCC Main2Add Certificate Duplication Command

## Core Concept

The `mcc main2add` command copies the current main certificate of a specified Certificate Authority and adds it as an additional certificate, creating backup certificate instances for PKI continuity.

## Command Functionality

**Purpose**: Certificate backup and redundancy creation
**Scope**: Security Management Server certificate database
**Command Type**: Multi-Certificate CA (MCC) management
**Result**: Main certificate duplicated with next highest index number

## Syntax and Parameters

```bash
mcc main2add <CA Name>
```

**Parameters**:
- `<CA Name>`: Name of the Certificate Authority in the Management Server database

## Technical Implementation

- Duplicates current main certificate as additional certificate
- Assigns next available index number to duplicated certificate
- Maintains certificate properties and cryptographic integrity
- Updates Management Server database with new certificate entry

## Operational Requirements

- All management clients must be closed before execution
- Requires administrative privileges on Management Server
- Database write access necessary for certificate creation
- Expert mode execution context required

## Use Cases

- Certificate backup creation before renewal operations
- PKI migration and transition planning scenarios
- Certificate redundancy for high-availability environments
- Rollback preparation for certificate update procedures

## Strategic Applications

**Risk Mitigation**:
- Provides certificate rollback capability during updates
- Ensures business continuity during certificate transitions
- Supports disaster recovery planning for PKI infrastructure

## Source Quality

- **Primary Source**: CheckPoint official CLI documentation
- **Credibility Score**: 8/10
- **Validation Method**: Multiple CheckPoint knowledge base references verified

## Connection Potential

Links to CheckPoint certificate backup strategies, PKI resilience planning, disaster recovery procedures, and certificate lifecycle management workflows.