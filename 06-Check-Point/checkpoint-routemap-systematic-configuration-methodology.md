---
state: permanent
type: atomic-note
created: 2025-06-17
domain: checkpoint-configuration
source-credibility: 9
validation-status: verified
---

# Check Point Routemap Systematic Configuration Methodology

## Core Concept

Comprehensive configuration framework for Gaia OS routemaps implementing structured import/export routing policies with hierarchical preference systems and systematic verification procedures.

## Configuration Framework Structure

### Phase 1: Behavior Understanding
- **Import vs Export Semantics**: Import governs routes entering routing table, Export governs routes redistributed to other protocols
- **Preference Hierarchy**: Lower preference values evaluated first (1 = highest priority)
- **ID Evaluation Order**: Within routemap, IDs processed lowest to highest until match found
- **Automatic Protocol Matching**: Routemaps auto-match their assigned protocol unless explicitly overridden

### Phase 2: Match Condition Logic
- **Same Type Conditions**: Multiple conditions of same type create OR logic (broader matching)
- **Different Type Conditions**: Different condition types create AND logic (narrower matching)
- **Interface Treatment**: VLANs and bonding groups treated as logical interfaces
- **Route Redistribution Override**: Routemap activation disables Inbound Route Filters and Route Redistribution

### Phase 3: Systematic Configuration Patterns

#### Import Routemap Patterns
1. **Accept All with Actions**: `set routemap NAME id N on` + `set routemap NAME id N action`
2. **Selective Import**: Multiple IDs with specific match conditions + `allow`
3. **Rejection Filtering**: Restrict IDs for unwanted routes + high ID allow for remaining
4. **Parameter Application**: Targeted actions on specific route subsets

#### Export Routemap Patterns
1. **Protocol-Specific Export**: `match protocol PROTOCOL` for each source protocol
2. **Selective Export**: Combined protocol and attribute matching
3. **Restriction Filtering**: Separate restrict routemap with lower preference

### Phase 4: Verification Methodology
```bash
# Configuration verification
show PROTOCOL routemap

# Route table validation
show route         # IPv4 active routes
show route all     # IPv4 all routes including hidden/inactive
show ipv6 route    # IPv6 active routes
show ipv6 route all # IPv6 all routes

# Configuration persistence
save config
```

## Implementation Guidelines

### Critical Warning Protocol
- **Connectivity Risk**: Accidental route blocking can cause network isolation
- **Security Risk**: Unintended route advertisement can create vulnerabilities
- **Override Behavior**: Routemap activation disables existing route filters

### Configuration Validation Checklist
- [ ] Preference values unique within protocol/direction
- [ ] Most specific match conditions in lowest ID/preference
- [ ] Default allow/deny behavior explicitly configured
- [ ] Route table shows expected import behavior
- [ ] Hidden/inactive routes analyzed for import issues

## Research Context

Systematic routemap configuration methodology from sk100501 (How to configure Routemaps in Gaia Clish). Provides reusable patterns for dynamic routing policy implementation.

## Connection Potential

Links to BGP configuration procedures, OSPF routing policies, and network architecture frameworks across Check Point routing infrastructure.