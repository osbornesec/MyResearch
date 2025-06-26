---
state: fleeting
type: research-atomic
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-vsx-virtualization-architecture
validation-status: verified
source: Check Point R81.20 VSX Administration Guide
---

# VSX Multi-Domain Management Model

## Core Concept
Multi-Domain Security Management enables centralized management of multiple networks, typically of different domains, divisions, or branches. The Multi-Domain Server is the central management node controlling policy databases for each network.

## Architecture Components
- **Multi-Domain Server**: Central management node for all domains
- **Domain Management Server**: Provides full Security Management Server functionality for each domain
- **Main Domain Management Server**: Manages VSX Gateway or VSX Cluster
- **Target Domain Management Server**: Manages specific VSX Virtual System or Virtual Router

## Capacity Characteristics
- 250 Management Domains
- 250 Concurrent Administrators
- 250 Object Databases
- 250 Policies
- 250 Virtual Systems

## Legal Entity Compliance
VSX Gateway can host Virtual Systems managed by different Domain Management Servers, enabling multi-tenant deployments while maintaining legal entity separation as required by Check Point EULA.

## Research Context
Enterprise-scale management architecture for multi-tenant or multi-division VSX deployments requiring administrative separation.

## Source Quality
- **Primary Source**: Check Point R81.20 VSX Administration Guide
- **Credibility Score**: 9/10
- **Validation Method**: Official Check Point documentation

## Connection Potential
- Links to: Domain Management Server, multi-tenant architecture, legal entity separation
- Relates to: Enterprise scalability, administrative delegation
- Enables: Large-scale multi-domain security management