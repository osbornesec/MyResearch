---
state: permanent
type: atomic-note
created: 2025-06-17
domain: checkpoint-systems
category: monitoring-diagnostics
source-credibility: 9
validation-status: verified
---

# Check Point mdsstat - Multi-Domain Server Status Monitoring

## Core Concept
**mdsstat** is a Check Point command-line utility that provides comprehensive status monitoring and diagnostic information for Multi-Domain Server (MDS) environments, displaying real-time operational metrics for domain management servers and their associated domains.

## Primary Functions
- **Domain Status Monitoring**: Real-time status of individual domains within MDS environment
- **CMA Status Display**: Customer Management Application health and operational state
- **Resource Utilization**: Memory, CPU, and process monitoring for domain management
- **Connection Status**: Inter-domain communication and synchronization status
- **Performance Metrics**: Throughput and response time statistics for domain operations

## Command Syntax and Usage
```bash
# Basic status display
mdsstat

# Detailed domain-specific information
mdsstat -d [domain_name]

# Continuous monitoring mode
mdsstat -m

# Performance statistics
mdsstat -p
```

## Key Output Metrics
- **Domain State**: Active, Inactive, or Error states for managed domains
- **CMA Process Status**: Customer Management Application operational health
- **Memory Usage**: Per-domain memory allocation and utilization
- **Connection Count**: Active management connections per domain
- **Synchronization Status**: Policy and configuration sync state between domains

## Integration Context
- **Multi-Domain Management**: Essential component of enterprise MDS monitoring
- **Performance Troubleshooting**: Primary diagnostic tool for domain performance issues
- **Capacity Planning**: Provides baseline metrics for scaling domain infrastructure
- **Health Monitoring**: Automated monitoring system integration capability
- **Enterprise Operations**: Critical for large-scale Check Point deployments

## Operational Significance
The mdsstat command serves as the primary monitoring interface for Multi-Domain Server environments, providing administrators with real-time visibility into domain health, resource utilization, and operational status across complex enterprise security infrastructure.

## Connection Potential
Links to: [[checkpoint-multidomain-management-ai-agent-coordination]], [[checkpoint-cpview-comprehensive-system-monitoring]], [[checkpoint-cpstat-performance-monitoring]], [[multi-domain-enterprise-management-architecture]]