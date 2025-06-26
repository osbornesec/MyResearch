---
state: fleeting
type: checkpoint-command-atomic
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-vsx-management
validation-status: verified
command-family: vsx
---

# CheckPoint vsx fetch - VSX Configuration Retrieval

## Core Concept
The `vsx fetch` command retrieves Virtual System Extension (VSX) configuration from a management server and applies it to the local VSX Gateway, enabling centralized configuration management and synchronization.

## Essential Syntax
```bash
vsx fetch [options] [management-server]
```

## Primary Function
Synchronizes VSX Gateway configuration with centralized management server, ensuring consistent policy deployment across virtual systems in enterprise environments.

## Key Operational Context
- **Configuration Source**: Security Management Server or Main Domain Management Server
- **Target Application**: Local VSX Gateway
- **Deployment Pattern**: Centralized management to distributed enforcement
- **Use Case**: Enterprise VSX configuration synchronization

## Connection Potential
- VSX Gateway architecture
- Multi-Domain Management patterns
- Configuration synchronization frameworks
- Enterprise policy distribution systems