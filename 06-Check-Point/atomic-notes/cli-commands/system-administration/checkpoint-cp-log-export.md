---
state: permanent
type: atomic-note
created: 2025-06-17
source-credibility: 8
research-context: checkpoint-log-management
validation-status: verified
domain: checkpoint-systems
---

# Check Point cp_log_export Command Interface

## Core Concept
Check Point's `cp_log_export` is a CLI utility for real-time log export to external systems using standardized formats (syslog, CEF, Splunk), enabling integration with SIEM solutions and log management platforms.

## Command Syntax Structure
```bash
# Add new exporter
cp_log_export add name <exporter-name> target-server <ip> target-port <port> protocol <tcp|udp> format <syslog|splunk|cef>

# Show configuration
cp_log_export show

# Modify settings  
cp_log_export set name <exporter-name> <parameter> <value>

# Restart service
cp_log_export restart
```

## Essential Parameters
- **name**: Unique identifier for exporter configuration
- **target-server**: Destination IP address or hostname
- **target-port**: Network port (514 for syslog, 8514 for encrypted)
- **protocol**: Transport method (tcp/udp)
- **format**: Output format (syslog/splunk/cef)

## Filtering Capabilities
- **filter-action-in**: Action-based filtering ("drop,reject,accept")
- **filter-origin-in**: Source-based log filtering
- **filter-blade-in**: Product blade filtering
- **Custom XML**: Advanced filtering logic support

## Security Integration
- **ca-cert**: Certificate authority validation path
- **client-cert**: Client certificate (P12 format)
- **client-secret**: Certificate passphrase
- **domain-server**: Multi-Domain Server environment support

## Operational Context
Primary tool for Check Point log forwarding to external security platforms, supporting encrypted transmission and granular filtering for high-volume enterprise environments.

## Connection Potential
- [[checkpoint-log-management-architecture]]
- [[siem-integration-patterns]]
- [[checkpoint-security-blade-coordination]]
- [[real-time-threat-intelligence-forwarding]]