---
state: permanent
type: atomic-note
created: 2025-06-20
source-credibility: 9
research-context: CheckPoint Maestro session state management
validation-status: verified
---

# CheckPoint Maestro HyperSync Session State Consistency

## Core Concept
HyperSync provides stateful failover for Maestro Security Groups using a three-tier backup model with continuous connection table synchronization. Each connection maintains Primary SGM (active processing), Local Backup (same site, <5ms latency), and Remote Backup (secondary site, ≤50ms latency) for comprehensive resilience.

## Technical Architecture
- **Selective synchronization** excludes ephemeral connections via Delayed Notifications feature
- **Sub-second replication** latency over dedicated Site-Sync VLANs
- **Delta synchronization** propagates only connection state changes after initial full sync
- **Distributed locking** prevents multiple SGMs from updating same connection simultaneously

## Failover Performance
- **Local failures**: <200ms backup activation time
- **Site failures**: 1-3 second remote backup activation
- **Session persistence**: 99.9999% (six-nines) during hardware failures
- **CPU load reduction**: 15-20% through selective synchronization of short-lived connections

## Configuration Parameters
- **Delayed Notifications**: `g_fw ctl set int fw_cluster_use_delay_sync 1`
- **Sync threshold**: 3-second delay for HTTP/FTP connections
- **VLAN configuration**: Dedicated Site-Sync VLANs for inter-site communication
- **Connection ownership**: Distributed across SGMs with automatic load balancing

## Source Quality
- **Primary Sources**: CheckPoint R81 Maestro Administration Guide, HyperSync Technical Documentation
- **Credibility Score**: 9/10 (Official technical documentation with NSS Labs validation)
- **Validation Method**: Verified through NSS Labs testing and official CheckPoint guides

## Connection Potential
- Links to Correction Layer state synchronization integration → [[checkpoint-maestro-correction-layer-asymmetric-routing]]
- Connects to SGM failover and redundancy mechanisms → [[checkpoint-maestro-smo-master-election-mechanism]]
- Related to dual-site disaster recovery configurations
- Integrates with connection table memory management strategies → [[checkpoint-maestro-memory-allocation-patterns]]
- Performance analysis: [[checkpoint-maestro-hypersync-performance-impact]]
- Cross-domain link: [[checkpoint-hypersync-bandwidth-calculation-formula]] (AI domain research)