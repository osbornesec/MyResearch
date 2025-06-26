---
state: permanent
type: atomic-note
created: 2025-06-17
source-credibility: 8
research-context: checkpoint-command-reference
validation-status: verified
domain: checkpoint-security
---

# CheckPoint fwpush Command - Push Notification Messaging

## Core Concept
The `fwpush` command in CheckPoint firewalls sends on-demand push notification messages from the command line, primarily used for Mobile Access push notifications rather than firewall configuration updates.

## Technical Function
- **Purpose**: Command-line push notification messaging system
- **Daemon Integration**: Interacts with push notifications daemon (`fwpushd`)
- **Process Hierarchy**: Managed as child process of main firewall daemon (`fwd`)
- **Use Case**: Mobile Access notifications and administrative messaging

## Command Characteristics
- **Not for Policy**: Does not push firewall policies or configuration changes
- **Notification Focus**: Designed for user notification and alert messaging
- **Integration Point**: Part of CheckPoint's mobile access infrastructure
- **Administrative Tool**: Command-line interface for push notification system

## Common Misconceptions
- **Configuration Confusion**: Often mistakenly assumed to push firewall configurations
- **Policy Installation**: Not used for policy installation (use SmartConsole or `fw fetch`)
- **Naming Convention**: Command name suggests configuration push but serves notification function

## Related Commands
- `fw fetch` - Actual command for policy retrieval and installation
- `fwpushd` - Push notifications daemon process
- `fwd` - Main firewall daemon that manages push notification subprocess

## Source Quality
- **Primary Source**: CheckPoint official documentation
- **Credibility Score**: 8/10
- **Validation Method**: Multiple CheckPoint technical references verified