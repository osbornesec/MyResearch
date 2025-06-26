---
state: fleeting
type: atomic-note
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-performance-tuning
validation-status: verified
source: Check Point Performance Tuning Guide R81.20
---

# CheckPoint fwaccel Command Interface for SecureXL Management

## Core Concept
The fwaccel command family provides comprehensive command-line interface for managing, monitoring, and troubleshooting Check Point SecureXL acceleration features, supporting both IPv4 (fwaccel) and IPv6 (fwaccel6) traffic acceleration.

## Command Categories
- **Configuration control**: fwaccel cfg for acceleration settings
- **Connection management**: fwaccel conns for connection monitoring
- **Statistics and monitoring**: fwaccel stats for performance metrics
- **Debug and troubleshooting**: fwaccel dbg for diagnostic information
- **DoS mitigation**: fwaccel dos for attack protection
- **SYN attack protection**: fwaccel synatk for SYN flood defense

## Platform Variations
- **Security Gateway/ClusterXL**: Standard fwaccel commands in Gaia Clish/Expert mode
- **Scalable Platforms**: g_fwaccel prefix for Expert mode commands
- **IPv6 support**: fwaccel6 commands for IPv6 traffic acceleration
- **Cluster configuration**: Must be applied consistently across all cluster members

## Key Operations
- **Status monitoring**: fwaccel stat shows current acceleration status and mode
- **Performance analysis**: fwaccel stats provides detailed acceleration metrics
- **Connection tracking**: fwaccel conns displays accelerated connection information
- **Acceleration control**: fwaccel on/off enables/disables acceleration features

## Diagnostic Capabilities
- Real-time acceleration statistics and performance counters
- Detailed packet flow analysis and violation reporting
- Connection template utilization and effectiveness metrics
- DoS mitigation and rate limiting configuration and monitoring

## Connection Potential
Links to [[checkpoint-securexl-monitoring]], [[command-line-network-management]], [[performance-monitoring-tools]], [[firewall-troubleshooting-methodology]]