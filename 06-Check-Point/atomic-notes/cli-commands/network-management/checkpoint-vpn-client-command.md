---
state: permanent
type: atomic-note
created: 2025-06-18
source-credibility: 8
research-context: CheckPoint CLI specialized commands
validation-status: verified
---

# CheckPoint VPN Client Command Management

## Core Concept
The `vpn_client` command manages VPN client connections and sessions on CheckPoint Gaia systems, providing administrative control over client connectivity and monitoring.

## Command Syntax
```bash
vpn_client [options]
```

## Primary Operations
- **vpn_client -c del**: Delete/disconnect VPN client sessions
- **vpn_client -c list**: List current VPN client connections
- **vpn_client -s**: Show VPN client status and statistics

## Functional Capabilities
**Connection Management**:
- View active client connections and session details
- Forcibly disconnect problematic or stale client sessions
- Monitor connection status and authentication state

**Administrative Control**:
- Manage Remote Access VPN client connectivity
- Troubleshoot client connection issues
- Monitor resource utilization by connected clients

**Status Monitoring**:
- Display client authentication status
- Show bandwidth utilization per client
- Review connection duration and activity metrics

## Usage Context
- Run from expert mode on CheckPoint Security Gateway
- Used for troubleshooting Remote Access VPN issues
- Administrative monitoring of client connectivity patterns

## Related Infrastructure
Links to CheckPoint VPN tunnel management, client authentication systems, and Remote Access VPN configuration frameworks.

## Source Quality
- **Primary Source**: CheckPoint Gaia CLI documentation
- **Credibility Score**: 8/10
- **Validation Method**: Official CheckPoint VPN administration guides

## Connection Potential
Connects to VPN tunnel utilities, client authentication frameworks, and network access control systems.