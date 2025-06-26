---
state: fleeting
type: atomic-note
created: 2025-06-17
source-credibility: 9
research-context: check-point-ospf-route-classification
validation-status: verified
source: "Check Point Gaia Advanced Routing Guide R81.20"
domain: network-management
---

# OSPF Route Types Classification System

## Core Concept
OSPF uses four route types for path selection priority: Intra-area (same area destinations), Interarea (other OSPF area destinations), ASE (external AS destinations from Type 5 LSAs), and NSSA ASE (external AS destinations from Type 7 LSAs).

## Research Context
Fundamental OSPF route preference hierarchy determining path selection when multiple route types exist to the same destination, essential for understanding OSPF forwarding behavior and troubleshooting routing decisions.

## Source Quality
- **Primary Source**: Check Point Gaia Advanced Routing Guide R81.20
- **Credibility Score**: 9/10 (Official vendor documentation)
- **Validation Method**: Authoritative Check Point technical documentation

## Connection Potential
- Links to OSPF path selection algorithm concepts
- Connects to LSA type processing and route calculation
- Associates with route preference and metric concepts
- Relates to external route redistribution and area design implications