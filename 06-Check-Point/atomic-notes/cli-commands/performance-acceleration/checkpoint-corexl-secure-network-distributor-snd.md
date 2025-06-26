---
state: fleeting
type: research-atomic
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-atrg-corexl-processing
validation-status: verified
source: "Perplexity Research on Check Point CoreXL Architecture"
---

# Check Point CoreXL Secure Network Distributor (SND)

## Core Concept
The Secure Network Distributor (SND) acts as the traffic orchestrator in CoreXL architecture, processing inbound traffic from network interfaces and intelligently distributing packets to CoreXL Firewall instances while directly handling SecureXL-accelerated traffic.

## Technical Implementation
- **Traffic Reception**: Captures and examines incoming packets from network interfaces
- **Path Decision**: Routes accelerated traffic through SecureXL fast path, bypassing FW instances
- **Load Distribution**: Distributes non-accelerated packets among available CoreXL FW instances
- **Core Assignment**: Typically runs on dedicated CPU cores separate from FW workers
- **Performance Optimization**: Prevents single-core bottlenecks through intelligent packet routing

## Research Context
Central component of CoreXL multi-core firewall architecture, serving as the "captain" that coordinates traffic flow and CPU resource utilization for optimal performance.

## Source Quality
- **Primary Source**: Perplexity research on Check Point CoreXL architecture
- **Credibility Score**: 9/10
- **Validation Method**: Multi-source verification from Check Point technical documentation

## Connection Potential
- Links to network traffic load balancing
- Connects with packet classification systems
- Relates to CPU resource orchestration
- Associates with firewall acceleration technologies