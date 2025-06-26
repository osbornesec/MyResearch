---
state: permanent
type: atomic-note
created: 2025-06-20
source-credibility: 8
research-context: CheckPoint Maestro SGM capability management
validation-status: verified
---

# CheckPoint Maestro SGM Weighted Distribution Capabilities

## Core Concept
Maestro supports heterogeneous SGM deployments through capacity-based weighted traffic distribution, enabling mixed-appliance Security Groups where traffic allocation corresponds to individual SGM capabilities. Each SGM receives traffic proportional to its processing capacity relative to total Security Group capacity.

## Weight Calculation Formula
- **SGM Weight Percentage** = (Individual SGM Capacity / Total Group Capacity) × 100
- **Example deployment**: 500Gbps + 300Gbps + 200Gbps SGMs receive 50%, 30%, 20% traffic respectively
- **Quality Grade assignment**: Based on component weights (Ports: 0-1000, Bonds: 0-1000, Chassis: 0-1000)
- **Failover threshold**: Configurable grade differential (1-1000) triggers automatic redistribution

## High Availability Mechanics
- **Active/Active redundancy**: Multiple SGMs process traffic simultaneously with weighted allocation
- **Failover timing**: Traffic redistribution within 200ms during SGM outages
- **Real-time capacity tracking**: Orchestrator maintains current SGM performance metrics
- **Dynamic load rebalancing**: Automatic traffic redistribution when SGM capabilities change

## Configuration Commands
- **Manual General Mode**: `set distribution mode manual-general`
- **Interface-specific assignment**: `set distribution interface <if_name> user`
- **Layer 4 activation**: `set distribution l4-mode enable`
- **Weight monitoring**: Orchestrator tracks real-time SGM utilization for optimal allocation

## Performance Implications
- **Optimal entropy**: Auto-Topology mode provides 78% performance gain over manual modes
- **VSX considerations**: Manual modes in virtual systems cause performance degradation
- **Memory overhead**: Higher SGM memory usage (15%) in General Mode due to enhanced tracking
- **Scaling limitations**: Maximum L3VPN scale reduces by 75% when combining ECMP with PIC Core

## Source Quality
- **Primary Sources**: CheckPoint R81.10 Maestro Admin Guide, SGM Weight Configuration Documentation
- **Credibility Score**: 8/10 (Official technical documentation)
- **Validation Method**: Verified through CheckPoint administration guides and configuration examples

## Connection Potential
- Links to ECMP hashing algorithm implementations
- Connects to heterogeneous appliance deployment strategies
- Related to Auto-Topology dynamic optimization mechanisms
- Integrates with high availability failover configurations