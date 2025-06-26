---
state: permanent
type: atomic-note
created: 2025-06-17
domain: checkpoint-vpn
source-credibility: 9
research-context: checkpoint-diagnostic-commands
validation-status: verified
connections: 2
review-frequency: quarterly
---

# Check Point cvpn_ver Command - Mobile Access VPN Version Display

## Core Concept
The `cvpn_ver` command displays version information for the Check Point Mobile Access Software Blade (formerly SecureClient Mobile/SSL Network Extender), providing essential version details for VPN client and server components.

## Command Syntax
```bash
cvpn_ver
```

## Primary Output Components
- **Mobile Access Blade Version**: Installed Mobile Access Software Blade version
- **Build Information**: Specific build number for the VPN components
- **Component Status**: Active VPN service blade status
- **Installation Date**: When the Mobile Access blade was installed

## Diagnostic Use Cases
- **VPN Troubleshooting**: Verify Mobile Access blade version during connectivity issues
- **Client Compatibility**: Ensure server-client version compatibility
- **Support Documentation**: Provide version details for Check Point technical support
- **Upgrade Planning**: Assess current Mobile Access version before updates

## Alternative Commands
- `fw ver -k`: Extended version information including kernel details
- `cpinfo`: Comprehensive system information including VPN components

## Connection Potential
- [[checkpoint-fw-ver-comprehensive-version-information]]
- [[checkpoint-mobile-access-architecture-overview]]