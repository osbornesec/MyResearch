---
state: permanent
type: atomic-note
created: 2025-06-17
source-credibility: 8
research-context: checkpoint-firewall-management
validation-status: verified
---

# CheckPoint fw defaultgen Command

## Core Concept
The `fw defaultgen` command generates and applies the default filter policy on CheckPoint Security Gateways, creating a basic security posture when no explicit policy is installed.

## Command Syntax
```bash
fw defaultgen
```

## Primary Functions
- **Default Policy Generation**: Creates built-in default filter policy files
- **Basic Security Posture**: Establishes minimal security rules for gateway operation
- **Management Access**: Ensures administrative connectivity during policy transitions
- **Emergency Fallback**: Provides security baseline when custom policies are unavailable

## Usage Context
- **Policy Removal Recovery**: Restore basic security after policy uninstallation
- **Initial Gateway Setup**: Establish default security before policy deployment
- **Troubleshooting**: Create known-good security state for diagnostic purposes
- **Management Connectivity**: Maintain access when policy issues prevent management

## Operational Characteristics
- **Execution Environment**: Expert mode on Security Gateway
- **Policy Scope**: Applies to local gateway only (not cluster-wide)
- **Immediate Effect**: Policy becomes active upon command execution
- **No Parameters**: Command requires no additional arguments

## Related Commands
- `fw fetch` - Retrieve policy from management server
- `fw unloadlocal` - Remove currently loaded policy
- `fw ctl` - Control firewall kernel parameters
- `fw stat` - Display current policy status

## Connection Potential
Links to checkpoint-policy-management, checkpoint-expert-mode-commands, checkpoint-security-gateway-administration