---
state: permanent
type: atomic-note
created: 2025-06-17
source-credibility: 10
research-context: checkpoint-administration-foundation
validation-status: verified
---

# CheckPoint fw sam Command - Suspicious Activity Monitoring

## Core Concept
The `fw sam` command manages Suspicious Activity Monitoring (SAM) rules in CheckPoint Security Gateways, enabling dynamic blocking of connections to and from IP addresses without requiring Security Policy changes or reinstallation.

## Command Purpose
- **Primary Function**: Block suspicious connections dynamically
- **Key Advantage**: No Security Policy modification required
- **Use Case**: Rapid response to security threats and suspicious activity

## Command Syntax
```bash
fw sam [options] [action] [target_specification]
```

## Core Parameters
- **-f <Security Gateway>**: Specifies target gateway (All, localhost, Gateways, specific gateway name)
- **-t <Timeout>**: Time period in seconds for rule enforcement (default: forever)
- **-i**: Inhibits (rejects) new connections matching criteria
- **-I**: Inhibits new connections AND closes existing ones
- **-j**: Inhibits (drops) new connections matching criteria
- **-n**: Generates notify logs without blocking connections
- **-C**: Cancels specified SAM rule
- **-D**: Cancels all inhibit and notify parameters

## Log Configuration
- **-l <Log Type>**: Specifies logging behavior
  - `nolog`: No logging
  - `short_noalert`: Generate log only
  - `short_alert`: Generate alert
  - `long_noalert`: Generate log only
  - `long_alert`: Generate alert (default)

## Storage and Persistence
- **Log Location**: `$FWDIR/log/sam.dat`
- **Kernel Tables**: 
  - `sam_requests`: Active SAM requests
  - `sam_blocked_ips`: Blocked IP addresses
- **Automatic Purge**: Log file purged at 100,000 entries

## VSX Limitations
- **Not Supported**: VSX Gateways and VSX Cluster Members do not support SAM rules
- **Reference**: See sk79700 for VSX limitations

## Best Practices
- **Performance Impact**: SAM rules consume CPU resources
- **Expiration Policy**: Set timeouts to balance investigation time with performance
- **Rule Management**: Keep only required SAM rules active
- **Security Policy**: Update permanent Security Policy for confirmed risks

## Related Commands
- **fw sam_policy**: Manages persistent SAM and Rate Limiting rules
- **sam_alert**: Generates SAM alerts and notifications

## Connection Targets
- **IP Addresses**: Single IPs or ranges
- **Services**: Protocol and port combinations
- **Source/Destination**: Directional blocking capabilities
- **GTP Support**: Generic tunnel protocol connections with IMSI, MSISDN, APN parameters