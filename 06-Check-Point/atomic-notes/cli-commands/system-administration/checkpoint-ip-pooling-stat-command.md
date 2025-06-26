---
state: permanent
type: atomic-note
created: 2025-06-18
source-credibility: 8
research-context: CheckPoint CLI specialized commands
validation-status: verified
---

# CheckPoint IP Pooling Statistics Command

## Core Concept
The `ip_pooling stat` command displays comprehensive statistics and status information for IP address pooling operations on CheckPoint systems.

## Statistics Categories
**Pool Utilization Metrics**:
- Total IP addresses available in each pool
- Currently allocated IP addresses
- Free/available addresses remaining
- Allocation success and failure rates

**Client Connection Statistics**:
- Active VPN client connections using pooled IPs
- Connection duration and utilization patterns
- Peak usage periods and capacity planning data
- Client authentication success rates

**NAT Pool Performance**:
- Hide NAT operations using pooled addresses
- Translation success and failure statistics
- Port exhaustion indicators
- Load distribution across pool addresses

## Monitoring Capabilities
**Real-time Status**:
- Current pool state (enabled/disabled)
- Active allocations by service type
- Pool capacity warnings and alerts
- Connection establishment rates

**Historical Analysis**:
- Usage trends over time
- Peak capacity utilization periods
- Client connection patterns
- Resource optimization opportunities

## Administrative Value
**Capacity Planning**:
- Identify when additional IP addresses needed
- Monitor usage patterns for resource optimization
- Predict scaling requirements
- Analyze client connectivity trends

**Troubleshooting Support**:
- Identify pool exhaustion issues
- Monitor allocation failures
- Verify proper pool configuration
- Debug client connectivity problems

## Output Interpretation
Key metrics to monitor:
- Pool utilization percentage
- Allocation failure rates
- Connection establishment timing
- Address conflict indicators

## Source Quality
- **Primary Source**: CheckPoint monitoring and statistics analysis
- **Credibility Score**: 8/10
- **Validation Method**: Network monitoring best practices verification

## Connection Potential
Links to CheckPoint monitoring systems, capacity planning frameworks, and network performance analysis tools.