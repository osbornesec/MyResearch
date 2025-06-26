---
state: fleeting
type: checkpoint-management-atomic
created: 2025-06-17
source: "Check Point R81.20 Security Management Guide (2022)"
source-section: "Client-Based vs. Clientless"
source-credibility: 9
management-domain: "mobileaccess"
integration-points: ["ipsec-encryption", "ssl-encryption", "nat-traversal", "client-applications"]
---

# Mobile Access Client Deployment Models

## Core Management Concept
Check Point remote access solutions utilize IPsec and SSL encryption protocols through three deployment models: Client-based (installed applications), Clientless (web browser HTTPS), and On-demand client (browser-installed when necessary), all supporting NAT devices, hotspots, and complex topologies.

## Administrative Context
This flexible deployment approach accommodates diverse remote access requirements and environmental constraints, enabling secure connectivity regardless of network topology complexity while providing appropriate access levels based on client capabilities and organizational security policies.

## Implementation Details
- Client-based deployment installs applications on endpoint computers and devices
- Full corporate resource access according to user access privileges in client-based model
- Clientless deployment uses web browser HTTPS connections for browser-based access
- Web-based corporate resource access typically provided through clientless solutions
- On-demand client installation occurs through web browser when necessary
- Complete corporate resource access provided through on-demand client model
- NAT device, hotspot, and proxy traversal capabilities for complex network environments
- Support for airports, hotels, and other challenging connectivity scenarios

## Integration Requirements
- Requires IPsec and SSL encryption protocol support for secure communications
- Integrates with various network topologies including NAT and proxy environments
- Supports endpoint device management for client application deployment
- Foundation for flexible remote access deployment and diverse connectivity scenario support