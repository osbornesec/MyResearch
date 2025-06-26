---
state: permanent
type: atomic-note
created: 2025-06-17
last-reviewed: 2025-06-17
connections: 0
review-frequency: quarterly
domain: checkpoint-security-management
---

# Check Point MCC Add Command for Management Object Creation

## Core Concept

The `mcc add` command enables administrators to programmatically add new security objects and configurations to the Check Point Management Server through command-line interface, supporting automation and bulk operations without requiring graphical user interface interaction.

## Command Purpose

- **Object Creation**: Adds network objects, hosts, groups, and policy rules directly to management database
- **Automation Support**: Enables scripting for large-scale object deployment and configuration
- **Bulk Operations**: Facilitates mass import of security objects from files or external systems
- **Validation Framework**: Performs dependency checking and input validation before database updates

## Technical Implementation

```bash
# Basic syntax structure
mcc add [object-type] [parameters] [options]

# Example use cases
mcc add host "Server-01" ip=192.168.1.100
mcc add group "Web-Servers" members="Server-01,Server-02"
```

## Operational Benefits

- **Efficiency**: Reduces manual configuration time for repetitive tasks
- **Consistency**: Ensures standardized object creation through scripted processes
- **Error Reduction**: Minimizes human input errors in large deployments
- **Integration**: Supports integration with external management systems and workflows

## Use Case Applications

1. **Mass Host Import**: Adding multiple servers from CSV files or asset management systems
2. **Policy Automation**: Scripted creation of firewall rules and security policies
3. **Environment Provisioning**: Automated setup of security objects for new network segments
4. **Configuration Migration**: Transferring objects between management systems

## Technical Validation

- Verifies object dependencies before creation (e.g., group existence before member addition)
- Checks for naming conflicts and duplicate objects
- Validates IP address formats and network configurations
- Ensures policy rule syntax compliance

## Integration Patterns

- Compatible with Check Point management API workflows
- Supports integration with configuration management tools (Ansible, Puppet)
- Enables CI/CD pipeline integration for security policy deployment
- Facilitates integration with network discovery and asset management systems

## Connection Potential

Links to [[checkpoint-management-operations]], [[checkpoint-automation-framework]], [[checkpoint-object-database]], and [[checkpoint-scripting-interfaces]]