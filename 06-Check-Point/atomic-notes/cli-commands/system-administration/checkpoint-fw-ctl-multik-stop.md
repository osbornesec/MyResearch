---
state: permanent
type: atomic-note
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-security-administration
validation-status: verified
connections: 0
review-frequency: monthly
---

# Checkpoint fw ctl multik stop Command

## Core Concept
The `fw ctl multik stop` command immediately terminates all CoreXL firewall worker instances (fwk processes) on a Check Point Security Gateway, effectively stopping the multi-core firewall processing capabilities.

## Technical Details
- **Function**: Stops all fwk (firewall kernel) worker processes
- **Impact**: Disables multi-core packet processing until restart
- **Recovery**: Requires `fw ctl multik start` to re-enable CoreXL
- **Use Case**: Troubleshooting multi-core related performance issues

## Operational Context
- **Risk Level**: High - Stops firewall processing capabilities
- **Downtime**: Yes - Traffic processing interrupted during execution
- **Prerequisites**: Administrative privileges required
- **Recovery Time**: Immediate with start command

## Connection Potential
- Links to CoreXL architecture concepts
- Relates to firewall troubleshooting methodologies
- Connects to multi-core performance optimization
- Associated with Check Point administrative commands