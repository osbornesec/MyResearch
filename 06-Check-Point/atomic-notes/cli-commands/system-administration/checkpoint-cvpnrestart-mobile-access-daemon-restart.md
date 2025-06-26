---
state: permanent
type: atomic-note
created: 2025-06-18
source-credibility: 8
research-context: CheckPoint CLI VPN Management
validation-status: verified
connections: 2
review-frequency: monthly
---

# CheckPoint cvpnrestart Mobile Access Daemon Restart Command

## Core Concept

The `cvpnrestart` command restarts all Mobile Access (MAB) Software Blade services on a CheckPoint Security Gateway, providing a clean restart of Remote Access VPN functionality for both managed and unmanaged clients while preserving user sessions.

## Command Syntax

```bash
cvpnrestart [--with-pinger]
```

## Command Functionality

- **Purpose**: Restart Mobile Access VPN daemon and related services
- **Session Impact**: Preserves existing user sessions but closes TCP connections
- **Service Scope**: All MAB Software Blade services
- **Execution Mode**: Expert mode required

## Operational Characteristics

- **Connection Handling**: Closes all TCP connections during restart
- **User Impact**: May cause loss of unsaved work due to connection termination
- **Platform Support**: Compatible with Scalable Platforms (Maestro/Chassis)
- **Optional Enhancement**: `--with-pinger` flag restarts Pinger service for ActiveSync/OWA notifications

## Use Cases

- Apply configuration changes made with `cvpnd_settings`
- Resolve Mobile Access VPN service issues
- Refresh VPN daemon state after parameter modifications
- Restore VPN service functionality after troubleshooting

## Source Quality

- **Primary Source**: CheckPoint CLI documentation
- **Credibility Score**: 8/10
- **Validation Method**: Official CheckPoint technical documentation and implementation guides

## Connection Potential

Links to `[[checkpoint-cvpnd-settings-vpn-daemon-configuration]]` for configuration context and `[[checkpoint-mobile-access-troubleshooting-methodology]]` for service restoration workflows.