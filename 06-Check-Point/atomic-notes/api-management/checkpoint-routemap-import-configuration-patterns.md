---
state: permanent
type: atomic-note
created: 2025-06-19
last-reviewed: 2025-06-19
connections: 3
review-frequency: monthly
source-credibility: 9
tags: [checkpoint, routing, gaia-os, configuration-management, network-policy]
---

# Check Point Routemap Import Configuration Patterns

## Core Concept

Import routemaps in Gaia OS use three fundamental configuration patterns: all routes import (default acceptance), selective import with explicit allow statements, and rejection-based import using restrict/allow combinations for precise filtering control.

## Pattern 1: All Routes Import
```bash
set routemap ROUTEMAP_NAME id ID_NUMBER on
set routemap ROUTEMAP_NAME id ID_NUMBER action ACTION_IF_MATCH_SUCCEEDS
set PROTOCOL import-routemap ROUTEMAP_NAME preference PREFERENCE_NUMBER on
save config
```

**Use Case**: Accept all routes from protocol with optional action modifications
**Behavior**: No match conditions means automatic matching of all routes from using protocol

## Pattern 2: Selective Import (Allow Specific)
```bash
set routemap ROUTEMAP_NAME id ID_NUMBER on
set routemap ROUTEMAP_NAME id ID_NUMBER match [conditions]
set routemap ROUTEMAP_NAME id ID_NUMBER allow
set routemap ROUTEMAP_NAME id ID_NUMBER action [optional_actions]
```

**Use Case**: Accept only routes meeting specific criteria
**Behavior**: Explicit match conditions with allow statement for precise route acceptance

## Pattern 3: Rejection-Based Import (Restrict Specific)
```bash
set routemap ROUTEMAP_NAME id LOW_ID match [reject_conditions]
set routemap ROUTEMAP_NAME id LOW_ID restrict
set routemap ROUTEMAP_NAME id HIGH_ID on
set routemap ROUTEMAP_NAME id HIGH_ID allow
```

**Use Case**: Block specific routes while allowing others
**Behavior**: Lower ID restricts unwanted routes, higher ID allows remaining routes

## Implementation Principles

- **No Match Conditions**: Automatically matches all routes from using protocol
- **Multiple Match Types**: Combine different criteria for precise route filtering
- **Action Timing**: Apply modifications after establishing match conditions
- **Protocol Assignment**: Single routemap serves multiple protocols with identical behavior
- **ID Ordering**: Process from lowest to highest ID until first match found

## API Integration Opportunities

- **Configuration Automation**: Programmatic routemap creation through Gaia API
- **Template-Based Deployment**: Standardized routemap patterns for enterprise consistency
- **Validation Integration**: Automated configuration validation and compliance checking
- **Change Management**: Version control and rollback capabilities for routemap modifications

## Cross-Domain Connections

- #supports [[checkpoint-routemap-behavior-fundamentals]] - Processing logic and match condition rules
- #validates-using [[checkpoint-network-policy-configuration-framework]] - Network security policy integration
- #builds-on [[checkpoint-configuration-automation-api]] - Programmatic configuration management integration

## Research Context

Systematic approach to route filtering and policy enforcement in enterprise networks, providing foundation for automated network topology management and security policy implementation.