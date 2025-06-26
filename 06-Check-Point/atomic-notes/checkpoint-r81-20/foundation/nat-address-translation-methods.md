---
state: fleeting
type: checkpoint-management-atomic
created: 2025-06-17
source: "Check Point R81.20 Security Management Guide (2022)"
source-section: "Types of NAT Methods"
source-credibility: 9
management-domain: "nat"
integration-points: ["hide-nat", "automatic-nat", "manual-nat", "security-gateway", "outgoing-interface"]
---

# NAT Address Translation Methods

## Core Management Concept
NAT methods include Hide NAT where Security Gateway changes source IP addresses of all connections from a source to the same IP address, using either the Security Gateway's outgoing interface address or administrator-configured IP addresses for consistent translation.

## Administrative Context
This fundamental translation mechanism provides consistent address mapping for outbound traffic, enabling internal network protection while maintaining reliable communication paths and supporting both automatic interface-based translation and manually specified address assignments.

## Implementation Details
- Hide NAT modifies source IP addresses for all connections from specific sources
- Consistent IP address mapping to single destination address for source traffic
- Security Gateway outgoing interface address as default translation target
- Administrator-configured IP address option for customized translation destinations
- Available for both Automatic NAT Rules and Manual NAT Rules configuration
- Source-to-destination translation maintains connection state and return path routing

## Integration Requirements
- Configured through Automatic NAT Rules based on object NAT settings
- Available in Manual NAT Rules for administrator-defined translation scenarios
- Integrates with Security Gateway interface configuration for default address selection
- Foundation for outbound traffic protection and network address concealment workflows