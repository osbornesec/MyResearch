---
state: fleeting
type: checkpoint-command-atomic
created: 2025-06-18
source-credibility: 9
research-context: checkpoint-fwaccel-command-suite
validation-status: verified
command-family: advanced-features
---

# CheckPoint fwaccel reset - SecureXL Acceleration Reset

## Command Purpose
Resets SecureXL acceleration by clearing and reinitializing SecureXL's internal tables and acceleration state, forcing it to rebuild acceleration templates and connection information without requiring a reboot.

## Syntax Pattern
```bash
fwaccel reset
fwaccel6 reset
```

## Key Parameters
- No additional parameters required
- IPv4 and IPv6 variants available
- Operates without requiring system reboot

## Advanced Context
Critical troubleshooting tool for resolving performance or connectivity issues related to SecureXL acceleration. Clears acceleration templates and connection state, forcing SecureXL to begin re-accelerating applicable connections as new traffic flows through the gateway. Essential for resolving template mismatches and acceleration-related problems in high-throughput environments.

## Operational Requirements
- Must be executed consistently on all cluster members to maintain configuration synchronization
- SecureXL will automatically rebuild acceleration templates for new traffic flows
- Temporarily impacts performance during acceleration state reconstruction
- Used as diagnostic tool when acceleration statistics show anomalies

## Connection Targets
- SecureXL acceleration architecture troubleshooting
- Performance optimization reset procedures
- CheckPoint cluster synchronization requirements
- Template-based acceleration recovery methodologies