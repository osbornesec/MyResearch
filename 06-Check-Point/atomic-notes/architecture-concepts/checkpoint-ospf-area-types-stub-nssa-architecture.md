---
state: permanent
type: atomic-note
created: 2025-06-17
domain: network-routing
source-credibility: 9
research-context: checkpoint-network-architecture
validation-status: verified
connections: 5
review-frequency: quarterly
---

# Check Point OSPF Area Types Stub and NSSA Architecture

## Core Concept
Check Point Gaia OSPF implementation supports multiple area types that optimize routing table size and external route propagation through hierarchical network design: Normal Areas, Stub Areas, and Not-So-Stubby Areas (NSSA).

## Area Type Classifications

### Stub Areas
- **External Route Filtering**: Blocks Type-5 LSAs (external routes)
- **Default Route Injection**: Area Border Routers inject default route
- **Reduced Routing Tables**: Minimizes memory and processing requirements
- **Topology Simplification**: Eliminates external route complexity

### Not-So-Stubby Areas (NSSA)
- **Limited External Route Support**: Allows Type-7 LSAs for selective external routes
- **ABR Translation**: Converts Type-7 to Type-5 at area boundaries
- **Hybrid Architecture**: Combines stub benefits with external route capability
- **ASBR Support**: Permits Autonomous System Boundary Routers within area

## Network Design Impact
- **Hierarchical Scaling**: Reduces routing overhead in large OSPF domains
- **Traffic Engineering**: Controls external route propagation patterns
- **Resource Optimization**: Minimizes router memory and CPU utilization
- **Fault Isolation**: Contains routing instability within area boundaries

## Connection Potential
- Links to [[checkpoint-ospf-area-border-router-architecture]]
- Connects to [[checkpoint-ospf-virtual-link-backbone-connectivity]]
- Relates to [[checkpoint-ospf-external-route-redistribution]]
- Supports [[checkpoint-ospf-multi-instance-configuration]]
- Integrates with [[checkpoint-bgp-ospf-redistribution-patterns]]

## Source Quality
- **Primary Source**: Check Point R81.20 Gaia Advanced Routing Guide
- **Credibility Score**: 9/10
- **Validation Method**: Official vendor documentation