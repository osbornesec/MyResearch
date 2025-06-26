---
state: permanent
type: atomic-note
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-cli-command-reference
validation-status: verified
domain: checkpoint-administration
category: ca-management
---

# Check Point cpca_client Command - Certificate Authority Management

## Core Concept
The `cpca_client` command manages Check Point's Internal Certificate Authority (ICA) operations, including signature hash algorithm configuration and certificate creation processes.

## Technical Specification
- **Command Family**: Certificate Authority Management
- **Execution Context**: Expert mode on Security Management Server
- **Multi-Domain Requirement**: Must run within specific Domain Management Server context
- **Service Impact**: Requires Check Point service restart after configuration changes

## Key Sub-Commands
- `set_sign_hash`: Configures CA signature hash algorithm (SHA-1, SHA-256, SHA-384, SHA-512)
- `create`: Creates new certificates using the Internal CA

## Cross-References
- [[checkpoint-service-restart-procedures]]
- [[checkpoint-multi-domain-server-context-management]]
- [[checkpoint-certificate-authority-security-standards]]

## Integration Points
- Installation procedures requiring certificate management
- Performance impact of hash algorithm selection
- Multi-domain architecture certificate distribution