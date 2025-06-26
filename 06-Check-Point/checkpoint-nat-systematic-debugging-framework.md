---
state: permanent
type: atomic-note
created: 2025-06-17
domain: checkpoint-troubleshooting
source-credibility: 9
validation-status: verified
---

# Check Point NAT Systematic Debugging Framework

## Core Concept

Comprehensive NAT troubleshooting methodology combining technology understanding, visual flow analysis, and systematic debug capture procedures. Integrates kernel debugging with firewall monitoring for complete NAT behavior analysis.

## NAT Types Classification

### Primary NAT Types
- **Hide NAT**: N:1 translation, prevents incoming connections
- **Static NAT**: 1:1 bidirectional translation
- **IP Pool NAT**: N:M translation with address pool
- **Port Mapping**: Service (destination port) translation
- **Cluster NAT**: Member IP to virtual IP translation
- **Proxy NAT**: Fold/unfold for security server routing

### Rule Priority Hierarchy
1. **Pre-manual rules** (highest priority)
2. **Automatic rules** (Static > Hide within group)
3. **Post-manual rules** (lowest priority)

## Systematic Debug Procedure

### Prerequisites
- **SecureXL Disable**: Required before kernel debug activation
- **CPU Load Verification**: Use top/vmstat to confirm low system load
- **Firewall Monitor**: Parallel traffic capture with filtering capability

### Debug Command Sequence
```bash
# Traffic capture with optional filtering
fw monitor -e "accept;" -o outputfile.cap
fw monitor -e "host(x.x.x.x),accept;" -o outputfile.cap

# Kernel debug configuration
fw ctl debug 0
fw ctl debug -buf 32000
fw ctl debug -m fw + conn packet nat xlate xltrc
fw ctl kdebug -T -f > /var/kernel_debug.log
```

### Debug Termination
```bash
# Stop firewall monitor: ctrl+c
# Stop kernel debug
fw ctl debug -x
```

## Troubleshooting Flow Integration

Visual methodology combining traffic flow analysis with debug capture timing. Ensures issue replication occurs during debug window for accurate diagnosis.

## Research Context

Systematic NAT debugging framework from sk60343 (How to Troubleshoot NAT-related Issues). Provides foundational approach for network address translation problem resolution.

## Connection Potential

Links to kernel debugging procedures, traffic analysis methodologies, and network troubleshooting frameworks across Check Point documentation.