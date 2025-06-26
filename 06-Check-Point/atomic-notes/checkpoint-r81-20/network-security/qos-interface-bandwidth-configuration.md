---
state: fleeting
type: research-atomic
created: 2025-06-17
source-credibility: 9
research-context: check-point-qos-traffic-management
validation-status: verified
---

# QoS Interface Bandwidth Configuration

## Core Concept
QoS interface configuration requires specification of available bandwidth in inbound and outbound directions with rates that must correspond to actual physical interface capacity for proper traffic control.

## Configuration Parameters
- **Inbound Active**: Enable QoS traffic control for incoming traffic direction
- **Inbound Rate**: Specify available bandwidth for inbound traffic processing
- **Outbound Active**: Enable QoS traffic control for outgoing traffic direction  
- **Outbound Rate**: Specify available bandwidth for outbound traffic processing

## Rate Specification Requirements
- **Physical Capacity Matching**: Defined rates must correspond to actual interface hardware capacity
- **No Automatic Detection**: QoS cannot verify defined rates match interface capabilities
- **Manual Configuration**: Administrator responsible for accurate capacity specification

## Rate Mismatch Consequences
**Under-Specification** (Rate < Physical Capacity):
- QoS uses only specified capacity
- Excess physical capacity remains unused
- Potential bandwidth underutilization

**Over-Specification** (Rate > Physical Capacity):
- QoS cannot control traffic correctly
- Traffic management accuracy compromised
- Performance optimization ineffective

## Best Practices
- **Capacity Assessment**: Determine actual interface physical bandwidth before configuration
- **Conservative Specification**: Slightly under-specify to account for protocol overhead
- **Regular Validation**: Verify configuration matches any infrastructure changes
- **Documentation**: Maintain records of interface capacity and QoS rate settings

## Interface Types Support
- **Ethernet Interfaces**: Standard network interface bandwidth specification
- **WAN Interfaces**: Critical for Frame Relay, T1, and other WAN connection types
- **Virtual Interfaces**: May require special consideration for virtualized environments
- **Bonded Interfaces**: Total bonded capacity specification required

## Research Context
Critical QoS configuration step that establishes bandwidth baseline for all traffic management calculations and policies.

## Source Quality
- **Primary Source**: Check Point R81.20 QoS Administration Guide
- **Credibility Score**: 9/10
- **Validation Method**: Official vendor configuration documentation

## Connection Potential
- Links to QoS deployment architecture and interface management
- Connects to bandwidth allocation and traffic shaping mechanisms
- Relates to network infrastructure planning and capacity management