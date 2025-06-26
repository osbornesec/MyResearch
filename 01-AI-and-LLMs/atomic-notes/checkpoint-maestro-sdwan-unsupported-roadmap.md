---
state: permanent
type: research-atomic
created: 2025-06-20
source-credibility: 9
research-context: CheckPoint Maestro SD-WAN integration analysis
validation-status: verified
connections: ["sdwan-integration", "hyperscale-limitations", "network-architecture"]
---

# CheckPoint Maestro SD-WAN Unsupported with Roadmap Commitment

## Core Concept
CheckPoint Maestro Security Groups and VSX Gateways **do not currently support SD-WAN functionality**, requiring dedicated gateway workarounds, though official roadmap indicates planned future integration.

## Technical Details
- **Current Status**: "SD-WAN with Maestro is not supported at the moment"
- **Workaround**: Deploy dedicated CheckPoint gateway between Maestro Security Group and Internet
- **Roadmap Items**: Maestro SD-WAN integration, Geo-Cluster compatibility planned
- **Cloud Limitation**: Only CloudGuard Network Security Gateways support SD-WAN, not Maestro in Azure/AWS

## Research Context
This represents a significant architectural trade-off where enterprises must choose between hyperscale throughput (Maestro) or native SD-WAN capabilities (standalone gateways) until roadmap features materialize.

## Source Quality
- **Primary Sources**: CheckPoint official documentation, community engineering confirmations
- **Credibility Score**: 9/10
- **Validation Method**: Multiple official sources confirm limitation and roadmap status

## Connection Potential
Links to [[hyperscale-sdwan-tradeoffs]], [[enterprise-network-architecture]], [[checkpoint-roadmap-planning]]