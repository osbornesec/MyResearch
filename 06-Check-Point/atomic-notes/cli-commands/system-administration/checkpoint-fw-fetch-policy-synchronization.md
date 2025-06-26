---
state: fleeting
type: checkpoint-command-atomic
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-admin-foundation-cliguide
validation-status: verified
command-family: firewall
source-lines: 22488-22544
---

# CheckPoint fw fetch - Policy Synchronization

## Command Purpose
Fetches Security Policy from Management Server, peer Cluster Member, or local storage and installs it to the kernel for active enforcement.

## Syntax Pattern
```bash
fw [-d] fetch {-f [-c] | <Master1> [Master2] | local | localhost} [-i] [-n] [-r]
```

## Key Parameters
- `fetch -f`: Fetch from Management Server in masters file
- `fetch -c`: Fetch from peer Cluster Member (requires -f)
- `fetch local`: Fetch locally stored policy
- `-i`: Ignore SIC name/object name on DAIP gateways
- `-n`: Don't load if policy matches current
- `-r`: Ignore cluster installation failure option

## Security Context
Essential for Security Gateway policy synchronization and recovery. Provides failover capability in cluster environments. Critical for maintaining security policy consistency across distributed deployments.

## Connection Targets
- checkpoint-sic-certificate-management
- checkpoint-cluster-policy-synchronization
- checkpoint-policy-installation-acceleration
- checkpoint-daip-gateway-configuration