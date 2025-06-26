---
state: fleeting
type: research-atomic
created: 2025-06-17
source-credibility: 9
research-context: identity-awareness-troubleshooting
validation-status: verified
source: sk113747 - How to troubleshoot Identity Awareness AD Query connectivity issues
---

# Advanced Identity Awareness Debugging Workflow

## Core Concept
Advanced debugging requires multi-session SSH coordination with comprehensive logging capture including PDP debugging, traffic monitoring, and forced reinitialization to replicate issues.

## Debug Initialization Commands
```bash
pdp d rotate
adlog a d on
adlog a d extended
pdp debug on
pdp d s all all
fw monitor -e "(port(389) or port(636)) and host(X.X.X.X),accept;" -o /var/tmp/ldap.pcap
```

## Multi-Session Coordination
- **Session 1**: Initialize debug capture and monitoring
- **Session 2**: Force issue replication with reconf command
- **Synchronization**: Coordinate timing for issue replication capture

## Issue Replication Command
```bash
adlog a control reconf;sleep 5;watch -n 1 -d "adlog a dc"
```

## Debug Termination and File Collection
```bash
adlog a d off
pdp d unset all all
pdp d off
cp $FWDIR/log/pdpd.elg* /var/tmp/
```

## Output Analysis Requirements
- Domain Controller status verification during replication
- Log file analysis for specific error patterns
- Traffic capture examination for protocol-level issues

## Research Context
Advanced troubleshooting methodology for complex Identity Awareness connectivity issues.

## Connection Potential
- Links to systematic debugging methodologies
- Connects to log analysis and traffic capture techniques
- Related to Check Point support escalation procedures