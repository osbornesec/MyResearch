---
state: permanent
type: atomic-note
created: 2025-06-17
domain: checkpoint-firewall
source-credibility: 9
research-context: checkpoint-command-reference
validation-status: verified
connections: 3
review-frequency: monthly
---

# Checkpoint fw tab Command - Connection Table Display

## Core Concept
The `fw tab` command displays Check Point firewall connection table statistics and information, providing visibility into active connections, connection states, and table utilization metrics.

## Command Functionality
- **Purpose**: View connection table contents and statistics
- **Scope**: Active connections, connection states, table capacity
- **Output**: Tabular display of connection information
- **Use Cases**: Troubleshooting, monitoring, capacity planning

## Key Parameters
- **Basic Usage**: `fw tab` (displays all connection tables)
- **Specific Table**: `fw tab -t [table_name]` (displays specific table)
- **Statistics**: `fw tab -s` (shows table statistics)
- **Continuous**: `fw tab -f` (follow mode for real-time updates)

## Connection Information Displayed
- Source and destination IP addresses
- Source and destination ports
- Protocol information
- Connection state
- Connection duration
- Bytes transferred

## Technical Context
- Part of Check Point's connection tracking system
- Essential for network troubleshooting and monitoring
- Provides insight into firewall performance and utilization
- Used in conjunction with other fw commands for comprehensive analysis

## Connection Potential
- [[checkpoint-connection-templates-acceleration]]
- [[checkpoint-corexl-firewall-worker-instance-architecture]]
- [[heavy-connection-detection-systematic-methodology]]