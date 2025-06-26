---
state: fleeting
type: research-atomic
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-atrg-corexl-processing
validation-status: verified
source: "Perplexity Research on Check Point CoreXL Best Practices"
---

# Check Point CoreXL CPU Core Separation Best Practice

## Core Concept
Critical CoreXL performance optimization requires that SND (Secure Network Distributor) cores and Firewall Worker cores never share CPU resources, preventing processing contention and ensuring optimal multi-core firewall performance.

## Technical Implementation
- **Dedicated SND Cores**: Assign network interface interrupts to dedicated CPU cores
- **Isolated Worker Cores**: Firewall instances run on separate cores from SND processes
- **No Core Sharing**: Avoid assigning both SND and FW workers to the same CPU core
- **Performance Impact**: Core sharing creates processing bottlenecks and reduces throughput
- **Best Practice**: Reserve Core 0 for SND, Cores 1-N for workers, Core N+1 for OS

## Research Context
Fundamental architectural principle for CoreXL deployment, preventing CPU resource contention that can severely degrade firewall performance in multi-core environments.

## Source Quality
- **Primary Source**: Perplexity research on Check Point CoreXL optimization
- **Credibility Score**: 9/10
- **Validation Method**: Cross-verified with Check Point performance tuning guidelines

## Connection Potential
- Links to CPU resource contention avoidance
- Connects with multi-core performance optimization
- Relates to system architecture best practices
- Associates with firewall scaling methodologies