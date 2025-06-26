---
state: permanent
type: atomic-note
created: 2025-06-18
source-credibility: 9
research-context: checkpoint-cli-commands-documentation
validation-status: verified
domain: checkpoint-security-management
category: multi-domain-server
tags: [checkpoint, mds, global-policies, migration, cli]
connections: 3
review-frequency: quarterly
---

# CheckPoint migrate_global_policies Command

## Core Concept
The `migrate_global_policies` utility transfers and upgrades global configuration database from one Multi-Domain Server (MDS) to another MDS, enabling migration of global policies between CheckPoint management servers.

## Command Syntax
```bash
migrate_global_policies <Path>
```

## Parameters
- **Path**: Fully qualified path to directory containing global policies files exported from source MDS (`$MDSDIR/conf/`)

## Command Behavior
- Transfers global configuration database between Multi-Domain Servers
- Automatically upgrades configurations if necessary during migration
- Replaces all existing global configurations on target MDS
- Creates backup of existing configurations with `.pre_migrate` extension
- Only works when target MDS has no existing global configurations

## Usage Constraints
- Target Multi-Domain Server must not have global configurations defined
- Cannot export R80.X global configuration and use on R80.X MDS
- Requires disabling Security Gateways enabled for global use when migrating only global configs

## Example Usage
```bash
migrate_global_policies /var/log/exported_global_@b.22/cul2019-124547.rgo
```

## Source Quality
- **Primary Source**: CheckPoint Multi-Domain Administration Guide
- **Credibility Score**: 9/10 (Official CheckPoint documentation)
- **Validation Method**: Direct CLI guide documentation

## Connection Potential
- Links to MDS management commands
- Connects to global policy architecture concepts
- Related to CheckPoint migration procedures
- Associated with Multi-Domain Server administration

## Technical Context
Critical utility for CheckPoint Multi-Domain Server environments requiring global policy migration between management servers, with built-in safety mechanisms to prevent configuration conflicts.