---
state: fleeting
type: research-atomic
created: 2025-06-17
source-credibility: 9
research-context: check-point-qos-traffic-management
validation-status: verified
---

# QoS Rule Weight Bandwidth Allocation

## Core Concept
QoS rule weights define relative bandwidth allocation between traffic types, with bandwidth distributed proportionally based on the ratio of individual rule weights to total active weights.

## Weight Calculation Method
- **Proportional Distribution**: Bandwidth percentage = (Rule Weight / Sum of Active Weights) × 100
- **Dynamic Adjustment**: Total weights recalculated as connections open and close
- **Relative Priority**: Higher weights receive proportionally more bandwidth

## Practical Example
With four active connections:
- HTTP (Weight 35): 70% bandwidth (35/50 total weights)
- RealAudio (Weight 5): 10% bandwidth (5/50 total weights)  
- FTP/TELNET (Weight 10): 20% bandwidth shared (10/50 total weights)

## Starvation Prevention
Even with very low weights (Weight 5 vs Weight 35), no traffic type is completely starved of bandwidth. Low-weight traffic receives reduced but non-zero allocation.

## Dynamic Reallocation
When connections close, remaining connections benefit from released bandwidth according to their weight ratios:
- Two remaining connections (HTTP Weight 35, RealAudio Weight 5)
- HTTP receives 87.5% (35/40), RealAudio receives 12.5% (5/40)

## Best Practices
- Default weight of 10 recommended for new rules
- Weights below 10 can result in bandwidth starvation
- Interactive services (TELNET) should receive higher relative weights despite smaller data volumes

## Research Context
Fundamental mechanism for QoS traffic prioritization that determines how available bandwidth is distributed among competing traffic flows.

## Source Quality
- **Primary Source**: Check Point R81.20 QoS Administration Guide
- **Credibility Score**: 9/10
- **Validation Method**: Official documentation with mathematical examples

## Connection Potential
- Links to Weighted Fair Queuing algorithm implementation
- Connects to bandwidth guarantee and limit mechanisms
- Relates to traffic classification and policy rule structure