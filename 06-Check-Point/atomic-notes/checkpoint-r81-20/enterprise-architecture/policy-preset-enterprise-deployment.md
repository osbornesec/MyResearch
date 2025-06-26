---
state: fleeting
type: research-atomic
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-multidomain-enterprise-architecture
validation-status: verified
source: "Check Point R81.20 Multi-Domain Security Management Administration Guide"
---

# Policy Preset Enterprise Deployment Pattern

## Core Concept
Policy Presets are collections of Security Gateways or Policy Packages that enable efficient policy installation planning and management in large Multi-Domain Server environments with scheduling capabilities.

## Preset Architecture Types
- **Gateway-Based Presets**: Policies installed on all Security Gateways in the preset collection
- **Policy Package-Based Presets**: All Policy Packages installed simultaneously on their enforcement targets
- **Cross-Domain Support**: Presets can include Security Gateways from different domains
- **Mixed Policy Support**: Gateways with different or identical policies in single preset

## Enterprise Scheduling Features
- **Time Zone Management**: SmartConsole client time for one-time installations
- **Multi-Domain Server Time**: Server time zone for recurring installations
- **Recurring Schedules**: Automated policy installation on scheduled intervals
- **Day and Hour Specification**: Precise scheduling control for enterprise operations

## Installation Architecture
- **Parallel Installation**: Simultaneous policy installation across multiple targets
- **Skip Mechanisms**: Automatic skipping of gateways without initial policy installation
- **Enforcement Target Validation**: Policy installation only on appropriate Security Gateways
- **Post-Initial Support**: Presets available only after first-time policy installation

## Enterprise Management Benefits
- **Time Efficiency**: Reduced time for large-scale policy deployments
- **Operational Control**: Better management of policy installation processes
- **Automated Operations**: Scheduled installations reduce manual intervention
- **Scalable Deployment**: Support for large numbers of gateways and policy packages

## Multi-Domain Optimization
- **Cross-Domain Coordination**: Policy installation across multiple domain boundaries
- **Centralized Control**: Single point of control for distributed policy deployment
- **Resource Optimization**: Efficient use of network and server resources
- **Administrative Efficiency**: Reduced complexity in large enterprise environments

## Connection Potential
- Links to Global Assignment deployment patterns
- Connects to Security Gateway policy enforcement
- Relates to Multi-Domain policy management
- Associates with enterprise operational scheduling