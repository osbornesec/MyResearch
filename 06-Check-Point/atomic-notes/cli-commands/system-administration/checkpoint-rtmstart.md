---
state: permanent
type: atomic-note
created: 2025-06-17
source-credibility: 8
research-context: checkpoint-real-time-monitoring-commands
validation-status: verified
connections: 3
review-frequency: monthly
---

# CheckPoint rtmstart Command Manual Daemon Startup

## Core Concept
The `rtmstart` command manually initiates the SmartView Monitor daemon on CheckPoint Security Gateways, enabling Real Time Monitoring (RTM) functionality for traffic analysis and system resource tracking.

## Technical Function
- **Primary Purpose**: Starts the RTM daemon process when automatic startup fails
- **Monitoring Scope**: Traffic statistics, resource usage, interface status, virtual link monitoring
- **Administrative Access**: Provides enhanced visibility for troubleshooting and performance analysis
- **Integration**: Works with SmartView Monitor for centralized management visibility

## Operational Context
Manual RTM daemon startup is typically required when:
- Automatic daemon initialization fails during system boot
- RTM monitoring stops functioning due to process crashes
- Administrative reset of monitoring services is needed
- Troubleshooting requires fresh monitoring session initiation

## Connection Potential
Links to CheckPoint monitoring architecture, daemon management, and performance troubleshooting methodologies.