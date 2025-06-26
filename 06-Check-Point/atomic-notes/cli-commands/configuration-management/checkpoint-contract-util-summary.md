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

# CheckPoint Contract Util Summary - Post-Installation Status Report

## Core Concept
The `contract_util summary` command provides a comprehensive post-installation summary showing whether the CheckPoint computer is eligible for various upgrade types, delivering consolidated status information after system installation or updates.

## Command Syntax
```bash
contract_util summary hfa maj_upgrade min_upgrade upgrade
```

## Summary Information Types
- **hfa**: Hotfix Accumulator eligibility status
- **maj_upgrade**: Major version upgrade eligibility
- **min_upgrade**: Minor version upgrade eligibility
- **upgrade**: General upgrade eligibility summary

## Operational Context
Critical post-installation validation tool that provides immediate visibility into upgrade paths and Service Contract coverage, ensuring proper system configuration and license compliance after deployment.

## Source Attribution
**Primary Source**: CheckPoint Admin Foundation CLI Guide (R81.20)
**Credibility**: Official CheckPoint documentation

## Connection Potential
Links to CheckPoint installation procedures, post-deployment validation, and upgrade planning workflows.