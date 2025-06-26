---
state: fleeting
type: research-atomic
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-vsx-virtualization-architecture
validation-status: verified
source: Check Point R81.20 VSX Administration Guide
---

# VSX Cluster High Availability

## Core Concept
A VSX Cluster consists of two or more identical, interconnected VSX Gateways for continuous data synchronization and transparent failover. VSX supports High Availability for both VSX Gateways and Virtual Systems.

## Failover Characteristics
- If Active VSX Cluster Member fails, all sessions continue running on Standby VSX Cluster Member
- Users stay connected without noticing failover
- No re-authentication required on failover
- Selective Sync capability to control VSX Cluster Member synchronization

## Technical Implementation
Continuous data synchronization between cluster members ensures seamless operation and maintains session state across all Virtual Systems during failover events.

## Research Context
High availability architecture that ensures business continuity and uninterrupted security services in VSX virtualized environments.

## Source Quality
- **Primary Source**: Check Point R81.20 VSX Administration Guide
- **Credibility Score**: 9/10
- **Validation Method**: Official Check Point documentation

## Connection Potential
- Links to: VSX Gateway, ClusterXL technology, failover mechanisms
- Relates to: Business continuity, session persistence, synchronization
- Enables: Enterprise-grade availability for virtualized security