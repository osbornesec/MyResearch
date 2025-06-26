---
state: fleeting
type: checkpoint-command-atomic
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-admin-foundation-cliguide
validation-status: verified
command-family: multi-domain
source-lines: 39753-39783
---

# CheckPoint vsx fetch - VSX Configuration Management and Deployment

## Command Purpose
Fetches current VSX configuration from Security Management Server or Main Domain Management Server and applies it to VSX Gateway, enabling centralized configuration management.

## Syntax Pattern
```bash
vsx fetch [-v] [-q] [-s] local
vsx fetch [-v | -q | -s] [-f <Configuration File>]
vsx fetch [-v | -q] -C "NCS Command"
vsx fetch [-v | -q | -c | -n | -s] [<Management Server>]
```

## Key Parameters
- `-c`: VSX Cluster mode
- `-n`: Skip local.vsall application if configuration is up-to-date
- `-s`: Concurrent fetch for multi-processor environments
- `-f <file>`: Use specified configuration file instead of default local.vsall
- `-C "command"`: Execute specific NCS command

## Advanced Context
Critical for enterprise VSX deployment and maintenance. Integrates with Network Configuration Script (NCS) execution and local.vsall file management. Supports Scalable Platforms (Maestro, Chassis) with Expert mode requirements. Essential for centralized policy distribution, configuration synchronization, and automated Virtual System provisioning in large-scale deployments.

## Connection Targets
- VSX Gateway centralized management architecture
- Network Configuration Script (NCS) automation
- Multi-Domain Management Server integration
- Enterprise configuration synchronization patterns