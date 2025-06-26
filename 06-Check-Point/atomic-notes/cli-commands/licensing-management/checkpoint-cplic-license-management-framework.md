---
state: permanent
type: atomic-note
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-cli-command-reference
validation-status: verified
domain: checkpoint-administration
category: license-management
---

# Check Point cplic License Management Framework

## Core Concept
The `cplic` command provides comprehensive license management for Check Point environments, supporting local, remote, and repository-based licensing operations across Management Servers, Security Gateways, and Cluster Members.

## Command Architecture
Three distinct licensing command categories:
- **Local Licensing**: Direct management on individual Check Point computers
- **Remote Licensing**: Management Server control of managed Security Gateways
- **License Repository**: Centralized license storage and distribution

## Key Operations
- License installation and attachment (`put`)
- License verification and validation (`check`)
- License information retrieval (`print`, `get`)
- License removal and detachment (`del`)
- Database operations (`db_add`, `db_print`, `db_rm`)

## Technical Context
- **Execution Environment**: Gaia Clish or Expert mode
- **Authority Levels**: Different operations require different server types
- **Repository Management**: Centralized storage for enterprise license distribution

## Cross-References
- [[checkpoint-license-repository-architecture]]
- [[checkpoint-central-vs-local-licensing-models]]
- [[checkpoint-cluster-member-license-coordination]]

## Integration Points
- Installation procedures requiring license activation
- Performance implications of license validation
- Multi-gateway deployment licensing strategies