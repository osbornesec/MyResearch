---
state: fleeting
type: checkpoint-management-atomic
created: 2025-06-17
source: "Check Point R81.20 Security Management Guide (2022)"
source-section: "Configuring the NAT Policy"
source-credibility: 9
management-domain: "nat"
integration-points: ["automatic-nat", "manual-nat", "nat46-translation", "nat64-translation", "firewall-blade"]
---

# NAT Policy Configuration Framework

## Core Management Concept
NAT (Network Address Translation) policy configuration provides IP address translation for IPv4 and IPv6 environments through Automatic NAT Rules, Manual NAT Rules, NAT46 Rules (IPv4-to-IPv6), and NAT64 Rules (IPv6-to-IPv4) with advanced settings and Access Control Policy integration.

## Administrative Context
This essential network infrastructure capability enables address translation for security and connectivity purposes, protecting internal network identity while facilitating communication between different IP address spaces and providing flexible translation methods for diverse network requirements.

## Implementation Details
- Firewall Software Blade feature providing IPv4 and IPv6 address translation
- Security protection through internal IP address concealment from Internet
- Source IP address, destination IP address, and TCP/UDP port translation capabilities
- Automatic NAT Rules created by Management Server based on object NAT settings
- Manual NAT Rules created manually with object and method selection
- NAT46 Rules provide IPv4-to-IPv6 translation for protocol transition
- NAT64 Rules enable IPv6-to-IPv4 translation for backward compatibility
- Advanced NAT settings configuration for specialized translation requirements

## Integration Requirements
- Integrates with Firewall Software Blade for address translation enforcement
- Requires Access Control Policy installation for NAT rule deployment
- Supports IPv4 and IPv6 environments with bidirectional translation capabilities
- Foundation for network security enhancement and multi-protocol communication workflows