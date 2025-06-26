---
state: fleeting
type: research-atomic
created: 2025-06-17
source-credibility: 9
research-context: Check Point R81.20 VPN connectivity modes
validation-status: verified
source: "Check Point R81.20 Remote Access VPN Administration Guide"
domain: "VPN Connectivity"
---

# Visitor Mode TCP Port 443 Tunneling

## Core Concept
Visitor Mode enables remote users to tunnel all protocols through a regular TCP connection on port 443, overcoming firewall and proxy restrictions that block traditional IPsec connectivity.

## Technical Implementation
- **Protocol Encapsulation**: Wraps all client protocols within TCP connections
- **Port Strategy**: Uses port 443 (HTTPS) which is commonly allowed through firewalls
- **Traffic Scope**: Supports tunneling of all protocols, not just HTTP/HTTPS

## Primary Use Cases
- **Restrictive Networks**: Hotel networks, public WiFi, or corporate firewalls blocking IPsec
- **Proxy Environments**: Networks requiring all traffic to pass through HTTP proxies
- **Limited Access**: Users restricted to HTTP and HTTPS traffic only

## Configuration Elements
- **Interface Selection**: Can be enabled on all interfaces or specific gateway interfaces
- **Service Definition**: Customizable port and protocol configuration through Visitor Mode Service
- **User Restrictions**: Can be applied to specific user groups or all remote access users

## Network Architecture Benefits
- **Firewall Traversal**: Bypasses IPsec-blocking network security policies
- **Protocol Flexibility**: Maintains full protocol support despite TCP encapsulation
- **Transparent Operation**: Users experience normal application functionality

## Gateway Integration
- **Software Blade Requirement**: Requires IPsec VPN Software Blade enablement
- **Community Integration**: Works within Remote Access VPN Community framework
- **Policy Coordination**: Integrates with existing VPN access rules and authentication