---
state: fleeting
type: research-atomic
created: 2025-06-17
source-credibility: 9
research-context: Check Point Gaia OS Administration
validation-status: verified
source: Check Point Gaia OS R81.20 Administration Guide
---

# Gaia IPv4 Static Routing Configuration

## Core Concept
Gaia IPv4 static routing supports destination networks in CIDR notation with next hop gateway options including normal forwarding, blackhole (silent drop), and reject (ICMP unreachable), featuring priority-based next hop selection (1-8, lower is higher preference), monitored IP reachability detection, ping verification of gateways, and rank-based route selection among multiple routing protocols.

## Research Context
Network routing fundamentals for traffic forwarding decisions and path redundancy, essential for network connectivity design and failover scenarios.

## Source Quality
- **Primary Source**: Check Point Gaia OS R81.20 Administration Guide, November 2022
- **Credibility Score**: 9/10
- **Validation Method**: Official vendor documentation

## Connection Potential
- Links to CIDR notation concepts
- Connects to next hop gateway concepts
- Related to ICMP unreachable concepts
- Links to routing protocol ranking concepts