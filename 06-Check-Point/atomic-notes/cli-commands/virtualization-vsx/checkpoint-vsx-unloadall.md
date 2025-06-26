---
state: permanent
type: atomic-note
created: 2025-06-17
domain: checkpoint-vsx
command-type: virtual-system-management
risk-level: high
---

# Checkpoint VSX Unloadall Command

## Core Concept
The `vsx unloadall` command unloads all Virtual Systems (VSes) from memory on a Check Point VSX gateway, effectively stopping all virtual firewall instances running on the physical appliance.

## Command Syntax
```bash
vsx unloadall
```

## Operational Impact
- **Complete Service Interruption**: All virtual systems cease processing traffic immediately
- **Memory Liberation**: Frees all VSX-allocated memory resources
- **Policy Deactivation**: All virtual system security policies become inactive
- **Connection Termination**: Existing connections through all VSes are dropped

## Use Cases
- **Maintenance Operations**: Preparing for major system updates or hardware maintenance
- **Emergency Shutdown**: Rapid halt of all virtual firewall services during critical incidents
- **Troubleshooting**: Isolating issues by completely clearing virtual system state
- **Resource Reclamation**: Freeing memory for diagnostic or recovery operations

## Prerequisites and Considerations
- **Administrative Privileges**: Requires VSX management authority
- **Service Impact Assessment**: All protected networks lose firewall services
- **Connection State Loss**: Active connections will require re-establishment
- **Coordination Requirements**: Notify network operations teams before execution

## Recovery Operations
After `vsx unloadall`, virtual systems must be explicitly reloaded:
- Individual VS reload: `vsx load [vs-id]`
- Selective loading based on operational requirements
- Policy installation may be required post-reload

## Safety Protocols
- **Change Management**: Execute only during approved maintenance windows
- **Documentation**: Record execution time and operational context
- **Rollback Planning**: Prepare VS reload sequence before execution
- **Monitoring**: Verify complete service restoration after reload operations

## Related Commands
- `vsx stat` - Check virtual system status before/after unload
- `vsx load` - Reload specific virtual systems
- `vsx get` - Retrieve VS configuration for reload planning