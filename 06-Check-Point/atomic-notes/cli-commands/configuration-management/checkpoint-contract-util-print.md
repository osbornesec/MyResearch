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

# CheckPoint Contract Util Print - License Coverage Display

## Core Concept
The `contract_util print` command displays all installed CheckPoint licenses and indicates whether the Service Contract covers each license for upgrade eligibility, including identification of unrecognized licenses.

## Command Syntax
```bash
contract_util [-d] print {-h | -help} hfa maj_upgrade min_upgrade upgrade
```

## Display Options
- **-d flag**: Shows formatted table header with detailed information
- **License Coverage**: Indicates which licenses are covered by Service Contract
- **Upgrade Eligibility**: Shows entitlement status for different upgrade types
- **Unrecognized Licenses**: Identifies licenses not covered by Service Contract

## Upgrade Type Parameters
- **hfa**: Shows Hotfix Accumulator information
- **maj_upgrade**: Displays Major version upgrade details
- **min_upgrade**: Shows Minor version upgrade information
- **upgrade**: General upgrade eligibility display

## Operational Context
Provides comprehensive visibility into license compliance and upgrade entitlements, essential for planning upgrade strategies and identifying licensing gaps in CheckPoint deployments.

## Source Attribution
**Primary Source**: CheckPoint Admin Foundation CLI Guide (R81.20)
**Reference**: sk33089 - Service Contract File documentation
**Credibility**: Official CheckPoint documentation

## Connection Potential
Links to CheckPoint license auditing, compliance reporting, and upgrade planning workflows.