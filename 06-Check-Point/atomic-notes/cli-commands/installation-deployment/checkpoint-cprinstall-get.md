---
state: fleeting
type: atomic-note
created: 2025-06-18
source-credibility: 9
research-context: CheckPoint CLI command reference
validation-status: verified
---

# CheckPoint cprinstall get - Security Gateway Inventory Discovery

## Core Concept
The `cprinstall get` command retrieves detailed information about installed products and operating system from managed Security Gateways while updating the Security Management Server's database with current inventory data.

## Command Syntax
```bash
cprinstall get <Object Name>
```

## Parameters
- **Object Name**: The name of the Security Gateway object as configured in SmartConsole

## Primary Functions
1. **Product Inventory**: Gets details of Check Point products installed on the managed Security Gateway
2. **OS Information**: Retrieves operating system details from the target gateway
3. **Database Synchronization**: Updates the management database on the Security Management Server with current gateway state

## Execution Requirements
- Must be run from Expert mode
- Requires proper CPRID connection to the managed Security Gateway
- Object name must match the gateway configuration in SmartConsole

## Use Cases
- Post-installation verification and inventory updates
- Troubleshooting gateway configuration discrepancies
- Maintaining accurate management database records
- Compliance auditing and documentation

## Related Commands
- `cprinstall verify` - Validates gateway readiness and connectivity
- `cprinstall uninstall` - Requires running `cprinstall get` after package removal
- `cppkg print` - Displays detailed package attribute information

## Research Context
Essential for CheckPoint Security Management Server administrators managing distributed Security Gateway deployments, providing centralized visibility into gateway software inventory and configuration state.

## Source Quality
- **Primary Source**: CheckPoint R81.20 CLI Reference Guide
- **Credibility Score**: 9/10
- **Validation Method**: Official vendor documentation

## Connection Potential
Links to CheckPoint gateway management, centralized administration, inventory tracking, and configuration synchronization concepts within the vault's CheckPoint knowledge network.