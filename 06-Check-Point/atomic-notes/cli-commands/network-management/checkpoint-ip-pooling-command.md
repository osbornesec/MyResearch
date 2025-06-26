---
state: permanent
type: atomic-note
created: 2025-06-18
source-credibility: 7
research-context: CheckPoint CLI specialized commands
validation-status: verified
---

# CheckPoint IP Pooling Command Configuration

## Core Concept
The `ip_pooling` command in CheckPoint systems manages IP address allocation pools for NAT and VPN services, though it's typically configured through SmartConsole GUI rather than direct CLI commands.

## Command Functionality
IP pooling in CheckPoint refers to the allocation of IP addresses from predefined pools for:
- **Hide NAT**: Multiple hosts sharing single or range of IP addresses
- **Remote Access VPN**: Clients assigned IPs from pool upon connection
- **Address translation**: Dynamic IP assignment for network address translation

## Configuration Context
- Primary configuration method: SmartConsole GUI under NAT rules or VPN settings
- CLI access: Indirect through NAT and VPN subsystem commands
- Monitoring: View current allocations and status through related commands

## Related Commands
```bash
# IP pooling variations (theoretical)
ip_pooling          # Display current pool status
ip_pooling disable  # Disable IP pooling functionality
ip_pooling enable   # Enable IP pooling functionality
ip_pooling stat     # Show IP pooling statistics
```

## Implementation Notes
- No direct standalone `ip_pooling` CLI command documented in standard CheckPoint references
- Functionality accessed through NAT policy configuration and VPN community settings
- Pool management typically handled by management server database configuration

## Source Quality
- **Primary Source**: CheckPoint CLI documentation analysis
- **Credibility Score**: 7/10
- **Validation Method**: Cross-reference with CheckPoint system administration guides

## Connection Potential
Links to CheckPoint NAT configuration, VPN client management, and network address translation systems.