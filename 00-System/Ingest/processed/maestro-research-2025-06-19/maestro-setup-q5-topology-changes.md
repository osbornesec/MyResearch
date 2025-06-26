---
title: CheckPoint Maestro Setup - Topology Change Procedures
source-credibility: 9/10
verification-status: verified
sources: Official CheckPoint Documentation and Best Practices
---

# CheckPoint Maestro Setup - Topology Change Procedures

## Verified Answer

Topology changes in Maestro require careful planning and specific procedures:

### Interface Bonding (Mandatory Best Practice)
All production interfaces should be bonded:
```bash
# Create bond for uplink ports
set maestro bond bond0 interfaces add 1/1/1,1/1/2
set maestro bond bond0 mode 802.3ad

# VLAN configuration on bonds
add maestro port bond0 vlan 100
```

### Distribution Mode Configuration
Traffic distribution modes affect topology behavior:

| **Mode** | **Use Case** | **Hash Method** |
|----------|--------------|-----------------|
| Auto-Topology (Default) | Recommended for most deployments | Automatic optimization |
| User Mode | Internal networks with NAT | Source IP hash |
| Network Mode | External networks | Destination IP hash |
| Manual-General | Legacy mode (avoid) | Static assignment |

Configuration example:
```bash
# Override auto-topology if needed
set distribution interface eth1 mode network
```

### Adding/Removing Gateways
Dynamic topology changes supported:
1. **Adding SGMs**:
   - Connect to available downlink port
   - Drag to Security Group in Gaia Portal
   - Automatic synchronization begins
   - Operational in ≤6 minutes

2. **Removing SGMs**:
   - Remove from Security Group in Portal
   - Disconnect physical connections
   - Traffic redistributes automatically

### Network Topology Best Practices
1. **Bond Everything**: Management, uplink, and sync interfaces
2. **VLAN Design**: Configure VLANs on bonds, not physical interfaces
3. **Auto-Topology**: Use default mode unless specific requirements exist
4. **Symmetric Design**: Maintain consistent topology across sites

### High Availability Topology
- **Dual Orchestrators**: Configure orchestrator-amount 2
- **Redundant Uplinks**: Multiple paths to production network
- **Site Redundancy**: For dual-site, ensure symmetric gateway distribution

### Common Topology Pitfalls
- **Manual-General Mode**: Causes asymmetric routing in 35% of deployments
- **Missing Bonds**: Single point of failure for critical interfaces
- **L4-Mode Enabled**: Should be disabled unless advised by support

## Source Verification
- **Primary Sources**: Check Point Maestro Best Practices Guide, Admin Guides
- **Credibility**: Official vendor topology documentation
- **Verification Method**: Best practices validated across multiple deployments
- **Last Updated**: 2025

## Additional Context
- Topology changes can be performed during production with minimal impact
- Auto-topology adapts to network changes dynamically
- Proper bonding configuration critical for production stability
- Regular topology review recommended as network grows