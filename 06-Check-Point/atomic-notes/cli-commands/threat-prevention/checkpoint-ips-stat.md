---
state: permanent
type: atomic-note
created: 2025-06-17
source-credibility: 8
research-context: checkpoint-security-gateway-commands
validation-status: verified
---

# Check Point IPS Stat Command - Intrusion Prevention Status Display

## Core Concept
The `ips stat` command displays Check Point Security Gateway intrusion prevention system (IPS) operational status and configuration overview for monitoring purposes.

## Command Output Components
- **Active IPS Profile**: Currently loaded protection profile name
- **IPS Status**: Enabled/Disabled operational state
- **Update Version**: Currently installed IPS signature database version
- **Global Detect**: On/Off status for global threat detection
- **Bypass Under Load**: On/Off status for high-traffic handling mode

## Usage Context
- **Quick Status Check**: Rapid verification of IPS operational state
- **Troubleshooting**: First-step diagnosis for IPS-related issues
- **Configuration Validation**: Confirm expected profile and settings are active
- **Monitoring**: Regular health checks of intrusion prevention functionality

## Related Commands
- `ips stats <IP>`: Detailed 20-second statistics collection for specific gateway
- `ips update`: IPS signature database update management
- `fw ctl ips`: Advanced IPS kernel-level control interface

## Operational Notes
Command provides summary-level information for operational overview rather than detailed performance metrics or threat statistics.