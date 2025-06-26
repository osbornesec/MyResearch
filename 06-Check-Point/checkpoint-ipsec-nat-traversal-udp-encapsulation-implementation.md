---
state: fleeting
type: research-atomic
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-atrg-vpn-core-processing
validation-status: verified
source: sk104760 - ATRG VPN Core (Site to Site)
---

# Checkpoint IPSec NAT Traversal UDP Encapsulation Implementation

## Core Concept
NAT traversal (NAT-T) enables IPSec VPN connections across NAT gateways by encapsulating ESP packets in UDP, using NAT Discovery payloads for detection and UDP port 4500 for IKE Quick Mode exchanges.

## Technical Implementation
- **UDP Encapsulation**: ESP packets encapsulated in UDP to traverse NAT devices
- **Port Usage**: IKE exchanges moved to UDP port 4500 when NAT-T established
- **NAT Discovery**: NAT-D payload (RFC 3947 Section 3.2) sent in first IKE packet
- **Portless Protocol**: ESP operates on IP protocol 50, requiring UDP wrapper for NAT traversal

## NAT-T Establishment Process
1. **Initiator Action**: Sends NAT-D payload in first IKE packet with interface information
2. **Responder Action**: Responds with own NAT-D payload containing interface data
3. **Peer Detection**: Both parties determine if peer is behind NAT using source interface comparison
4. **Agreement**: NAT-T capability negotiated and established for connection

## Check Point Implementation Characteristics
- **VPN Clients**: Initiate negotiation with NAT-D payload for NAT-T agreement
- **SMB Appliances**: Support NAT-D payload initiation (600/700/1100/1200R/1400/Edge models)
- **Security Gateways**: Support responding to NAT-D payload but do not initiate NAT-D themselves
- **Topology Requirement**: SMB appliances behind NAT should use Hide NAT to prevent central gateway initiation

## Operational Benefits
- **Client-to-Client**: Enables peer-to-peer file sharing and VoIP applications through NAT
- **ESP Traversal**: Allows portless ESP packets to cross NAT boundaries
- **Connection Maintenance**: Maintains IPSec connections across dynamic NAT translations
- **Universal Compatibility**: Works with various NAT implementations and configurations

## Connection Potential
- Links to NAT configuration methodologies
- Connects with UDP port management procedures
- Relates to firewall rule configuration for VPN
- Associates with client connectivity troubleshooting frameworks