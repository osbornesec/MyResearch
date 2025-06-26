---
state: fleeting
type: checkpoint-command-atomic
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-admin-foundation-cliguide
validation-status: verified
command-family: monitoring
source-lines: 1976-2033
---

# CheckPoint CPView - Interactive Text-Based Monitoring Interface

## Command Purpose
Provides real-time text-based monitoring utility with continuously updating statistical data for system information and Software Blade performance on Security Gateways.

## Syntax Pattern
```bash
cpview --help    # Display help information
cpview          # Launch interactive interface
```

## Key Parameters
- **Navigation**: Arrow keys, Home, Enter, Esc, Q for interface control
- **Display Options**: R (refresh rate), W (wide mode), S (screen size), M (mouse toggle)
- **Data Management**: C (capture to file), H (help), Space (manual refresh), P (pause)

## Licensing Context
Critical real-time monitoring tool for licensed blade performance analysis. Provides immediate visibility into firewall, VPN, IPS, and other security service statistics for operational management and troubleshooting.

## Connection Targets
- [[checkpoint-real-time-monitoring-procedures]]
- [[checkpoint-performance-troubleshooting-workflow]]
- [[checkpoint-operational-dashboard-management]]
- [[checkpoint-security-blade-monitoring]]