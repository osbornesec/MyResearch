---
state: permanent
type: atomic-note
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-firewall-administration
validation-status: verified
---

# Checkpoint fw kill Command Terminates Firewall Processes

## Core Concept
The `fw kill` command terminates specified Check Point firewall processes by sending system signals to running processes.

## Syntax
```bash
fw [-d] kill [-t <Signal Number>] <Name of Process>
```

## Key Parameters
- **-d**: Debug mode with output logging recommendation
- **-t <Signal Number>**: Specifies signal type (default SIGTERM/15)
- **<Name of Process>**: Target process name (use `ps auxwf` to identify)

## Critical Process Safety
Must ensure killed processes are restarted manually or automatically - Check Point processes are essential for firewall operation.

## Common Usage Examples
- `fw kill fwm` - Terminate Firewall Management process
- `fw kill fwd` - Terminate Firewall Daemon process  
- `fw kill fw` - Terminate main firewall process

## Connection Potential
Links to process management, troubleshooting workflows, and Check Point architecture concepts.

## Source Quality
- **Primary Source**: Check Point R81.20 CLI Reference Guide
- **Credibility Score**: 9/10
- **Validation Method**: Official documentation verification