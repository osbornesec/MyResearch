---
state: fleeting
type: research-atomic
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-atrg-corexl-processing
validation-status: verified
source: "Check Point ATRG CoreXL sk98737"
---

# Check Point CoreXL Interface Single Core Constraint

## Core Concept
Network interface affinity in CoreXL can only be assigned to a single CPU core, representing a fundamental architectural constraint that prevents interface load balancing across multiple cores.

## Technical Implementation
- **Single Core Assignment**: `fw ctl affinity -s -i Interface_Name CPU_ID` restricts interface to one core
- **No Multi-Core Support**: Interfaces cannot be bound to multiple CPU cores simultaneously
- **Architectural Limitation**: Design constraint of CoreXL interrupt handling system
- **Performance Implication**: Interface throughput limited by single core processing capacity
- **SND Integration**: Typically interfaces assigned to SND (Secure Network Distributor) cores

## Research Context
Critical architectural constraint in CoreXL design that affects interface performance planning and CPU resource allocation strategies in multi-core firewall deployments.

## Source Quality
- **Primary Source**: Check Point ATRG CoreXL Technical Reference sk98737
- **Credibility Score**: 9/10
- **Validation Method**: Direct extraction from Check Point technical documentation

## Connection Potential
- Links to network interface performance limitations
- Connects with CPU bottleneck analysis
- Relates to interrupt handling architectures
- Associates with multi-core design constraints