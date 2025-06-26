---
state: fleeting
type: atomic-note
created: 2025-06-18
source-credibility: 9
research-context: CheckPoint CLI command documentation
validation-status: verified
---

# CheckPoint fw ctl isp_link - ISP Redundancy Link State Control

## Core Concept

The `fw ctl isp_link` command controls the state of ISP Links in the ISP Redundancy configuration on CheckPoint Security Gateway, allowing administrators to manually change ISP link states between UP and DOWN for maintenance or troubleshooting purposes.

## Command Syntax

```bash
fw [-d] isp_link
    {-h | -help}
    [<Name of Object>] <Name of ISP Link>
    down
    up
```

## Parameters

| Parameter | Description |
|-----------|-------------|
| `-d` | Runs the command in debug mode (use only for troubleshooting) |
| `-h \| -help` | Shows the built-in usage information |
| `<Name of Object>` | Only when running on Management Server: Name of Security Gateway or Cluster Member object as defined in SmartConsole |
| `<Name of ISP Link>` | Name of the ISP Link as defined in the Security Gateway or Cluster object (found in SmartConsole > Gateways & Servers > Other > ISP Redundancy) |
| `down` | Changes the specified ISP Link state to DOWN |
| `up` | Changes the specified ISP Link state to UP |

## Primary Use Cases

- Manual failover testing in ISP Redundancy configurations
- Maintenance operations requiring specific ISP link states
- Troubleshooting ISP connectivity issues
- Load balancing control in multi-ISP environments

## Research Context

This command is essential for ISP Redundancy management, providing manual control over automatic failover mechanisms when needed for maintenance or testing scenarios.

## Source Quality

- **Primary Source**: CheckPoint R81.20 Administration Foundation CLI Guide
- **Credibility Score**: 9/10
- **Validation Method**: Official vendor documentation
- **Reference**: CheckPoint Admin Foundation CLI Guide, processed 2025-06-17

## Connection Potential

- Links to CheckPoint ISP Redundancy configuration concepts
- Connects with CheckPoint high availability and failover mechanisms
- Related to network redundancy and fault tolerance patterns
- Associated with CheckPoint cluster management commands
- Connected to ISP load balancing and traffic management strategies