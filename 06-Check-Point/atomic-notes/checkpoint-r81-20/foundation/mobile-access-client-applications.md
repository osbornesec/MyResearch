---
state: fleeting
type: checkpoint-management-atomic
created: 2025-06-17
source: "Check Point R81.20 Security Management Guide (2022)"
source-section: "Mobile Access Clients"
source-credibility: 9
management-domain: "mobileaccess"
integration-points: ["capsule-workspace", "capsule-connect", "windows-ipsec", "secure-containers"]
---

# Mobile Access Client Applications

## Core Management Concept
Mobile Access clients include Capsule Workspace (secure container app for websites, file shares, Exchange), Capsule Connect (full L3 tunnel app for network access), and Check Point Mobile for Windows (IPsec VPN client) providing comprehensive mobile device connectivity solutions.

## Administrative Context
This diverse client application portfolio addresses different organizational mobility requirements and device types, enabling secure access to corporate resources through specialized applications optimized for specific use cases and security models.

## Implementation Details
- Capsule Workspace creates secure container on mobile devices for isolated corporate access
- Internal website, file share, and Exchange server access through Capsule Workspace
- Capsule Connect provides full Layer 3 tunnel for comprehensive network application access
- Complete mobile application network connectivity through Capsule Connect tunneling
- Check Point Mobile for Windows delivers IPsec VPN connectivity for Windows platforms
- Secure IPsec VPN authentication and connectivity for Windows endpoint devices
- Specialized client applications optimized for different access patterns and security requirements

## Integration Requirements
- Requires mobile device platforms for Capsule application deployment
- Integrates with Exchange servers and file sharing systems for corporate resource access
- Supports Windows platforms for IPsec VPN client deployment
- Foundation for comprehensive mobile workforce connectivity and secure corporate resource access workflows