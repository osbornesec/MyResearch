---
state: fleeting
type: checkpoint-command-atomic
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-admin-foundation-cliguide
validation-status: verified
command-family: firewall
source-lines: 23249-23400
---

# CheckPoint fw monitor - Traffic Capture

## Command Purpose
Captures traffic at different inspection Chain Module points for detailed packet analysis and troubleshooting through Firewall inspection engine.

## Syntax Pattern
```bash
fw monitor [-d] [-ci <count>] [-co <count>] [-e <expression>] [-F <filter>] [-m {i,I,o,O,e,E}] [-o <file>] [-p <position>] [-T] [-u|-s]
```

## Key Parameters
- `-ci/-co`: Limit inbound/outbound packet capture count
- `-e`: INSPECT filter expression for non-accelerated traffic
- `-F`: Capture filter for both accelerated and non-accelerated traffic
- `-m {i,I,o,O,e,E}`: Capture mask for specific inspection points
- `-o`: Output file for captured data (recommend /var/log/)
- `-p`: Chain module position for monitoring insertion
- `-T`: Show timestamp for each packet

## Security Context
Primary tool for deep packet inspection and Security Gateway troubleshooting. Captures traffic at all Chain Module inspection points. Single instance limitation requires coordination. Supports SecureXL accelerated traffic analysis.

## Connection Targets
- checkpoint-fw-ctl-chain-inspection-modules
- checkpoint-securexl-acceleration-patterns-software-optimization
- checkpoint-packet-analysis-troubleshooting
- checkpoint-inspect-filter-expression-syntax