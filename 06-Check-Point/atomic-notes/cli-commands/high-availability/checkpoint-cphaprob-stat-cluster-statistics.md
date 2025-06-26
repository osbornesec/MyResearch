---
state: permanent
type: atomic-note
created: 2025-06-18
source-credibility: 8
research-context: CheckPoint High Availability CLI Commands
validation-status: verified
---

# CheckPoint cphaprob stat Cluster Statistics

## Core Concept

The `cphaprob stat` command provides detailed statistical information about CheckPoint ClusterXL operations, including cluster correction data, synchronization metrics, and communication statistics between cluster members.

## Primary Functions

- **Cluster Correction Statistics**: Detailed packet/byte exchange data between members
- **Synchronization Metrics**: State synchronization performance and error tracking
- **Communication Analysis**: Inter-member communication health and latency
- **Performance Monitoring**: Cluster operational efficiency measurements

## Statistical Categories

```bash
cphaprob -f corr        # Cluster correction statistics
cphaprob -s corr        # Alternative correction statistics format
cphaprob syncstat       # State synchronization status and metrics
```

## Key Metrics Provided

- **Packet Exchange Rates**: Inter-cluster member communication volume
- **Error Counters**: Synchronization failures and communication errors
- **Connection Statistics**: Active connection distribution across members
- **Failover History**: Timeline and frequency of cluster state changes

## Troubleshooting Applications

- Identifying synchronization bottlenecks between cluster members
- Analyzing communication failures causing cluster instability
- Monitoring cluster performance under load conditions
- Diagnosing root causes of failover events

## Operational Context

Critical for advanced cluster troubleshooting, performance optimization, and capacity planning. Provides deep visibility into cluster internal operations that are not available through standard monitoring interfaces.

## Analysis Framework

- **Baseline Establishment**: Normal operational statistics for comparison
- **Anomaly Detection**: Identifying deviations from expected patterns
- **Performance Correlation**: Linking statistics to observed cluster behavior
- **Trend Analysis**: Long-term cluster health and performance tracking

## Integration Points

- Supports cluster health monitoring workflows
- Integrates with performance optimization procedures
- Provides input for capacity planning decisions
- Correlates with network and system performance metrics

## Source Attribution

- **Primary Source**: CheckPoint ClusterXL troubleshooting documentation
- **Credibility Score**: 8/10
- **Validation Method**: Official troubleshooting guide verification