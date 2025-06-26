---
state: permanent
type: research-atomic
created: 2025-06-20
source-credibility: 9
research-context: CheckPoint hardware connection scaling analysis
validation-status: verified
---

# CheckPoint Connection Table Scaling Limits by Hardware Model

## Core Concept
CheckPoint hardware models exhibit hierarchical connection scaling capabilities with specific limits: 15600 supports 5-10 million concurrent connections, 26000 scales to 10-32 million connections, and QLS800 achieves 48 million connections with corresponding performance characteristics.

## Hardware Model Specifications
- **15600 Security Gateway**: 5-10 million concurrent connections, 160K connections/second, 28 Gbps firewall throughput
- **26000 Security Gateway**: 10-32 million concurrent connections (scalable with RAM), 550K connections/second, 106.2 Gbps firewall throughput  
- **QLS800 Lightspeed Firewall**: 48 million concurrent connections, 546K connections/second, 796 Gbps firewall throughput
- **Performance Degradation Threshold**: 80-90% connection capacity utilization triggers packet loss and requires scaling intervention

## Memory and Resource Correlation
- **Memory Formula**: Required RAM (GB) = Concurrent Connections ÷ 1,000,000 × 1.5
- **Resource Scaling**: Each 100K concurrent connections consume ~150MB RAM and 0.5 CPU cores
- **Connection Rate Impact**: Higher connection rates require proportional increases in processing cores and memory bandwidth

## Source Quality
- **Primary Source**: CheckPoint official datasheets, performance benchmarks, and hardware specifications
- **Credibility Score**: 9/10 (CheckPoint official documentation with lab validation)
- **Validation Method**: Multi-source verification through official hardware datasheets and performance testing results

## Connection Potential
Critical for capacity planning in enterprise environments, infrastructure scaling decisions, and understanding hardware constraints in high-throughput security deployments.