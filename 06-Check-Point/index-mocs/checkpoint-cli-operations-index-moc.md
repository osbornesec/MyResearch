---
type: index-moc
created: 2025-06-17
domain: checkpoint-administration
category: command-line-interface
processing-team: sub-agent-alpha
---

# Check Point CLI Operations - Index MOC

## Overview
Comprehensive reference for Check Point command-line interface operations, organized by functional domain and operational context.

## Certificate Authority Management
- [[checkpoint-cpca-client-command-ca-management]]
  - Hash algorithm configuration
  - Certificate creation processes
  - Multi-domain server context requirements

## License Management Framework
- [[checkpoint-cplic-license-management-framework]]
  - Local, remote, and repository licensing
  - License verification and validation
  - Enterprise license distribution

## Configuration Management
- **cpconfig**: System configuration menu interface
- **cpinfo**: Diagnostic data collection utility
- **cppkg**: Package management operations

## System Control Commands
- **cpstart/cpstop**: Service lifecycle management
- **cprinstall**: Installation and restart coordination
- **cprid**: System identification and status

## Installation Integration Points
- Commands executed during First Time Configuration Wizard
- License activation CLI procedures
- Certificate management during installation
- Service restart requirements post-configuration

## Performance Integration Points
- Commands for SecureXL configuration and monitoring
- Connection template management and statistics
- Performance diagnostic and troubleshooting tools
- System resource monitoring and optimization

## Cross-Domain Coordination
- Multi-domain server context management (mdsenv)
- Cluster coordination and synchronization
- High availability configuration commands

## Usage Patterns
- Expert mode vs. Gaia Clish execution contexts
- Debug mode utilization and output redirection
- Batch operation scripting and automation
- Error handling and recovery procedures