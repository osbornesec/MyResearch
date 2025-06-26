---
state: fleeting
type: checkpoint-command-atomic
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-admin-foundation-cliguide
validation-status: verified
command-family: firewall
source-lines: 21690-21856
---

# CheckPoint fw ctl conntab - Connection Monitoring

## Command Purpose
Shows formatted list of current connections from the Connections kernel table (ID 8158) with filtering capabilities for connection troubleshooting.

## Syntax Pattern
```bash
fw [-d] ctl conntab [-sip=<source_ip>] [-sport=<port>] [-dip=<dest_ip>] [-dport=<port>] [-proto=<protocol>] [-service=<service>] [-rule=<rule_num>]
```

## Key Parameters
- `-sip`: Filter by source IP address in decimal format
- `-sport`: Filter by source port number
- `-dip`: Filter by destination IP address
- `-dport`: Filter by destination port number
- `-proto`: Filter by protocol (TCP, UDP, ICMP)
- `-service`: Filter by service name
- `-rule`: Filter by rule number in decimal format

## Security Context
Primary tool for real-time connection analysis and security incident investigation. Provides simplified connection view compared to `fw tab -t connections -f` for operational monitoring and troubleshooting.

## Connection Targets
- checkpoint-fw-tab-kernel-table-analysis
- checkpoint-connection-tracker-anomaly-detection-system
- checkpoint-corexl-firewall-worker-instance-architecture
- checkpoint-security-policy-rule-analysis