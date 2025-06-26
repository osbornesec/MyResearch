---
state: permanent
type: atomic-note
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-security-troubleshooting
validation-status: verified
connections: 5
review-frequency: monthly
---

# Checkpoint fw monitor - Real-time Packet Flow Inspection

## Core Concept
The `fw monitor` command provides real-time packet inspection capabilities in Check Point firewalls, displaying packets as they traverse different inspection points in the firewall kernel with detailed header information and flow direction indicators.

## Technical Implementation
```bash
# Basic packet monitoring
fw monitor

# Monitor specific interface
fw monitor -e "accept src=192.168.1.0/24;"

# Monitor with packet details
fw monitor -o packet_file.cap

# Filter by protocol and port
fw monitor -e "accept proto=tcp and port=80;"
```

## Inspection Points
- **i** (inbound): Packet entering firewall before any processing
- **I** (Inbound): Packet after inbound interface processing
- **o** (outbound): Packet leaving firewall after all processing
- **O** (Outbound): Packet before outbound interface processing

## Key Features
- Real-time packet capture and analysis
- Detailed header information display
- Flow direction tracking through firewall stages
- Flexible filtering expressions for targeted monitoring
- Integration with tcpdump-style syntax for familiar operation

## Common Use Cases
- **Connection Troubleshooting**: Verify packet flow through firewall stages
- **Policy Debugging**: Confirm rule matching and packet handling
- **Performance Analysis**: Identify bottlenecks in packet processing
- **Security Investigation**: Analyze suspicious traffic patterns
- **NAT Verification**: Track address translation effectiveness

## Connection Potential
Links to [[checkpoint-debug-flag-configuration]], [[checkpoint-heavy-connection-detection-methodology]], [[checkpoint-performance-investigation-baseline-establishment]], [[checkpoint-nat-troubleshooting-methodology]], [[check-point-basic-health-check-procedure]]