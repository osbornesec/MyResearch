---
state: fleeting
type: checkpoint-command-atomic
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-admin-foundation-cliguide
validation-status: verified
command-family: clustering
source-lines: 34063-34159
---

# CheckPoint cp_conf corexl - Multi-Core Architecture Management

## Command Purpose
Enables or disables CoreXL with configurable IPv4 and IPv6 Firewall instance counts, providing granular control over multi-core processing architecture.

## Syntax Pattern
```bash
cp_conf corexl [-v] enable [n] [-6 k]
cp_conf corexl [-v] disable
# Scalable Platform Expert mode:
g_all cp_conf corexl [-v] enable [n] [-6 k]
```

## Key Parameters
- `enable [n]`: Enable CoreXL with 'n' IPv4 Firewall instances
- `[-6 k]`: Optional 'k' IPv6 Firewall instances
- `-v`: Preserve high memory (vmalloc) settings
- `disable`: Disable CoreXL entirely

## Advanced Context
Critical enterprise command for optimizing multi-core performance architecture. Modifies /etc/fw.boot/boot.conf with KERN_INSTANCE_NUM and IPV6_INSTANCE_NUM settings. Requires reboot for changes to take effect. Cluster deployments demand synchronized configuration across all members. Scalable Platforms (Maestro, Chassis) require Security Group context and g_all prefix for Expert mode execution.

## Connection Targets
- CoreXL multi-core processing optimization
- Enterprise clustering synchronization requirements
- Scalable Platform Security Group management
- High-performance network architecture tuning