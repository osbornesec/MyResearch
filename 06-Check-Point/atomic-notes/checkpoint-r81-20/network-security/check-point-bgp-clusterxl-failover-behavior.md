---
created: 2025-06-17T12:05:00Z
state: permanent
type: atomic-note
source: sk175923 - BGP behavior during ClusterXL failover
source-credibility: 9
research-context: Check Point ClusterXL High Availability
validation-status: verified
connections: 4
---

# Check Point BGP ClusterXL Failover Behavior

## Core Concept
Border Gateway Protocol (BGP) sessions in Check Point ClusterXL environments drop during failover events, causing 10-60 second service interruptions unless Graceful Restart mechanisms are properly configured on both cluster members and BGP peers.

## BGP Failover Process
During ClusterXL failover:
1. **BGP session termination**: Standby member assumes Cluster VIP addresses
2. **Route deletion**: RFC 4271 mandates deletion of all BGP routes from both members
3. **Session re-establishment**: New Active member must re-learn all BGP routes
4. **Service interruption**: 10-60 seconds typical BGP negotiation duration

## Graceful Restart Configuration

### Essential Requirements
- **Bilateral implementation**: Must be enabled on cluster members AND BGP peers
- **Complete coverage**: All BGP peers must support Graceful Restart Helper
- **Route preservation**: Deleted BGP routes maintained as kernel routes during transition

### Command Implementation
```bash
set bgp external remote-as <AS Number> peer <IP Address> graceful-restart on
save config
```

## Advanced Configuration with BFD Integration

### Bidirectional Forwarding Detection (BFD) Setup
For BFD environments requiring zero outage:
- **cBIT detection**: Control plane failure detection must be enabled
- **cBIT value**: Must be set to 0 (control plane dependent) by cluster
- **Helper configuration**: BGP peers must support cBIT detection in BFD

### BFD Commands
```bash
set bgp external remote-as <AS Number> peer <IP Address> ip-reachability-detection on
set bgp external remote-as <AS Number> peer <IP Address> ip-reachability-detection check-control-plane-failure on
save config
```

## Critical Success Factors
- **Symmetric configuration**: Matching setup required on all BGP peers
- **Vendor compatibility**: Some routers support BFD without cBIT detection
- **Testing requirement**: Full configuration testing strongly recommended
- **Graceful Restart timer**: Default 360 seconds for route retention

## Service Impact
- **Without Graceful Restart**: 10-60 second outage guaranteed during failover
- **With proper Graceful Restart**: Near-zero downtime achievable
- **Incomplete configuration**: Graceful Restart failure results in full outage

## Connection Potential
Links to Check Point ClusterXL configuration best practices, BGP routing optimization, and high availability design principles.