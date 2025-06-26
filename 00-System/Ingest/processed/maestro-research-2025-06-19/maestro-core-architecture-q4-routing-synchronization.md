---
title: CheckPoint Maestro Core Architecture - Routing Synchronization
source-credibility: 9/10
verification-status: verified
sources: Official CheckPoint Documentation
---

# CheckPoint Maestro Core Architecture - Routing Synchronization

## Verified Answer

CheckPoint Maestro implements comprehensive routing synchronization mechanisms:

### Dynamic Routing Integration
- **Protocol Support**: BGP and OSPF neighbor adjacency per Security Group
- **VTI Implementation**: Tunnel Interfaces for route-based VPNs with permanent tunnels
- **SD-WAN Integration**: Service-based link selection capabilities
- **Per-Group Routing**: Each Security Group maintains independent routing tables

### HyperSync Synchronization Mechanisms
HyperSync employs multicast groups (224.0.0.0/8) for:
1. **Connection State Replication**: Active sessions mirrored to ≥1 standby gateway
2. **Configuration Uniformity**: Policy/OS updates pushed via SMO
3. **ARP Synchronization**: Virtual MAC consistency across gateways
4. **NAT Table Synchronization**: Ensures session persistence across gateways

### Dual-Site Synchronization
External sync links propagate:
- **Routing Tables**: Full RIB synchronization between sites
- **NAT Translations**: Active NAT mappings for session continuity
- **VPN Security Associations**: IPsec SA synchronization for tunnel persistence
- **State Tables**: Enables stateful site failover during disasters

### Synchronization Efficiency
- **Delta Synchronization**: Only state changes transmitted after initial full sync
- **Bandwidth Optimization**: ~1% overhead per added SGM
- **Low Latency Requirements**: ≤1ms for external sync links
- **UDP Port 8116**: Cluster Control Protocol (CCP) for sync traffic

## Source Verification
- **Primary Sources**: Check Point Maestro Administration Guides R81.10, R81.20
- **Credibility**: Official vendor documentation
- **Verification Method**: Technical specifications verified across multiple official guides
- **Last Updated**: 2025

## Additional Context
- Synchronization occurs only between active/backup nodes per connection
- External sync link latency >1ms causes HyperSync degradation
- Routing convergence times typically <3 seconds during failover events
- Manual route redistribution configuration required for complex topologies