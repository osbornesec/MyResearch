---
state: fleeting
type: checkpoint-command-atomic
created: 2025-06-18
source-credibility: 9
research-context: checkpoint-admin-foundation-cliguide
validation-status: verified
command-family: multi-domain-management
source-document: checkpoint-admin-foundation-cliguide-processed-2025-06-17.md
---

# CheckPoint mdsstart_customer - Domain Management Server Startup Command

## Command Purpose
Starts a specific Domain Management Server that was previously stopped with the mdsstop_customer command, enabling selective management of individual domains within a Multi-Domain Server environment.

## Syntax Pattern
```
mdsstart_customer <IP address or Name of Domain Management Server>
```

## Key Parameters
- **IP address or Name**: Identifier for the specific Domain Management Server to start
- **Name with spaces**: Must be surrounded with quotes ("Name of Domain Management Server")

## System Context
Essential Multi-Domain Server management command that provides granular control over individual Domain Management Servers without affecting the entire Multi-Domain Server infrastructure or other domains.

## Usage Requirements
- Command must be executed on the Multi-Domain Server
- Target Domain Management Server must have been previously stopped with mdsstop_customer
- Domain Management Server must be properly configured and registered
- Proper naming conventions must be followed for domains with spaces in names

## Operational Flow
1. Validates target Domain Management Server identification
2. Initiates startup sequence for specified domain
3. Establishes domain-specific processes and services
4. Restores domain management functionality
5. Re-enables domain-specific policy management and monitoring

## Usage Scenarios
- Selective domain restart after maintenance
- Recovery from domain-specific service failures
- Staged startup of multiple domains
- Troubleshooting individual domain issues
- Load management in large Multi-Domain environments

## Related Commands
- **mdsstop_customer**: Stops specific Domain Management Server
- **mdsstart**: Starts entire Multi-Domain Server and all domains
- **mdsstat**: Shows status of Multi-Domain Server processes

## Connection Potential
Links to [[checkpoint-multi-domain-server-architecture]], [[checkpoint-domain-management-operations]], [[checkpoint-selective-service-management]], [[checkpoint-mds-troubleshooting-methodology]]