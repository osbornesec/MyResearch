---
state: fleeting
type: research-atomic
created: 2025-06-17
source-credibility: 9
research-context: Check Point R81.20 endpoint firewall protection
validation-status: verified
source: "Check Point R81.20 Remote Access VPN Administration Guide"
domain: "Endpoint Security"
---

# Desktop Security Policy Centralized Firewall Protection

## Core Concept
Desktop Security provides centralized firewall protection for remote VPN clients through policy enforcement on endpoint computers, protecting remote users with managed security policies downloaded from Policy Servers and enforced locally.

## Centralized Policy Management
- **SmartDashboard Rule Base**: Desktop Security Policy defined in centralized Desktop Rule Base
- **User Group Assignment**: Rules assigned to specific user groups or all users
- **Policy Server Distribution**: Security Management Server downloads policies to Policy Servers
- **Client Policy Download**: Remote access clients download policies from Policy Servers during connection

## Endpoint Firewall Architecture
- **Local Policy Enforcement**: Desktop firewall rules enforced locally on client computers
- **Source/Destination/Service Control**: Rules control traffic based on source, destination, and service
- **Action Specification**: Rules specify Accept, Encrypt, or Drop actions for traffic
- **Remote Protection**: Protects endpoints when outside protected corporate network

## Policy Server Infrastructure
- **Gateway Integration**: Policy Server feature enabled on Remote Access Security Gateways
- **Policy Distribution Point**: Centralized distribution point for Desktop Security Policies
- **Client Synchronization**: Automatic policy synchronization when clients connect
- **High Availability Support**: Multiple Policy Servers for redundancy and load distribution

## Client Support Matrix
- **Endpoint Security VPN**: Full Desktop Security support with integrated firewall
- **Check Point Endpoint Suite**: Comprehensive endpoint security with unified console management
- **SmartEndpoint Integration**: Choice between SmartDashboard and SmartEndpoint firewall management
- **Platform Coverage**: Windows and macOS support with platform-specific features

## Traffic Processing Rules
- **Outbound Encryption**: Traffic to organization encryption domain automatically encrypted
- **Implied Rules**: Background implied rules may allow or block services not explicitly handled
- **Server Protection**: Explicit rules required for connections to client computer servers
- **Inbound Block Rule**: Default inbound implicit block rule prevents unauthorized access

## Administrative Features
- **User Disable Capability**: Configurable option for users to disable firewall policy
- **Policy Customization**: Flexible rule creation for specific organizational requirements
- **Monitoring Integration**: Desktop policy enforcement events logged and monitored
- **Compliance Reporting**: Policy compliance status reporting for administrative oversight

## High Availability Configuration
- **Multiple Policy Servers**: Support for multiple Policy Servers for redundancy
- **Authentication Coordination**: Coordinated authentication between Security Gateway and Policy Server
- **Failover Management**: Automatic failover to alternate Policy Servers
- **User Profile Optimization**: User profile configuration to minimize double authentication