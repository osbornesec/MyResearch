---
state: permanent
type: atomic-note
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-security-gateway-administration
validation-status: verified
last-reviewed: 2025-06-17
connections: 3
review-frequency: monthly
---

# Check Point cprinstall cprestart Command

## Core Concept

The `cprinstall cprestart` command remotely executes the `cprestart` command on a managed Security Gateway from the Security Management Server, providing centralized restart capabilities for Check Point services without requiring direct gateway access.

## Technical Implementation

**Syntax**: `cprinstall cprestart <Object Name>`

**Parameters**:
- `<Object Name>`: The name of the Security Gateway object as configured in SmartConsole

**Example Usage**:
```bash
[Expert@SMS]# cprinstall cprestart my_gateway_01
```

## Operational Requirements

**Prerequisites**:
- Must be executed from Expert mode on Security Management Server
- All Check Point products on target gateway must be same version
- CPRID connection must be established between SMS and gateway

**Multi-Domain Environment**:
- Must run in context of applicable Domain Management Server
- Use: `mdsenv <IP Address or Name of Domain Management Server>`

## Administrative Context

**Purpose**: Provides centralized service restart capability across distributed Check Point infrastructure without requiring individual gateway shell access.

**Use Case**: Essential for post-configuration changes, troubleshooting scenarios, and maintenance operations requiring service refresh on remote gateways.

## Connection Potential

Links to [[checkpoint-remote-gateway-management]], [[checkpoint-expert-mode-operations]], [[checkpoint-multi-domain-administration]]