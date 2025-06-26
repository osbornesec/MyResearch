---
state: fleeting
type: checkpoint-management-atomic
created: 2025-06-17
source: "Check Point R81.20 Security Management Guide (2022)"
source-section: "Managing Policies - Working with Policy Packages"
source-credibility: 9
management-domain: "policy"
integration-points: ["access-control", "threat-prevention", "qos", "desktop-security", "https-inspection"]
---

# Policy Package Management Framework

## Core Management Concept
Policy packages provide unified collections of different policy types (Access Control, Threat Prevention, QoS, Desktop Security, HTTPS Inspection) that are installed together on Security Gateways as cohesive security enforcement units with predefined installation targets for simplified deployment.

## Administrative Context
This comprehensive policy organization framework enables administrators to group related security policies into manageable deployment units, ensuring consistent security posture across gateway installations while supporting different organizational site requirements through customized package configurations.

## Implementation Details
- Access Control policies include Firewall, NAT, Application & URL Filtering, and Content Awareness rules
- Threat Prevention encompasses IPS, Anti-Bot, Anti-Virus, Threat Emulation, and Threat Extraction
- QoS policies provide Quality of Service rules for bandwidth management
- Desktop Security delivers Firewall policies for Endpoint Security VPN clients
- HTTPS Inspection includes rules for Transport Layer Security (TLS) traffic inspection
- Predefined Installation Targets associate packages with specific gateway sets
- Support for different policy packages customized for various organizational site types

## Integration Requirements
- Enforced collectively by Security Gateways after installation completion
- Integrates with gateway installation targets for automated deployment
- Supports search capabilities for network objects and rule base navigation
- Foundation for comprehensive security policy deployment and centralized policy management workflows