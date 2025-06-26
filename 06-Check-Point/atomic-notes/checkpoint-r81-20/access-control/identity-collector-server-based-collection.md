---
state: fleeting
type: research-atomic
created: 2025-06-17
source-credibility: 10
research-context: checkpoint-identity-awareness-guide-r81-20
validation-status: verified
---

# Identity Collector Server-Based Collection

## Core Concept
Identity Collector is a dedicated client agent installed on Windows Servers that collects information about identities and their associated IP addresses from multiple identity sources and sends it to Check Point Security Gateways for identity enforcement.

## Supported Identity Sources
- Microsoft Active Directory Domain Controllers
- Cisco Identity Services Engine (ISE) Servers (versions 2.0, 2.1, 2.2)
- NetIQ eDirectory Servers

## Query Pool Architecture
- **Query Pool**: Object containing multiple Identity Sources
- Each Query Pool assigned to one Identity Awareness Gateway
- Identity Collector can connect to multiple Identity Sources simultaneously
- Centralized collection from diverse identity infrastructure

## Operational Model
1. Identity Collector connects to configured Identity Sources in Query Pools
2. Collects identity and IP address mapping information
3. Sends consolidated identity data to assigned Identity Awareness Gateways
4. Enables identity enforcement across heterogeneous environments

## Multi-Domain Example
- Asia.com domain: 4 AD Domain Controllers → Asia Identity Awareness Gateway
- Euro.com domain: 6 AD Domain Controllers → Europe Identity Awareness Gateways
- Single Identity Collector managing multiple domain identity collection

## Technical Benefits
- Centralized identity collection from multiple sources
- Support for heterogeneous identity infrastructure
- Scalable architecture for enterprise environments
- Consolidation of identity data for policy enforcement

## Research Context
Enterprise-grade identity collection solution for complex, multi-source identity environments requiring centralized management.

## Source Quality
- **Primary Source**: Check Point Identity Awareness Administration Guide R81.20
- **Credibility Score**: 10/10
- **Validation Method**: Official Check Point documentation

## Connection Potential
Links to Active Directory Integration, Cisco ISE Integration, Multi-Domain Architecture, Enterprise Identity Management