---
state: fleeting
type: atomic-note
created: 2025-06-17
source-credibility: 9
research-context: check-point-bgp-load-balancing
validation-status: verified
source: "Check Point Gaia Advanced Routing Guide R81.20"
domain: network-management
---

# BGP ECMP Equal-Cost Multi-Path Load Balancing

## Core Concept
BGP ECMP enables equal-cost multi-path routing strategy overriding standard BGP route selection criteria, supporting load distribution across multiple paths with limitation that mixed iBGP and eBGP routes cannot participate in ECMP.

## Research Context
Performance optimization technique for BGP environments requiring traffic distribution across multiple equivalent paths, essential for enterprise networks with redundant connectivity and bandwidth aggregation requirements.

## Source Quality
- **Primary Source**: Check Point Gaia Advanced Routing Guide R81.20
- **Credibility Score**: 9/10 (Official vendor documentation)
- **Validation Method**: Authoritative Check Point technical documentation with specific limitations

## Connection Potential
- Links to BGP path selection algorithm modifications
- Connects to load balancing and traffic engineering concepts
- Associates with redundant path utilization strategies
- Relates to network performance optimization and bandwidth utilization