---
state: permanent
type: atomic-note
created: 2025-06-17
source-credibility: 8
research-context: checkpoint-command-reference
validation-status: verified
domain: checkpoint-firewall-management
---

# CheckPoint CMA Migration Command - Domain Export Import Tool

## Core Concept
The `cma_migrate` command exports and imports individual Security Management Domains (CMA) within CheckPoint's Multi-Domain Security Management (MDSM) environment, enabling domain-level migration and upgrade operations.

## Technical Function
- **Pre-upgrade Verification**: Performs compatibility checks before migration
- **Database Schema Updates**: Adjusts schema for target system compatibility  
- **Domain Export/Import**: Transfers complete CMA configuration and data
- **Error Validation**: Ensures migration integrity before execution

## Migration Scope
Transfers all domain-specific elements:
- Security policies and rules
- Network objects and configurations
- User accounts and permissions
- Log data and historical records
- Domain-specific settings and customizations

## Use Cases
- **System Upgrades**: Migrating domains to newer CheckPoint versions
- **Disaster Recovery**: Restoring domain configurations from backups
- **Infrastructure Changes**: Moving domains between management servers
- **Domain Consolidation**: Transferring domains during architecture restructuring

## Operational Context
Essential tool for Multi-Domain Security Management environments where individual customer or organizational domains require independent migration while preserving all configuration integrity and operational continuity.

## Source Quality
- **Primary Source**: CheckPoint official documentation
- **Credibility Score**: 8/10
- **Validation Method**: Multi-source technical documentation verification