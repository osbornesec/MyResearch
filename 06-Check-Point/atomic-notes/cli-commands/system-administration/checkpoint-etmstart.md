---
state: permanent
type: atomic-note
created: 2025-06-17
source-credibility: 8
research-context: checkpoint-qos-management
validation-status: verified
---

# CheckPoint ETMStart QoS Service Initialization

## Core Concept
The `etmstart` command initiates the Quality of Service (QoS) Software Blade on CheckPoint Security Gateways by starting the QoS daemon (fgd50) and fetching QoS policies from management servers.

## Technical Function
- **Primary Action**: Starts QoS services and loads configuration policy
- **Daemon Process**: Initiates fgd50 (QoS daemon)
- **Policy Integration**: Fetches QoS policy from management servers
- **Service Scope**: Enables traffic shaping and prioritization features

## Operational Context
- **Target System**: CheckPoint Security Gateway
- **Service Domain**: Quality of Service management
- **Policy Dependency**: Requires QoS policy configuration from management
- **Service Isolation**: Does not affect other firewall services unless QoS interaction exists

## Connection Potential
- [[checkpoint-qos-daemon-fgd50]]
- [[checkpoint-quality-of-service-policy-management]]
- [[checkpoint-traffic-shaping-prioritization]]
- [[checkpoint-software-blade-architecture]]