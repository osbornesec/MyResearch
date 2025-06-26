---
state: fleeting
type: research-atomic
created: 2025-06-17
source-credibility: 9
research-context: check-point-qos-traffic-management
validation-status: verified
---

# QoS Acceleration Support SecureXL and CoreXL

## Core Concept
After clean install or upgrade to R81.20, QoS supports SecureXL and CoreXL acceleration technologies, with both technologies enabled by default to enhance QoS performance.

## Acceleration Technologies
- **SecureXL**: Packet acceleration technology for enhanced throughput
- **CoreXL**: Multi-core processing acceleration for improved performance
- **Default Status**: Both enabled automatically after R81.20 installation/upgrade
- **QoS Integration**: Full support for accelerated packet processing

## R77 Policy Limitations
**Unsupported Features with Acceleration Enabled:**
- **IPSO**: Legacy operating system compatibility
- **R77.10 and Earlier**: Security Gateways below R77.10 version
- **SmartView Monitor**: QoS views don't correctly display SecureXL-accelerated traffic

## Compatibility Requirements
- **Policy Type**: Recommended QoS policies required for acceleration support
- **Express Limitation**: Express policies do not support hardware acceleration
- **Feature Dependencies**: Advanced QoS features require acceleration-compatible configurations

## Performance Benefits
- **Packet Acceleration**: Increased packet processing throughput
- **Multi-Core Utilization**: Efficient use of multi-core Security Gateway hardware
- **Scalability Enhancement**: Improved performance for high-traffic environments
- **Resource Optimization**: Better utilization of Security Gateway processing capabilities

## Migration Considerations
- **Legacy Policy Impact**: R77 and earlier policies may need feature modifications
- **Monitoring Adaptation**: SmartView Monitor QoS views require adjustment for accelerated traffic
- **Feature Trade-offs**: Some legacy features incompatible with acceleration benefits

## Disable Option
**Configuration Path**: "Disabling QoS Acceleration Support" on page 112
- **Use Case**: When legacy features required
- **Impact**: Loss of performance acceleration benefits
- **Compatibility**: Enables R77 feature compatibility

## Research Context
Performance optimization feature that leverages Check Point's acceleration technologies to enhance QoS throughput and scalability in enterprise environments.

## Source Quality
- **Primary Source**: Check Point R81.20 QoS Administration Guide
- **Credibility Score**: 9/10
- **Validation Method**: Official vendor technical documentation

## Connection Potential
- Links to SecureXL and CoreXL performance technologies
- Connects to QoS policy type selection and feature planning
- Relates to hardware optimization and enterprise scalability strategies