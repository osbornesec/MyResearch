---
state: fleeting
type: research-atomic
created: 2025-06-17
source-credibility: 10
research-context: Check Point Mobile Access ATRG processing
validation-status: verified
source: sk104577 - ATRG Mobile Access Blade
---

# Mobile Access SSL VPN Architecture

## Core Concept
Check Point Mobile Access Software Blade provides enterprise-grade remote access through both Layer-3 VPN and SSL VPN, enabling clientless browser-based access to corporate applications using only ports 80/443.

## Technical Architecture
- **SSL Clientless VPN**: Browser-only access without pre-installed client software
- **Thin Client Support**: Automatic deployment of ActiveX or Java applets when needed
- **Traffic Encryption**: SSL encryption (not IPSec) from client to Mobile Access Blade gateway
- **Dual-Mode Access**: Both clientless and thin client capabilities

## Security Features
- Traffic encrypted using SSL protocol
- Stateful inspection on tunneled traffic
- Integration with firewall, IPS, and antivirus
- Web Intelligence capabilities

## Use Case Advantages
- Eliminates "fat" client software requirements
- Works from any network using standard ports (80/443)
- Supports wireless devices and mobile platforms
- Enables work-from-home and mobile workforce scenarios

## Connection Potential
- Links to: SSL/TLS encryption, VPN protocols, remote access security
- Contrasts with: Traditional IPSec VPN deployment models
- Builds on: Check Point gateway architecture and security blade framework