---
state: permanent
type: atomic-note
created: 2025-06-17
source-credibility: 10
research-context: check-point-atrg-ipv6-processing
validation-status: verified
connections: 4
---

# IPv6 Performance Impact Memory Requirements

## Core Concept
Enabling IPv6 support on Check Point gateways introduces measurable performance implications including 30% reduction in IPv4 concurrent connection capacity due to increased memory requirements for CoreXL and SecureXL, while IPv6 connection rates are approximately 40% lower than IPv4 rates.

## Memory Impact Metrics
- **IPv4 Connection Reduction**: 30% decrease in concurrent IPv4 connections when IPv6 is enabled
- **Memory Allocation**: Additional memory required for IPv6 versions of CoreXL and SecureXL (Performance Pack)
- **IPv6 Connection Rate**: Approximately 40% lower than corresponding IPv4 connection rates
- **Concurrent Connection Capacity**: IPv6 supports about 50% lower concurrent connections compared to IPv4

## Performance Characteristics
- **Packet Rate Preservation**: IPv4 packet rate and throughput remain unimpacted by IPv6 enablement
- **Connection Rate Stability**: IPv4 connection establishment rates maintain baseline performance
- **Memory-Limited Scaling**: Performance degradation primarily driven by increased memory requirements
- **Architecture Dependency**: Exact performance impact varies based on available system memory

## Operational Considerations
- **Capacity Planning**: Account for reduced connection capacity when designing IPv6-enabled networks
- **Resource Allocation**: Ensure adequate memory provisioning for dual-stack environments
- **Performance Monitoring**: Implement separate metrics tracking for IPv4 and IPv6 connection patterns
- **Scalability Assessment**: Evaluate appliance sizing based on combined IPv4/IPv6 workload requirements

## Related Concepts
- [[ipv6-descriptor-system-performance-evolution]]
- [[check-point-corexl-securexl-performance-optimization]]
- [[enterprise-dual-stack-capacity-planning]]
- [[network-appliance-memory-management-strategies]]

## Source Attribution
Check Point ATRG IPv6 sk92368 - Official Technical Documentation
Credibility: 10/10 - Authoritative vendor documentation