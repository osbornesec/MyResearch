---
state: permanent
type: atomic-note
created: 2025-06-18
source-credibility: 9
research-context: checkpoint-contract-utility-commands
validation-status: verified
last-reviewed: 2025-06-18
connections: 1
review-frequency: monthly
---

# CheckPoint Contract Util Check - Upgrade Eligibility Verification

## Core Concept
The `contract_util check` command verifies whether a CheckPoint Security Gateway is eligible for various types of upgrades by consulting the Service Contract file and determining coverage for hotfix accumulators, minor versions, major versions, or general upgrades.

## Command Syntax
```bash
contract_util check {-h | -help} hfa maj_upgrade min_upgrade upgrade
```

## Upgrade Type Parameters
- **hfa**: Checks eligibility for Hotfix Accumulator upgrades
- **maj_upgrade**: Verifies eligibility for Major version upgrades
- **min_upgrade**: Validates eligibility for Minor version upgrades  
- **upgrade**: General upgrade eligibility verification

## Operational Context
Essential pre-upgrade validation step that prevents attempting unsupported upgrades and ensures compliance with CheckPoint Service Contract terms before initiating upgrade procedures.

## Source Attribution
**Primary Source**: CheckPoint Admin Foundation CLI Guide (R81.20)
**Reference**: sk33089 - Service Contract File documentation
**Credibility**: Official CheckPoint documentation

## Connection Potential
Links to CheckPoint upgrade procedures, service contract management, and license validation workflows.