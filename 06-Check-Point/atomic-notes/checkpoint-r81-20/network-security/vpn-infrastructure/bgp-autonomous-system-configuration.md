---
state: permanent
type: atomic-note
created: 2025-06-17
source-credibility: 9
research-context: check-point-networking-documentation
validation-status: verified
sk-reference: sk95967
domain: cybersecurity-infrastructure
---

# BGP Autonomous System Configuration

## Core Concept

Border Gateway Protocol (BGP) implementation on Check Point Gaia OS enables inter-Autonomous System routing by exchanging network reachability information through AS path attributes and route advertisements between BGP peers.

## Configuration Components

**Router ID**: Unique IPv4 address identifying the router within the Autonomous System, can be any valid IP address regardless of local interface assignments.

**Local AS Number**: Identifies the Autonomous System (e.g., AS 65000), enabling proper BGP path selection and loop prevention mechanisms.

**Peer Group Configuration**: Defines remote AS numbers and establishes BGP neighbor relationships for route exchange.

## Network Architecture

BGP operates over TCP for reliable message delivery, contrasting with IGPs that use datagram services. AS path information prevents routing loops and enables policy-based route selection.

## Cluster Considerations

For ClusterXL/VRRP deployments, BGP configuration should use cluster Virtual IP addresses to maintain session continuity during failover events.

## Route Filtering

Inbound and outbound route filters control route advertisement and acceptance, enabling granular policy control over inter-AS routing decisions.

## Connection Potential

Links to dynamic routing protocols, autonomous system design, route policy implementation, and Check Point cluster networking architecture.