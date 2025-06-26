---
state: fleeting
type: atomic-note
created: 2025-06-17
source-credibility: 9
research-context: Check Point performance troubleshooting methodologies
validation-status: verified
source: sk167553 - Performance Investigation Procedure
---

# Three-Stage Performance Investigation Protocol

## Core Concept

A systematic three-stage methodology for diagnosing network performance issues that establishes environmental baselines before proceeding to health checks and detailed investigation flows.

## Methodology Framework

### Stage 1: Setup & Environment Check
**Purpose**: Establish expected behavior baseline
- **Hardware sizing**: Identify appliance type and expected capabilities
- **Policy assessment**: Document active security blades and configurations  
- **Traffic characterization**: Analyze blend (DNS, IPSEC, HTTPS, IPv4/IPv6)
- **Expected throughput**: Use Appliance Sizing Tool for baseline expectations
- **Traffic history**: Review cpview_history and cpdiag for traffic patterns
- **Expected packet flows**: Map traffic distribution based on policy and blend

### Stage 2: Basic Health Check
**Purpose**: Identify immediate system health concerns
- **Network health validation**: Test frame loss with ping through firewall
- **Interface stability**: Check ifconfig for carrier errors and RX-DRP rates
- **Sync network health**: Validate cluster sync statistics (cphaprob syncstat)
- **System stability**: Assess cluster state and hardware sensors
- **Resource utilization**: Check memory, connections, and fragments

### Stage 3: Investigation Flows
**Purpose**: Systematic problem isolation and root cause analysis
- **Latency investigation**: Differentiate system-wide vs specific traffic patterns
- **CPU utilization analysis**: Identify whether all cores or specific cores are stressed
- **Traffic distribution**: Analyze load balancing across CoreXL instances
- **Connection analysis**: Detect heavy connections consuming disproportionate resources

## Diagnostic Decision Tree

**If no core stressed**: Focus on drops analysis
**If all cores stressed**: Locate system bottleneck and top processes
**If some cores stressed**: Investigate load distribution and heavy connections
**If specific traffic patterns**: Analyze zone-specific or connection-specific issues

## Research Context

This protocol provides a structured approach to performance troubleshooting that prevents random diagnostic attempts and ensures comprehensive system assessment before deep-dive analysis.

## Connection Potential

Links to: system administration methodologies, DevOps diagnostic frameworks, network performance optimization, systematic troubleshooting procedures