---
state: permanent
type: atomic-note
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-security-management
validation-status: verified
last-reviewed: 2025-06-17
connections: 0
review-frequency: monthly
---

# Check Point inet_alert Command

## Core Concept

The `inet_alert` command forwards log messages from Check Point Security Gateway alert daemons to external Management Stations (typically at ISP locations) using the Event Logging API (ELA) protocol, enabling ISPs to receive real-time notifications when corporate networks are under attack.

## Technical Implementation

- **Protocol**: Uses Event Logging API (ELA) protocol for alert transmission
- **Requirement**: External Management Station must run ELA Proxy
- **Authentication**: Supports SSL/OPSEC, authenticated OPSEC, or clear connections
- **Default Port**: 18187 (configurable)
- **Execution Mode**: Expert mode only

## Command Syntax

```bash
inet_alert -s <IP Address> [-o] [-a <Auth Type>] [-p <Port>] [-f <Token> <Value>] [-m <Alert Type>]
```

## Authentication Types

- **ssl_opsec**: Connection authenticated and encrypted (default)
- **auth_opsec**: Connection authenticated only
- **clear**: Connection neither authenticated nor encrypted

## Alert Types

Executes OS commands based on alert type:
- **alert**: Popup alert command
- **mail**: Mail alert command  
- **snmptrap**: SNMP trap alert command
- **spoofalert**: Anti-Spoof alert command

## Configuration Integration

Configured through SmartConsole:
1. Global Properties → Log and Alert → Alerts
2. Clear "Send user defined alert no. 1 to SmartView Monitor"
3. Select "Run UserDefined script"
4. Enter inet_alert syntax
5. Install Access Control Policy

## Connection Potential

Links to Check Point alert management, ISP security coordination, ELA protocol implementation, and multi-domain management contexts.