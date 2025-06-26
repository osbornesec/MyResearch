---
state: permanent
type: atomic-note
created: 2025-06-18
last-reviewed: 2025-06-18
connections: 3
review-frequency: monthly
source-credibility: 8
research-context: checkpoint-cli-commands
validation-status: verified
---

# CheckPoint RTM Drv Kernel Driver Management

## Core Concept

The `rtm drv` command in CheckPoint Security Gateways manages the SmartView Monitor kernel driver, which is the core component of the Real-Time Monitoring (RTM) module that enables real-time traffic and performance monitoring on Security Gateways and cluster members.

## Command Functionality

- **Driver Control**: Start, stop, or show status of the SmartView Monitor kernel driver
- **Monitoring Enable/Disable**: Controls the availability of real-time monitoring functionality
- **System Integration**: Manages kernel-level integration for traffic inspection and reporting
- **Service Management**: Ensures RTM module operational readiness

## Technical Implementation

Command options:
```bash
rtm drv on      # Start the kernel driver
rtm drv off     # Stop the kernel driver
rtm drv stat    # Show kernel driver status
```

The kernel driver:
1. Integrates with the Security Gateway kernel
2. Inspects and tracks network traffic in real-time
3. Collects system and traffic metrics
4. Reports performance data to monitoring interfaces

## Driver Functionality

- **Traffic Inspection**: Kernel-level packet analysis and tracking
- **Metrics Collection**: Real-time performance and utilization data gathering
- **Bandwidth Monitoring**: Network resource utilization tracking
- **Policy-Based Monitoring**: Traffic shaping and resource management support

## Use Cases

- **Performance Monitoring**: Enable real-time visibility into gateway performance
- **Troubleshooting**: Start monitoring services for diagnostic purposes
- **Maintenance**: Stop/start driver for system maintenance operations
- **Status Verification**: Confirm RTM driver operational status

## Connection Potential

Links to [[checkpoint-rtm-monitor-traffic-analysis]], [[checkpoint-rtm-rtmd-daemon-control]], [[checkpoint-smartview-monitor-architecture]]

## Source Quality
- **Primary Source**: CheckPoint RTM Documentation
- **Credibility Score**: 8/10
- **Validation Method**: Official administrative guide cross-reference