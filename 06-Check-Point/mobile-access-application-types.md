---
state: fleeting
type: research-atomic
created: 2025-06-17
source-credibility: 10
research-context: Check Point Mobile Access ATRG processing
validation-status: verified
source: sk104577 - ATRG Mobile Access Blade
---

# Mobile Access Application Access Types

## Core Concept
Mobile Access provides two distinct access modes: pure clientless access for web-based applications and thin client access for network-level applications.

## Clientless Access Applications
- **Web Applications**: Using Link Translation technology
- **Windows File Shares**: Through CIFS mount functionality
- **Mail Applications**: Webmail for IMAP access
- **Browser-Only Requirement**: No additional software installation needed

## Thin Client Access Applications
- **SNX Network Mode**: Full TCP/UDP network access for administrative users
- **SNX Application Mode**: TCP-only access for non-administrative users
- **Embedded Applications**: Telnet, SSH, FTP, RDP, Jabber integration
- **Automatic Deployment**: Thin client software deployed on-demand

## Access Control Features
- **User Role Differentiation**: Admin vs non-admin access levels
- **Protocol Support**: Full network (TCP/UDP) or limited (TCP-only)
- **Application Integration**: Native support for common business applications

## Connection Potential
- Links to: Application layer protocols, network access control, user role management
- Contrasts with: Traditional VPN all-or-nothing access models
- Builds on: Application-aware security and granular access control