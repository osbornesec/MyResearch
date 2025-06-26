---
state: permanent
type: atomic-note
created: 2025-06-17
source-credibility: 8
research-context: check-point-clusterxl-high-availability
validation-status: verified
connections: 5
review-frequency: monthly
---

# Check Point cphastart - ClusterXL Member Restart Command

## Core Concept
The `cphastart` command reactivates ClusterXL configurations on individual cluster members after they have been stopped with `cphastop`, specifically targeting cluster and state synchronization processes without affecting other Check Point services.

## Technical Implementation
```bash
# Basic syntax
cphastart [-h] [-d]

# Parameters
-h    # Display help information
-d    # Enable debug mode for troubleshooting

# Example usage
cphastart -d    # Start ClusterXL with debug logging
```

## Key Operational Characteristics
- **Selective Restart**: Only affects ClusterXL components, not full service stack
- **State Synchronization**: Initializes cluster member's ability to sync state with other cluster members
- **Minimal Disruption**: Avoids full policy reload, reducing recovery time
- **Debug Capability**: Provides troubleshooting mode for ClusterXL-specific issues

## Best Practice Recommendation
Check Point recommends using `cpstart` instead of `cphastart` for routine cluster member restarts, as `cpstart` handles broader service dependencies including synchronization daemons.

## High Availability Impact
- Ensures fault-tolerant operation between clustered gateways
- Maintains minimal downtime during cluster member recovery
- Requires monitoring of HA state synchronization after execution
- Should be verified with `fw hastat` command post-execution

## Connection Potential
Links to [[checkpoint-cphastop]], [[checkpoint-cpstart]], [[checkpoint-cprestart]], [[clusterxl-high-availability-enterprise-architecture]], and [[checkpoint-fw-hastat]]

## Limitations
- Does not resolve underlying policy or synchronization issues
- Limited to ClusterXL component restart only
- Debug mode should be used sparingly to avoid performance impact