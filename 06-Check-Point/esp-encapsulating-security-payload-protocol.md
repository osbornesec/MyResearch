---
state: fleeting
type: research-atomic
created: 2025-06-17
source-credibility: 10
research-context: Check Point VPN Core ATRG processing
validation-status: verified
source: sk104760 - ATRG VPN Core (Site to Site)
---

# ESP Encapsulating Security Payload Protocol

## Core Concept
Encapsulating Security Payload (ESP) is a core IPSec protocol suite member providing origin authenticity, integrity, and confidentiality protection for IP packets using IP protocol number 50.

## Security Services Provided
- **Origin Authenticity**: Verifies packet source legitimacy
- **Integrity Protection**: Ensures packet content hasn't been modified
- **Confidentiality**: Encrypts packet contents for privacy
- **Flexible Configuration**: Supports encryption-only and authentication-only configurations

## Technical Architecture
- **Direct IP Operation**: Operates directly on top of IP layer
- **Protocol Number**: Uses IP protocol number 50
- **Portless Protocol**: No port numbers required for ESP communication
- **Header Structure**: Contains SPI (Security Parameter Index) and Sequence Number

## Anti-Replay Protection
- **Sequence Number**: Must be incremented by 1 for every packet sent
- **Replay Attack Defense**: Enables VPN peer to detect and prevent packet replay attacks
- **Monotonic Incrementation**: Sequential numbering prevents duplication and reordering attacks

## Protocol Integration
- **IPSec Suite Member**: Core component of IPSec protocol family
- **Network Layer Security**: Provides Layer 3 security services
- **VPN Foundation**: Essential protocol for VPN tunnel establishment and maintenance

## Connection Potential
- Links to: IPSec protocol suite, anti-replay mechanisms, packet authentication
- Builds on: IP protocol stack and cryptographic security services
- Integrates with: IKE key exchange and Security Association management