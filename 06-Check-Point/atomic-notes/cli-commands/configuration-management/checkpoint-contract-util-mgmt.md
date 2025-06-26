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

# CheckPoint Contract Util Mgmt - Management Server Contract Distribution

## Core Concept
The `contract_util mgmt` command distributes Service Contract information from the Management Server to all managed Security Gateways, ensuring consistent contract coverage across the entire CheckPoint security infrastructure.

## Command Syntax
```bash
contract_util mgmt
```

## Distribution Function
- **Centralized Propagation**: Management Server pushes contract information to gateways
- **No Parameters Required**: Simple command execution without additional options
- **Infrastructure-Wide Coverage**: Ensures all managed devices receive updated contract data

## Operational Context
Essential for maintaining synchronized Service Contract information across distributed CheckPoint environments, enabling uniform upgrade eligibility and license compliance across all managed security gateways.

## Source Attribution
**Primary Source**: CheckPoint Admin Foundation CLI Guide (R81.20)
**Reference**: sk33089 - Service Contract File documentation
**Credibility**: Official CheckPoint documentation

## Connection Potential
Links to CheckPoint management server operations, distributed security gateway management, and centralized configuration distribution workflows.