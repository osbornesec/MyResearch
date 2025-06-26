---
state: permanent
type: atomic-note
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-installation-procedures
validation-status: verified
domain: checkpoint-administration
category: installation-configuration
---

# Check Point Gaia First Time Configuration Wizard

## Core Concept
The Gaia First Time Configuration Wizard is the mandatory initial setup procedure that configures essential system parameters for newly installed Check Point appliances and open servers.

## Configuration Scope
- **Network Configuration**: IP address, subnet mask, default gateway
- **Administrative Access**: Initial administrator credentials and access methods
- **Security Settings**: Secure Internal Communication (SIC) key establishment
- **System Identity**: Hostname and domain configuration
- **Service Activation**: Initial Check Point service configuration

## Execution Triggers
- Post-installation boot sequence on new systems
- Factory reset recovery procedures
- Clean installation completion
- Blink utility automated configuration alternative

## Critical Dependencies
- Successful Gaia Operating System installation
- Network connectivity for management access
- Valid license availability for service activation
- Administrative access method (console, SSH, WebUI)

## Cross-References
- [[checkpoint-sic-key-establishment-procedures]]
- [[checkpoint-network-configuration-standards]]
- [[checkpoint-blink-automated-deployment]]

## Integration Points
- CLI commands accessed post-configuration (cpconfig, cplic)
- Performance settings requiring initial configuration
- Multi-domain server setup requirements