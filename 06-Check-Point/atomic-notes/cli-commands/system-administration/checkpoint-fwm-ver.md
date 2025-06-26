---
state: fleeting
type: atomic-note
created: 2025-06-18
source-credibility: 9
research-context: checkpoint-management-administration
validation-status: verified
source: Check Point Administration Foundation CLI Guide R81.20
---

# CheckPoint fwm ver Command for Management Server Version Display

## Core Concept
The fwm ver command displays the Check Point version information of the Security Management Server, providing essential system identification data for administration, support, and compatibility verification purposes.

## Command Syntax
```
fwm ver
```

## Parameters
- No parameters required - the command executes with default output to console
- Can be redirected to file using standard shell redirection operators

## Usage Context
- **Management Server identification**: Confirms running version and build number
- **Multi-Domain Server environments**: Can be executed in both MDS and Domain Management Server contexts
- **Support and troubleshooting**: Provides essential version information for technical support cases
- **Compatibility verification**: Ensures version compatibility before software installations or upgrades

## Multi-Domain Server Behavior
- **MDS context**: Run after `mdsenv` to display Multi-Domain Server version
- **Domain Management Server context**: Execute directly in domain context for domain-specific version
- **Context independence**: Command functions in both global MDS and individual domain contexts

## Example Output
```
[Expert@MGMT:0]# fwm ver
This is Check Point Security Management Server R81.20 - Build 11
[Expert@MGMT:0]#
```

## Administrative Applications
- System inventory and asset management documentation
- Pre-upgrade compatibility assessment and planning
- Technical support case information gathering
- Security compliance and audit trail maintenance

## Connection Potential
Links to [[checkpoint-fwm-management-operations-framework]], [[management-server-administration]], [[version-compatibility-management]], [[multi-domain-server-operations]], [[system-identification-commands]]