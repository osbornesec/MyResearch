---
state: permanent
type: atomic-note
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-firewall-troubleshooting
validation-status: verified
connections: 3
review-frequency: monthly
---

# Checkpoint FWM GetPCAP Command

## Core Concept
The `fwm getpcap` command enables packet capture functionality on Check Point firewalls through the Firewall Module (FWM), allowing administrators to capture and analyze network traffic for troubleshooting and security analysis purposes.

## Technical Implementation
- **Syntax**: `fwm getpcap -f <filename> -i <interface> [options]`
- **Function**: Captures packets directly from firewall interfaces
- **Output Format**: Standard PCAP format compatible with Wireshark and other analysis tools
- **Scope**: Can capture traffic on specific interfaces or all interfaces simultaneously

## Key Parameters
- `-f <filename>`: Specifies output PCAP file name
- `-i <interface>`: Target interface for packet capture
- `-c <count>`: Limit number of packets to capture
- `-s <snaplen>`: Set maximum packet size to capture
- `-w`: Write packets to file immediately (real-time)

## Operational Context
Essential for network troubleshooting when traditional packet capture tools are insufficient or when direct firewall-level visibility is required for security incident analysis.

## Performance Considerations
- Resource-intensive on high-traffic interfaces
- Should be used with packet count limits in production
- Can impact firewall performance if used extensively

## Connection Potential
Links to [[checkpoint-performance-investigation-baseline-establishment]], [[checkpoint-heavy-connection-detection-methodology]], and [[checkpoint-corexl-performance-architecture-framework]]