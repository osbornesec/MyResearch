---
state: permanent
type: atomic-note
created: 2025-06-17
domain: checkpoint-firewall
concept-api: vsx-util-command
connections: 4
review-frequency: monthly
source-credibility: 9
---

# VSX Util Command VSX Maintenance Operations Framework

## Core Concept
The `vsx_util` command provides comprehensive VSX maintenance operations for Virtual System Extension environments, enabling cluster management, interface configuration, network changes, and virtual system administration tasks from the Management Server.

## Command Framework
```bash
vsx_util -h
vsx_util <Command> [-s <Mgmt Server>] [-u <UserName>] [-c <Name of VSX Object>] [-m <Name of VSX Cluster Member>]
```

## Essential Sub-Commands
- **add_member**: Adds new Cluster Member to VSX Cluster with configuration push
- **change_interfaces**: Replaces existing interfaces with new interfaces across Virtual Devices
- **change_mgmt_ip**: Changes VSX Management IP address within same subnet
- **change_mgmt_subnet**: Changes VSX Management IP address to new subnet
- **change_private_net**: Modifies Internal Communication Network IP address in VSX Cluster
- **convert_cluster**: Converts VSX Cluster mode between High Availability and Virtual System Load Sharing
- **downgrade**: Downgrades VSX Gateway or VSX Cluster version in management database
- **reconfigure**: Restores VSX configuration on VSX Gateway or Cluster Member
- **remove_member**: Removes Cluster Member from VSX Cluster
- **show_interfaces**: Displays interface configuration, types, Virtual Device connections, and IP addresses
- **upgrade**: Upgrades VSX Gateway or VSX Cluster version in management database
- **view_vs_conf**: Shows Virtual Device configuration comparison between Management Server and VSX Gateway
- **vsls**: Virtual System Load Sharing configuration menu with status, redistribute, export, and import options

## Critical Prerequisites
- **Backup Required**: VSX environment backup mandatory before execution
- **SmartConsole Closure**: All SmartConsole clients must be closed to prevent database lock errors
- **Expert Mode**: Commands executed from Expert mode on Management Server
- **Interactive Requirements**: Most sub-commands require additional user input for completion

## Operational Context
Essential tool for VSX cluster management, virtual system configuration changes, network topology modifications, and maintenance operations. Provides centralized control for complex VSX environment modifications with built-in safety mechanisms.

## Connection Potential
- [[checkpoint-vsx-virtual-system-extension-architecture]]
- [[checkpoint-vsx-cluster-management]]
- [[checkpoint-virtual-system-load-sharing]]
- [[checkpoint-management-server-operations]]