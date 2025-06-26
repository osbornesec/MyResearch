---
state: fleeting
type: research-atomic
created: 2025-06-17
source-credibility: 9
research-context: Check Point R81.20 Mobile Access architecture
validation-status: verified
source: "Check Point R81.20 Mobile Access Administration Guide"
domain: "Mobile Access"
---

# Mobile Access Secure Remote Connectivity Architecture

## Core Concept
Check Point Mobile Access provides enterprise-grade remote connectivity combining Layer 3 VPN and SSL VPN capabilities, enabling secure access to corporate applications from mobile devices and PCs while protecting networks and endpoints from threats.

## Dual-Protocol Architecture
- **Layer 3 VPN**: Traditional IPsec VPN connectivity for comprehensive network access
- **SSL VPN**: Browser-based and application-layer secure connectivity
- **Protocol Selection**: Automatic selection based on client capabilities and security requirements
- **Unified Management**: Single portal and policy framework for both connectivity methods

## Application Access Scope
- **Web Applications**: Browser-accessed corporate applications (inventory, HR, etc.)
- **File Shares**: Network file access with full file operations (read, write, delete)
- **Citrix Services**: XenApp server connectivity for published applications
- **Web Mail Systems**: IMAP/SMTP email access and OWA/Domino integration
- **Native Applications**: IP-based applications through SSL Network Extender

## Mobile Device Integration
- **Cross-Platform Support**: Smartphones, tablets, and traditional computers
- **IPv6 Connectivity**: Portal and Capsule Workspace support for modern networks
- **Multi-Factor Authentication**: SecurID, certificates, and combined authentication methods
- **Device Management**: Integration with MDM solutions for corporate policy enforcement

## Security Framework Integration
- **Authentication Layer**: Multiple login options with various authentication methods
- **Authorization Control**: Granular access policies based on user, device, and application
- **Endpoint Compliance**: Security scanning and policy enforcement before access
- **Session Management**: Secure session handling with configurable timeout and cleanup

## Portal and Client Architecture
- **Mobile Access Portal**: Web-based entry point for application access
- **SSL Network Extender**: Automatic client download for native application connectivity
- **Capsule Workspace**: Secure workspace environment for data protection
- **Multi-Client Support**: Various Check Point mobile apps for different use cases

## Enterprise Deployment Features
- **HTTPS Encryption**: All web application traffic encrypted with SSL/TLS
- **Encrypted Tunneling**: Native application traffic through encrypted SSL tunnels
- **Certificate Management**: Support for client certificates and trusted CA validation
- **High Availability**: Cluster support for enterprise-scale deployments