---
state: fleeting
type: research-atomic
created: 2025-06-17
source-credibility: 10
research-context: Check Point VPN Core ATRG processing
validation-status: verified
source: sk104760 - ATRG VPN Core (Site to Site)
---

# IPSec Transport vs Tunnel Mode Architecture

## Core Concept
IPSec supports two distinct operational modes with different encapsulation approaches: Transport mode for host-to-host communication and Tunnel mode for network-to-network VPN connectivity.

## Transport Mode Characteristics
- **Layer Protection**: Protects OSI Layers 4-7 (Transport and Application layers)
- **Header Preservation**: Keeps original IP header intact for routing
- **Payload Encryption**: Only data layer of original packet is encrypted/authenticated
- **NAT Limitations**: IP addresses cannot be translated when authentication header is used
- **Use Case**: Connection between VPN peers, not suitable for perimeter gateways
- **Port Translation**: Port numbers cannot be modified due to hash protection

## Tunnel Mode Characteristics
- **Layer Protection**: Protects OSI Layers 3-7 (Network through Application layers)
- **Full Encapsulation**: Entire IP packet encrypted/authenticated and encapsulated with new IP header
- **Network Connectivity**: Creates VPNs for network-to-network, host-to-network, and host-to-host communications
- **NAT Support**: Supports NAT traversal (NAT-T) mechanisms
- **Check Point Implementation**: Used in both Site-to-Site VPN and Client-to-Site VPN

## Technical Implementation Differences
- **Transport Mode**: Original IP routing preserved, limited protection scope
- **Tunnel Mode**: New IP header added, protects networks behind VPN peers
- **Security Scope**: Transport protects connection endpoints, Tunnel protects entire network segments

## Use Case Applications
- **Transport Mode**: Private host-to-host communications, direct peer connections
- **Tunnel Mode**: Router-to-router site linking, remote user access, network extension
- **Enterprise Deployment**: Check Point primarily uses Tunnel mode for comprehensive network protection

## Connection Potential
- Links to: Network layer protocols, VPN architecture design, NAT traversal mechanisms
- Contrasts with: Application layer security protocols (TLS, SSH)
- Builds on: IP packet structure and network routing fundamentals