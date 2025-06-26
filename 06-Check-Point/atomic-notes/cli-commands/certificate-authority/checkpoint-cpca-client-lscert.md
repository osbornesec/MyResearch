---
state: fleeting
type: atomic-note
created: 2025-06-18
source-credibility: 9
research-context: CheckPoint CLI command reference
validation-status: verified
---

# CheckPoint cpca_client lscert Command - Certificate Listing Tool

## Core Concept
The `cpca_client lscert` command displays all certificates issued by the Internal Certificate Authority (ICA) on CheckPoint Security Management Servers, with filtering capabilities for status, type, serial number, and distribution point.

## Command Syntax
```bash
cpca_client [-d] lscert [-dn <SubString>] [-stat {Pending | Valid | Revoked | Expired | Renewed}] [-kind {SIC | IKE | User | LDAP}] [-ser <Certificate Serial Number>] [-dp <Certificate Distribution Point>]
```

## Parameters
- **-d**: Debug mode execution with detailed output logging
- **-dn <SubString>**: Filter certificates by Distinguished Name substring
- **-stat {Pending | Valid | Revoked | Expired | Renewed}**: Filter by certificate status (single value only)
- **-kind {SIC | IKE | User | LDAP}**: Filter by certificate type (single value only)
- **-ser <Certificate Serial Number>**: Filter by specific certificate serial number
- **-dp <Certificate Distribution Point>**: Filter by Certificate Distribution Point number

## Multi-Domain Environment Requirements
On Multi-Domain Servers, must be executed within the target Domain Management Server context:
```bash
mdsenv <IP Address or Name of Domain Management Server>
cpca_client lscert [options]
```

## Usage Examples
**List all revoked certificates:**
```bash
cpca_client lscert -stat Revoked
```

**List all IKE certificates:**
```bash
cpca_client lscert -kind IKE
```

## Output Format
Returns certificate information including:
- Subject (Distinguished Name)
- Status (Pending/Valid/Revoked/Expired/Renewed)
- Kind (SIC/IKE/User/LDAP)
- Serial Number
- Distribution Point (DP)
- Validity period (Not_Before/Not_After dates)

## Source Quality
- **Primary Source**: CheckPoint Admin Foundation CLI Guide
- **Credibility Score**: 9/10
- **Validation Method**: Official CheckPoint documentation

## Connection Potential
Links to:
- [[checkpoint-certificate-management-framework]]
- [[checkpoint-cpca-client-commands]]
- [[checkpoint-internal-certificate-authority]]
- [[checkpoint-multi-domain-management]]
- [[checkpoint-certificate-revocation-procedures]]