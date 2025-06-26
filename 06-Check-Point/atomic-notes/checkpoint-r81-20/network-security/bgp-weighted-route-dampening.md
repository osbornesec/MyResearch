---
state: fleeting
type: atomic-note
created: 2025-06-17
source-credibility: 9
research-context: check-point-bgp-route-flap-dampening
validation-status: verified
source: "Check Point Gaia Advanced Routing Guide R81.20"
domain: network-management
---

# BGP Weighted Route Dampening Stability Control

## Core Concept
BGP weighted route dampening minimizes flapping route propagation using instability metrics with configurable thresholds (reuse-below, suppress-above, max-flap) and decay timers for reachable/unreachable states, supporting only External BGP (eBGP) routes.

## Research Context
Advanced BGP stability mechanism preventing network instability from propagating route flaps, essential for internet-connected networks requiring protection from upstream routing instabilities and maintaining consistent connectivity.

## Source Quality
- **Primary Source**: Check Point Gaia Advanced Routing Guide R81.20
- **Credibility Score**: 9/10 (Official vendor documentation)
- **Validation Method**: Authoritative Check Point technical documentation with specific eBGP limitation

## Connection Potential
- Links to BGP stability and flap prevention concepts
- Connects to internet routing stability mechanisms
- Associates with network resilience and fault isolation
- Relates to routing policy and traffic engineering considerations