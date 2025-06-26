---
state: permanent
type: atomic-note
created: 2025-06-17
domain: checkpoint-security
source-credibility: 8
context: checkpoint-ips-management
validation-status: verified
connections: 3
review-frequency: monthly
---

# Check Point IPS Off Command

## Core Concept
The `ips off` command disables Check Point's Intrusion Prevention System (IPS) functionality on the security gateway, removing real-time threat detection and blocking capabilities for network traffic.

## Technical Implementation
```bash
# Disable IPS functionality
ips off

# Verify IPS status
ips status

# Alternative status check
fw ctl get int ips_enabled
```

## Security Impact
- **Threat Detection**: Eliminates signature-based attack detection
- **Real-time Protection**: Removes active threat blocking capabilities
- **Performance Trade-off**: May improve throughput at cost of security posture
- **Policy Enforcement**: Basic firewall rules continue to function

## Use Cases
- **Performance Troubleshooting**: Isolate IPS-related performance issues
- **Maintenance Windows**: Temporary disable during system updates
- **Compatibility Testing**: Resolve application connectivity issues
- **Emergency Operations**: Quick bypass for critical traffic flow

## Operational Considerations
- **Temporary Measure**: Should be re-enabled after troubleshooting
- **Security Exposure**: Increases vulnerability to sophisticated attacks
- **Logging Impact**: IPS-related logs will cease during disabled period
- **Policy Validation**: Verify firewall rules provide adequate protection

## Connection Potential
Links to IPS troubleshooting methodologies, performance optimization procedures, and Check Point security blade management concepts.