---
state: permanent
type: atomic-note
created: 2025-06-17
domain: checkpoint-troubleshooting
source-credibility: 9
validation-status: verified
---

# Check Point Three-Phase Diagnostic Methodology

## Core Concept

Systematic troubleshooting approach for Check Point environments using three distinct phases: Configuration → Networking → Maintenance. This methodology provides structured problem resolution with clear escalation criteria and decision points.

## Three-Phase Framework

### Phase 1: Configuration Verification
- **Policy Installation Validation**: Ensure configurations are properly applied
- **Object Configuration Review**: Verify host objects, blades, and service settings
- **File System Validation**: Check masters file, immutable attributes, and configuration persistence
- **Baseline Configuration Compliance**: Confirm environment matches documented standards

### Phase 2: Networking Validation
- **Connectivity Testing**: Basic ping, traceroute, and protocol-specific validation
- **Service Port Verification**: Test specific ports (TCP/257 for logging, etc.)
- **Socket State Analysis**: Verify established connections and listening services
- **Traffic Flow Analysis**: Use cppcap and fw monitor for packet-level diagnostics

### Phase 3: Maintenance Operations
- **Resource Availability**: Disk space, memory, and CPU utilization
- **Service Health Management**: Daemon restart procedures and service validation
- **Log Management**: File switching, rotation, and storage optimization
- **System Recovery**: Checkpoint restoration and configuration rollback

## Implementation Guidelines

### Decision Point Criteria
- **Phase 1 Failure**: Proceed to network validation regardless of configuration state
- **Phase 2 Failure**: Validate maintenance aspects before configuration changes
- **Phase 3 Failure**: Consider escalation to advanced debugging procedures

### Validation Tools per Phase
- **Configuration**: SmartConsole, cat /etc/fw/conf/masters, lsattr
- **Networking**: nc, ping, traceroute, ss, cpstat
- **Maintenance**: df, watch, fw logswitch, service restarts

## Research Context

Foundational diagnostic methodology extracted from sk38848 (Basic workflow for Logging issues troubleshooting). Applies across Check Point troubleshooting scenarios with domain-specific tool variations.

## Connection Potential

Links to domain-specific troubleshooting procedures, network connectivity frameworks, and system administration methodologies across the vault.