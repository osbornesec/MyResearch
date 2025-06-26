---
state: fleeting
type: research-atomic
created: 2025-06-17
source-credibility: 9
research-context: maestro-identity-awareness-design
validation-status: verified
source: sk175587 - Identity Based Access Control and Threat Prevention - Design Guidelines - Quantum Maestro
---

# Maestro Browser-Based Authentication Limitations and Solutions

## Core Concept
Maestro Security Groups do not support Identity Awareness Captive Portal when Layer 4 distribution is enabled, requiring specific workarounds for browser-based authentication deployment.

## Primary Limitation
- **L4 distribution conflict**: Captive Portal incompatible with Layer 4 distribution mode
- **Known limitation**: MBS-14460 in supported platform documentation
- **Automatic Logout impact**: Feature not supported with certain workarounds

## Solution Option 1: Disable L4 Distribution
- **Distribution method**: Browser-Based Authentication connections distributed by source/destination IPs
- **Performance trade-off**: Reduced load balancing efficiency for all traffic
- **Feature limitation**: "Automatic Logout" feature not supported

## Solution Option 2: Port-Based Exception
```bash
asg_excp_conf set 9 0 0 <Maestro_Security_Group_IP> 443
```
- **Traffic forwarding**: All TCP port 443 traffic forwarded to SMO Security Group Member
- **Performance warning**: Potential impact on other HTTPS connections using same destination
- **Connection source variety**: Each browser authentication from different source IP requires broad exception

## Solution Option 3: Dedicated PDP Gateway
- **Architecture separation**: PDP instance on dedicated Security Gateway outside Maestro Security Group
- **Identity sharing**: ID sessions shared from dedicated PDP to Maestro Security Group PEP
- **Deployment options**: CloudGuard Network Security Gateways, VSX Virtual Systems, clustered Security Gateways for redundancy

## Research Context
Enterprise authentication architecture constraints and design patterns for scalable security platforms.

## Connection Potential
- Links to Captive Portal deployment concepts
- Connects to L4 distribution and load balancing strategies
- Related to dedicated PDP deployment architectures