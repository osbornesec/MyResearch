---
state: permanent
type: research-atomic
created: 2025-06-20
source-credibility: 9
research-context: CheckPoint Maestro advanced integration analysis
validation-status: verified
connections: ["hyperscale-networking", "overlay-networks", "enterprise-security"]
---

# CheckPoint Maestro VXLAN Unsupported Limitation

## Core Concept
CheckPoint Maestro hyperscale platforms explicitly **do not support VXLAN interfaces** due to architectural constraints between VXLAN's UDP-based encapsulation and Maestro's HyperSync state synchronization technology.

## Technical Details
- **Known Limitation IDs**: PMTR-60874 (R81.10), MBS-3246 (R82)
- **Scope**: All Scalable Platforms including Maestro and Chassis
- **Root Cause**: VXLAN's 50-byte header expansion exceeds Maestro's MTU thresholds
- **Traffic Steering Issue**: Orchestrators cannot map VXLAN tunnel endpoints (VTEPs) to security group members

## Research Context
This limitation significantly impacts hyperscale overlay network deployments where VXLAN is the standard encapsulation protocol for network virtualization and multi-tenant segmentation.

## Source Quality
- **Primary Sources**: CheckPoint R81.10/R82 Gaia Admin Guides, Official documentation
- **Credibility Score**: 9/10
- **Validation Method**: Multiple official CheckPoint sources confirm limitation

## Connection Potential
Links to [[hyperscale-security-architecture]], [[overlay-network-limitations]], [[enterprise-network-virtualization]]