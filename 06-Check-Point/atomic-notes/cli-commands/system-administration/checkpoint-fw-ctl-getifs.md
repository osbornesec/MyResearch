---
state: fleeting
type: atomic-note
created: 2025-06-18
source-credibility: 9
research-context: CheckPoint CLI command analysis
validation-status: verified
---

# CheckPoint fw getifs - Interface Information Display Command

## Core Concept

The `fw getifs` command displays the list of network interfaces to which the CheckPoint Firewall kernel has attached, including their IP addresses and subnet masks. This command provides essential network configuration visibility for CheckPoint Security Gateways.

## Command Syntax

```bash
fw [-d] getifs
```

## Parameters

| Parameter | Description |
|-----------|-------------|
| -d | Runs the command in debug mode. Use only for troubleshooting the command itself. Best practice: redirect output to a file or use script command to save the entire CLI session. |

## Command Output

The command returns:
- Interface names attached to the CheckPoint Firewall kernel
- IP addresses assigned to each interface
- Subnet masks for each interface

## Usage Example

```bash
[Expert@MyGW:0]# fw getifs
localhost eth0 192.168.30.40 255.255.255.0
localhost eth1 172.30.60.80 255.255.255.0
[Expert@MyGW:0]#
```

## Related Commands

- `fw ctl iflist` - Lists interface details (used in conjunction with fw getifs)
- `cpstat -f interfaces fw` - Alternative interface statistics command

## Use Cases

1. **Network Troubleshooting**: Verify which interfaces are recognized by the CheckPoint kernel
2. **Configuration Validation**: Confirm IP address assignments on Security Gateway interfaces
3. **Security Assessment**: Identify all network interfaces managed by CheckPoint Firewall
4. **Documentation**: Capture current interface configuration for change management

## Source Quality

- **Primary Source**: CheckPoint Admin Foundation CLI Guide (processed 2025-06-17)
- **Credibility Score**: 9/10
- **Validation Method**: Official CheckPoint documentation

## Connection Potential

- Links to CheckPoint interface management concepts
- Connects with network troubleshooting methodologies
- Related to CheckPoint kernel architecture
- Associated with SecureXL acceleration configuration
- Part of CheckPoint CLI command reference system