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

# CheckPoint Contract Util Verify - Enhanced Upgrade Eligibility Check

## Core Concept
The `contract_util verify` command performs the same upgrade eligibility check as `contract_util check` but additionally interprets return values and displays meaningful, human-readable messages about upgrade eligibility status.

## Command Syntax
```bash
contract_util verify
```

## Enhanced Functionality
- **Same Check Logic**: Identical verification process as `contract_util check`
- **Interpreted Results**: Translates return codes into meaningful status messages
- **User-Friendly Output**: Provides clear, actionable information about upgrade eligibility
- **No Parameters**: Simple execution without additional options

## Operational Context
Preferred command for interactive upgrade planning as it provides clear, interpretable results about Service Contract coverage and upgrade eligibility without requiring manual interpretation of return codes.

## Source Attribution
**Primary Source**: CheckPoint Admin Foundation CLI Guide (R81.20)
**Reference**: sk33089 - Service Contract File documentation, contract_util check command
**Credibility**: Official CheckPoint documentation

## Connection Potential
Links to CheckPoint upgrade procedures, interactive administration workflows, and user-friendly system validation processes.