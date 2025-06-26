---
state: fleeting
type: atomic-note
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-desktop-policy
validation-status: verified
---

# Desktop Policy Structure

## Core Concept
Desktop Policy provides client-side access control for Remote Access VPN clients, consisting of Inbound Rules (controlling connections directed at client machines) and Outbound Rules (controlling connections initiated by client machines).

## Security Architecture Context
Extends Security Gateway policy enforcement to remote client endpoints, ensuring consistent security policy application regardless of client location when connected via VPN.

## Key Components
- **Inbound Rules**: Control traffic directed toward the remote client machine
- **Outbound Rules**: Control traffic initiated from the remote client machine
- **Policy Server Integration**: Requires IPsec VPN and Policy Server Software Blades
- **Desktop Security Enablement**: Must be activated in the Policy Package
- **Client-Side Enforcement**: Policy downloaded and enforced locally on client machines

## Rule Structure Elements
Desktop rules include source objects, user group specifications, service definitions, actions (Accept/Block/Encrypt), tracking options, and comments.

## Prerequisites
Requires Security Gateway configuration with IPsec VPN and Policy Server Software Blades enabled, plus Desktop Security activation in the Policy Package.

## Source Quality
- **Primary Source**: Check Point R81.20 Security Gateway Administration Guide (2022)
- **Credibility Score**: 9/10
- **Validation Method**: Official vendor documentation

## Connection Potential
Links to Remote Access VPN configuration, Policy Server Software Blade, IPsec VPN infrastructure, and client endpoint security management.