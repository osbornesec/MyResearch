---
title: CheckPoint Maestro Core Architecture - MHO Failover Mechanisms
source-credibility: 9/10
verification-status: verified
sources: Official CheckPoint Documentation
---

# CheckPoint Maestro Core Architecture - MHO Failover Mechanisms

## Verified Answer

CheckPoint Maestro implements sophisticated failover mechanisms for the Maestro Hyperscale Orchestrator (MHO):

### High Availability Architecture
- **Active-Standby Pairs**: Orchestrators operate in active-standby configuration
- **Active Orchestrator Responsibilities**:
  - Maintains BGP/OSPF adjacencies
  - Handles HyperSync synchronization
  - Distributes traffic via virtual MAC addresses
- **Failover Time**: <1 second using VRRP-like election mechanism

### Manual Failover Procedures
Gateway-level failover uses `clusterXL_admin` commands:
```bash
# Force member to standby
[Expert@Gateway]$ clusterXL_admin down -p

# Restore to active
[Expert@Gateway]$ clusterXL_admin up -p
```
This triggers seamless session migration to backup gateways via HyperSync state replication.

### Auto-Scaling Capabilities (R81.20+)
- **Dynamic Capacity Management**: Orchestrators monitor CPU/throughput thresholds
- **Automatic Actions**:
  - Provisioning spare gateways into Security Groups during traffic surges
  - Decommissioning underutilized units during off-peak periods
- **Resource Optimization**: Elastic scaling based on real-time demands

### Failover Detection and Recovery
- **Health Monitoring**: Continuous health checks between orchestrators
- **State Synchronization**: HyperSync maintains connection states across failover events
- **Traffic Redistribution**: Automatic ECMP recalculation upon orchestrator failure

## Source Verification
- **Primary Sources**: Check Point Maestro Administration Guides R81.10, R81.20
- **Credibility**: Official vendor documentation and datasheets
- **Verification Method**: Cross-referenced failover procedures across multiple official guides
- **Last Updated**: 2025

## Additional Context
- Standby orchestrators maintain warm state for rapid activation
- Session persistence maintained through HyperSync during failover events
- Zero packet loss design for stateful connections during planned failovers