---
state: fleeting
type: atomic-note
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-access-control-policy
validation-status: verified
---

# Access Control Policy Structure

## Core Concept
Access Control Policy consists of unified simple and granular rules that control access from specified sources to specified destinations over specified protocols, forming the foundation of network security enforcement.

## Security Architecture Context
Serves as the primary traffic filtering mechanism in Check Point security architecture, implementing the fundamental "who can access what" security decisions at the network level.

## Key Components
- **Access Control Rule Base**: Core rules defining allowed and denied traffic flows
- **NAT Rule Base**: Network Address Translation rules for address modification
- **Desktop Rule Base**: Client-side security policies for remote access scenarios
- **Unified Policy Structure**: Integration of simple and granular rule types
- **Identity Awareness Integration**: Support for user and role-based access control

## Rule Structure Elements
Each access control rule includes source objects, destination objects, VPN communities, services and applications, actions (Accept/Drop/Reject/Auth), time restrictions, tracking options, and installation targets.

## Source Quality
- **Primary Source**: Check Point R81.20 Security Gateway Administration Guide (2022)
- **Credibility Score**: 9/10
- **Validation Method**: Official vendor documentation

## Connection Potential
Links to NAT policy implementation, desktop security policies, Identity Awareness software blade, rule base management, and traffic inspection mechanisms.