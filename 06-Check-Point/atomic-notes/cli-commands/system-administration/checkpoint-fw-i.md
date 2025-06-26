---
state: permanent
type: atomic-note
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-security-administration
validation-status: verified
domain: network-security
category: checkpoint-commands
---

# CheckPoint fw -i Interface Information Display Command

## Core Concept
The `fw -i` command displays detailed interface information on CheckPoint security gateways, including interface names, IP addresses, network masks, and interface states. This command is essential for network troubleshooting, configuration verification, and security policy validation.

## Command Syntax
```bash
fw -i
```

## Typical Output Information
- **Interface Names**: Physical and virtual interface identifiers
- **IP Addresses**: Assigned IPv4/IPv6 addresses for each interface
- **Network Masks**: Subnet mask information for network segmentation
- **Interface States**: Up/Down status and operational conditions
- **Interface Types**: Physical, virtual, VLAN, and bond interface types

## Primary Use Cases
- **Network Troubleshooting**: Verify interface configuration during connectivity issues
- **Security Policy Validation**: Confirm interface assignments match security rules
- **Configuration Auditing**: Document current network interface setup
- **Pre-change Verification**: Baseline interface status before modifications

## Connection Potential
Links to: [[checkpoint-basic-commands]], [[checkpoint-network-troubleshooting]], [[checkpoint-interface-configuration]], [[checkpoint-security-policy-validation]]

## Operational Context
Critical command for CheckPoint administrators to understand network topology and verify proper interface configuration before implementing security policies or troubleshooting network connectivity issues.