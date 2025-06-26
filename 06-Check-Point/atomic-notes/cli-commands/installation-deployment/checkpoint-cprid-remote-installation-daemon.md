---
state: fleeting
type: checkpoint-command-atomic
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-admin-foundation-cliguide
validation-status: verified
command-family: installation
source-lines: 1259-1279
---

# CheckPoint cprid - Remote Installation Daemon Management

## Command Purpose
Manages the CheckPoint Remote Installation Daemon (cprid) used for remote upgrade and installation of CheckPoint products on managed Security Gateways.

## Syntax Pattern
```bash
cpridstart     # Start the daemon
cpridstop      # Stop the daemon
run_cprid_restart  # Stop and restart the daemon
```

## Key Parameters
- **cpridstart**: Initiates remote installation daemon service
- **cpridstop**: Terminates remote installation daemon service  
- **run_cprid_restart**: Complete daemon restart cycle

## Licensing Context
Essential prerequisite for SmartUpdate remote installation operations. Must be running on target Security Gateways for cprinstall commands to function. Requires SIC trust establishment.

## Connection Targets
- [[checkpoint-cprinstall-remote-package-deployment]]
- [[checkpoint-sic-trust-establishment]]
- [[checkpoint-remote-installation-prerequisites]]
- [[checkpoint-daemon-management-procedures]]