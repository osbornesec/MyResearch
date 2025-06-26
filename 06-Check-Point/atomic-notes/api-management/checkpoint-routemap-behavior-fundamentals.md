---
state: permanent
type: atomic-note
created: 2025-06-19
last-reviewed: 2025-06-19
connections: 4
review-frequency: monthly
source-credibility: 9
tags: [checkpoint, routing, gaia-os, logic-processing, network-policy]
---

# Check Point Routemap Behavior Fundamentals

## Core Concept

Routemaps control route sharing between protocols through Import/Export directional filtering using preference-based processing order, ID-based sequential matching, and logical condition combination rules for enterprise network policy enforcement.

## Processing Order Logic

### Preference-Based Processing
- **Lower Preference First**: Multiple routemaps processed in ascending preference order
- **Cross-Routemap Ordering**: Preference values determine execution sequence across different routemaps
- **Unique Preferences**: Same protocol cannot have multiple routemaps with identical preference values

### ID-Based Sequential Processing
- **Lowest ID First**: Within single routemap, IDs checked from lowest to highest
- **First Match Wins**: Processing stops at first successful match condition
- **Specific First Principle**: More specific conditions should have lower IDs for priority processing

## Match Condition Logic Framework

### Same Type Conditions (OR Logic)
```bash
match interface eth1
match interface eth2
# Result: Routes from eth1 OR eth2
```
**Behavior**: Adding same-type conditions increases routes matched

### Different Type Conditions (AND Logic)
```bash
match interface eth1
match network 192.168.0.0/16
# Result: Routes from eth1 AND within network range
```
**Behavior**: Adding different-type conditions decreases routes matched

## Protocol Integration Patterns

### Automatic Protocol Matching
- **Default Behavior**: Routemaps automatically match using protocol unless specified otherwise
- **Protocol Specificity**: Using protocol determines source for route evaluation
- **Cross-Protocol Application**: Single routemap can serve multiple protocols with identical behavior

### BGP Peer Specificity
- **Peer Override**: Peer-specific routemaps override peer group routemaps
- **Granular Control**: Individual peer configuration takes precedence over group settings
- **Inheritance Model**: Group settings provide defaults, peer settings provide specificity

## Directional Control Framework

### Import Routemaps
- **Function**: Govern route acceptance from external sources
- **Scope**: Control which routes enter local routing table
- **Application**: Filter and modify routes before local processing

### Export Routemaps
- **Function**: Govern route distribution to external peers
- **Scope**: Control which local routes are shared externally
- **Application**: Filter and modify routes before external advertisement

## API Integration Opportunities

- **Configuration Templates**: Standardized logic patterns for automated deployment
- **Validation Framework**: Automated logic verification and conflict detection
- **Policy Compliance**: Systematic enforcement of routing policy standards
- **Performance Optimization**: Logic-driven route processing efficiency analysis

## Cross-Domain Connections

- #supports [[checkpoint-routemap-import-configuration-patterns]] - Implementation patterns using behavior fundamentals
- #builds-on [[checkpoint-routing-protocol-integration-framework]] - BGP, OSPF, RIP configuration strategies
- #validates-using [[checkpoint-network-policy-enforcement-patterns]] - Security policy integration methodologies
- #extends [[checkpoint-configuration-automation-api]] - Programmatic policy management capabilities

## Research Context

Fundamental logic framework for enterprise routing policy implementation in Gaia OS, providing systematic basis for automated network configuration and policy enforcement through API-driven management systems.