---
state: fleeting
type: atomic-note
created: 2025-06-17
source-credibility: 9
research-context: check-point-administrative-procedures
validation-status: verified
---

# Check Point Configuration Tool (cpconfig)

## Core Concept
The Check Point Configuration Tool (`cpconfig`) provides centralized menu-driven interface for configuring essential Check Point system settings, licenses, administrators, and security components.

## Configuration Domains
- **License Management**: Check Point licenses and contracts administration
- **Administrator Setup**: System administrator account configuration and permissions
- **GUI Client Access**: SmartConsole client connection authorization and setup
- **Certificate Authority**: Internal CA initialization and FQDN configuration
- **Service Control**: Automatic startup configuration for Check Point products
- **Security Infrastructure**: RSA key configuration and certificate fingerprint display

## Operational Context
- Single management interface for critical system configuration tasks
- Menu options vary based on installed products and current configuration
- Multi-Domain environments require `mdsconfig` command instead of `cpconfig`
- Certificate fingerprint display enables secure SmartConsole connection verification

## Administrative Best Practices
- Use for initial system setup and license deployment
- Configure administrators before enabling GUI client access
- Verify certificate fingerprints during SmartConsole connection setup
- Regular review of automatic service startup configuration

## Connection Potential
Links to license management, administrator authentication, SmartConsole deployment, certificate management, and Multi-Domain administration.