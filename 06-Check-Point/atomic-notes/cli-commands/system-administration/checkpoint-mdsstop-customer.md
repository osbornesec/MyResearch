---
state: fleeting
type: checkpoint-command-atomic
created: 2025-06-18
source-credibility: 9
research-context: checkpoint-admin-foundation-cliguide
validation-status: verified
command-family: multi-domain-management
source-lines: 636
---

# CheckPoint mdsstop_customer - Domain Management Server Shutdown

## Command Purpose
Stops a specific Domain Management Server within a Multi-Domain Server environment, allowing selective management of individual domain services without affecting the entire MDS infrastructure.

## Syntax Pattern
```
mdsstop_customer <IP address or Name of Domain Management Server>
```

## Parameters
- **IP address or Name**: Identifier for the specific Domain Management Server to stop
- **Name with spaces**: Must be surrounded with quotes ("Name of Domain Management Server")

## System Context
Essential multi-domain management command for selective domain service control in enterprise environments where multiple Domain Management Servers operate under a single Multi-Domain Server infrastructure.

## Operational Scope
Provides granular control over domain services, enabling maintenance, troubleshooting, or configuration changes on specific domains without disrupting other active Domain Management Servers in the MDS environment.

## Usage Scenarios
- Selective domain maintenance without MDS-wide impact
- Troubleshooting specific domain management issues
- Configuration changes requiring domain service restart
- Emergency shutdown of problematic domain services

## Complementary Commands
- **mdsstart_customer**: Starts the stopped Domain Management Server
- **mdsstop**: Stops entire Multi-Domain Server and all domains
- **mdsstart**: Starts entire Multi-Domain Server infrastructure

## Connection Targets
- checkpoint-multi-domain-server-architecture
- checkpoint-domain-management-server-lifecycle
- checkpoint-selective-service-management-patterns