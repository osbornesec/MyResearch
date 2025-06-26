---
created: 2025-06-17T12:09:00Z
state: permanent
type: atomic-note
source: sk60343 - How to Troubleshoot NAT-related Issues
source-credibility: 9
research-context: Check Point NAT Network Infrastructure
validation-status: verified
connections: 4
---

# Check Point NAT Troubleshooting Methodology

## Core Concept
NAT troubleshooting in Check Point Security Gateways requires understanding rule priority, connection matching behavior, and systematic debug collection using firewall monitor and kernel debug tools.

## NAT Rule Types and Priority

### NAT Configuration Types
- **Hide NAT**: N hosts share single NAT IP (blocks incoming connections)
- **Static NAT**: 1:1 IP address translation
- **IP Pool NAT**: N:M translation pools
- **Port Mapping**: Service/destination port translation
- **Cluster NAT**: Member IPs to cluster virtual IP translation

### Rule Priority Hierarchy
1. **Pre-manual rules** (highest priority)
2. **Automatic rules** (Static NAT higher than Hide NAT)
3. **Post-manual rules** (lowest priority)

## Connection Matching Behavior

### Bidirectional Connection Recording
- **First packet matching**: Evaluated against Security Rule base AND NAT Rule base
- **Connection recording**: All connection directions recorded automatically
- **Back connection creation**: Automatic for return traffic (no explicit configuration needed)
- **Bidirectional example**: X→Y(z) also creates z(Y)→X connection automatically

### Manual vs Automatic NAT
- **Automatic NAT**: Configured on NATed object's NAT tab
- **Manual NAT**: Defined directly in NAT rule base like security rules
- **Back connection**: Only required for internal server-initiated connections

## Debug Collection Methodology

### Prerequisites and Warnings
- **Performance impact**: Kernel debug causes high CPU usage
- **Load verification**: Check system load with `top`/`vmstat` before debugging
- **SecureXL requirement**: Disable SecureXL before debug generation

### Debug Command Sequence
```bash
# Start firewall monitor
fw monitor -e "accept;" -o outputfile.cap
# Optional filtering: fw monitor -e "host(x.x.x.x),accept;" -o outputfile.cap

# Configure kernel debug (separate shell)
fw ctl debug 0
fw ctl debug -buf 32000
fw ctl debug -m fw + conn packet nat xlate xltrc
fw ctl kdebug -T -f > /var/kernel_debug.log

# Stop procedures
# fw monitor: ctrl+c
# kernel debug: fw ctl debug -x
```

## NAT Rule Configuration Examples

### Automatic NAT Configuration
- **Method**: Right-click object → select NAT method and IP address
- **Simplicity**: Single configuration point on object
- **Back connection**: Automatically created for internal address connections

### Manual NAT Configuration
- **Original Packet**: How first packet appears entering firewall
- **Translated Packet**: How first packet appears exiting to internal server
- **Return traffic**: Automatically handled using reverse translation

## Troubleshooting Flow Structure
1. **Rule matching verification**: Confirm NAT rule engagement
2. **Connection direction analysis**: Validate bidirectional behavior
3. **Debug data collection**: Capture both firewall monitor and kernel debug
4. **Issue replication**: Ensure problem occurs during debug collection
5. **Data analysis**: Review collected debug information systematically

## Connection Potential
Links to Check Point NAT configuration best practices, firewall monitoring techniques, and network troubleshooting methodologies.