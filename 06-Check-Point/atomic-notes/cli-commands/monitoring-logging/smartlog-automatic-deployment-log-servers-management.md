---
state: permanent
type: atomic-note
created: 2025-06-17
source-credibility: 10
research-context: check-point-atrg-smartlog-processing
validation-status: verified
connections: 2
---

# SmartLog Automatic Deployment Log Servers Management

## Core Concept
Check Point SmartLog deploys automatically on every Log Server and Security Management Server without requiring additional configuration. In Multi-Domain Management environments, SmartLog installs on Multi-Domain Server (MDS) and all Domain Management Servers/Domain Log Servers.

## Deployment Patterns
- **Standard Environment**: Automatic installation on all Log Servers and Security Management Servers
- **Multi-Domain Management**: Automatic installation on MDS and Domain Management/Log Servers  
- **Manual Enablement Required**: SmartLog must be manually enabled on each Domain Management Server/Domain Log Server
- **LEA Integration**: Option to load logs from older version Log Servers using Log Export API

## Configuration Requirements
- **Zero Configuration**: Standard deployment requires no additional configuration
- **Multi-Domain Activation**: Manual enablement required per domain for distributed query functionality
- **Version Compatibility**: LEA integration enables backwards compatibility with older log servers

## Operational Implications
- **Ubiquitous Availability**: SmartLog indexing and query capabilities available wherever logs are stored
- **Centralized Analysis**: Single point access to distributed log sources through MDS deployment
- **Legacy Integration**: Seamless integration with existing logging infrastructure through LEA

## Related Concepts
- [[smartlog-distributed-query-multi-domain-capabilities]]
- [[smartlog-architecture-index-server-gui-separation]]
- [[enterprise-security-management-deployment-patterns]]

## Source Attribution
Check Point ATRG SmartLog sk92769 - Official Technical Documentation
Credibility: 10/10 - Authoritative vendor documentation