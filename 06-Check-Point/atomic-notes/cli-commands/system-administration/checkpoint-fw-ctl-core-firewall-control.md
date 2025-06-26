---
state: fleeting
type: checkpoint-command-atomic
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-admin-foundation-cliguide
validation-status: verified
command-family: firewall
source-lines: 21435-21497
---

# CheckPoint fw ctl - Core Firewall Control

## Command Purpose
Controls the Check Point Firewall kernel module with comprehensive diagnostic and configuration capabilities for Security Gateway administration.

## Syntax Pattern
```bash
fw [-d] ctl <subcommand> <options>
```

## Key Parameters
- `-d`: Debug mode for troubleshooting (redirect output to file)
- `arp`: Shows Proxy ARP entries from $FWDIR/conf/local.arp
- `bench`: Runs CPU benchmark tests for performance analysis
- `block`: Blocks all connections to/from/through Security Gateway
- `chain`: Shows Firewall Chain Modules list
- `conn`: Shows Firewall Connection Modules list
- `conntab`: Shows formatted current connections from kernel table
- `get/set`: Shows/configures kernel parameters
- `install/uninstall`: Controls packet passing to Firewall

## Security Context
Core command for Security Gateway kernel management, connection monitoring, and firewall engine control. Critical for troubleshooting, performance analysis, and emergency security blocking.

## Connection Targets
- checkpoint-fw-ctl-conntab-connection-monitoring
- checkpoint-fw-ctl-block-emergency-blocking
- checkpoint-corexl-firewall-worker-instance-architecture
- checkpoint-kernel-parameter-configuration-system