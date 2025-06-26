---
state: fleeting
type: checkpoint-command-atomic
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-admin-foundation-cliguide
validation-status: verified
command-family: security
source-lines: 789-800
---

# CheckPoint cppkg - SmartUpdate Package Repository Management

## Command Purpose
Manages SmartUpdate software packages repository on Security Management Server for centralized package distribution and updates.

## Syntax Pattern
```bash
cppkg {add|{del|delete}|get|getroot|print|setroot} <options>
```

## Key Parameters
- `add <options>`: Add packages to repository
- `{del|delete} <options>`: Remove packages from repository  
- `get`: Retrieve package information
- `getroot`: Get root repository information
- `print`: Display repository contents
- `setroot <options>`: Configure repository root settings

## Security Context
Critical for maintaining security patch distribution and software updates across CheckPoint infrastructure. Package integrity and certificate validation ensure secure software deployment to managed gateways.

## Platform Limitations
SmartUpdate package installation not supported for Security Gateways running on Gaia OS - packages must be deployed through alternative methods.

## Connection Targets
- Centralized software update distribution
- Security patch management
- Package integrity verification
- Multi-gateway deployment coordination