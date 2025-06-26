---
state: fleeting
type: research-atomic
created: 2025-06-17
source-credibility: 9
research-context: check-point-qos-traffic-management
validation-status: verified
---

# QoS Deployment Topology Requirements

## Core Concept
QoS requires specific network topology configurations to ensure all managed traffic passes through the QoS gateway for proper bandwidth management and traffic control.

## Fundamental Requirements
- **Complete Traffic Visibility**: All traffic on managed lines must pass through the QoS gateway
- **Dedicated Physical Interfaces**: Each managed line requires separate physical interface connection
- **No Interface Sharing**: Two managed lines cannot share same physical interface
- **Router Separation**: Two network segments cannot connect to same router

## Prohibited Topologies
**Hub Configuration Issues:**
- Traffic can pass between routers through hub without QoS awareness
- QoS gateway cannot monitor or control inter-router communications
- Bandwidth management ineffective for bypassed traffic

**Shared Router Problems:**
- Traffic may pass between networks directly through router
- QoS gateway lacks visibility into inter-network communications
- Cannot manage bandwidth for router-to-router traffic flows

## Correct Deployment Pattern
- **Direct Router Connections**: Routers connect directly to QoS gateway interfaces
- **No Bypass Paths**: All network traffic forced through QoS enforcement point
- **Complete Visibility**: QoS gateway sees all inter-network communications
- **Effective Control**: Full bandwidth management capability across all managed links

## Scalability Constraints
- **Interface Limitation**: QoS supports maximum interfaces supported by Security Gateway platform
- **Physical Interface Requirement**: Each managed line needs dedicated interface
- **Network Segmentation**: Proper network design required for QoS effectiveness

## Design Implications
- **Infrastructure Planning**: Network topology must be designed around QoS requirements
- **Router Placement**: Strategic router positioning to ensure traffic visibility
- **Interface Allocation**: Sufficient physical interfaces required for all managed segments
- **Traffic Engineering**: All inter-network traffic must traverse QoS gateway

## Verification Methods
- **Traffic Flow Analysis**: Confirm all managed traffic passes through QoS gateway
- **Interface Monitoring**: Verify no traffic bypasses QoS enforcement
- **Topology Validation**: Review network design for compliance with requirements

## Research Context
Critical deployment architecture principle that determines QoS effectiveness and bandwidth management capability across enterprise networks.

## Source Quality
- **Primary Source**: Check Point R81.20 QoS Administration Guide
- **Credibility Score**: 9/10
- **Validation Method**: Official documentation with topology diagrams

## Connection Potential
- Links to Security Gateway interface configuration and network design
- Connects to enterprise network architecture and traffic engineering
- Relates to QoS policy effectiveness and bandwidth management scope