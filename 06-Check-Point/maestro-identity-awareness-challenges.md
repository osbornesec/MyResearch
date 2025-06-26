---
state: fleeting
type: research-atomic
created: 2025-06-17
source-credibility: 9
research-context: maestro-identity-awareness-design
validation-status: verified
source: sk175587 - Identity Based Access Control and Threat Prevention - Design Guidelines - Quantum Maestro
---

# Maestro Identity Awareness Core Design Challenges

## Core Concept
Maestro Security Groups require specialized handling of identity updates to ensure all updates for the same user/machine are processed by the same Security Group Member, which then synchronizes the Identity Awareness database across all members.

## Primary Challenge
Different identity updates related to the same user/machine can be distributed between different Security Group Members, creating inconsistency and synchronization issues in the Identity Awareness database.

## Solution Architecture
- **Centralized processing**: All updates for same identity handled by single Security Group Member
- **Database synchronization**: Identity Awareness database synchronized from processing member to all other members
- **Load balancing bypass**: Specific traffic excluded from normal Maestro load balancing

## Technical Implementation Mechanism
Starting from R81.10, `asg_excp_conf` command forwards specific inbound connections to SMO Security Group Member:
```bash
asg_excp_conf set <Type> <Source IP> <Source Port> <Destination IP> <Destination Port>
```

## Version-Specific Support
- **R81 and lower**: Traffic distribution prevents ID Sharing working as expected
- **R81.10+ and R81 Take 42+**: Inbound Identity Sharing connections forwarded to SMO by default
- **IPv4 only**: Command supports only IPv4 connections
- **15 exception limit**: Maximum 15 exceptions (global for Traditional VSX)

## Research Context
Enterprise identity management architecture for high-performance scalable security platforms.

## Connection Potential
- Links to Maestro architecture and load balancing concepts
- Connects to Identity Awareness PDP/PEP communication patterns
- Related to VSX and virtual system identity management