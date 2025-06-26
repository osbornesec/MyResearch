---
state: permanent
type: atomic-note
created: 2025-06-18
last-reviewed: 2025-06-18
source-credibility: 9
research-context: checkpoint-cli-administration
validation-status: verified
connections: 3
review-frequency: quarterly
---

# CheckPoint FWM SIC Reset Command

## Core Concept
The `fwm sic_reset` command resets Secure Internal Communication (SIC) on the CheckPoint Management Server, breaking and requiring re-establishment of trust relationships between the Management Server and all its managed security objects.

## Command Syntax
```bash
fwm [-d] sic_reset
```

## Parameters
- **-d**: Runs the command in debug mode (use only for troubleshooting the command itself)
  - Best practice: Redirect output to a file or use script command to save CLI session
  - For complete debug instructions, see sk97638

## Critical Warning Requirements
- **Mandatory backup**: Take a Gaia Snapshot and full backup of Management Server before execution
- **Impact scope**: Resets SIC between Management Server and ALL managed objects
- **Multi-Domain context**: Must run in applicable Domain Management Server context using `mdsenv <IP Address or Name of Domain Management Server>`

## Usage Context
- **Purpose**: Complete SIC reset when trust relationships are corrupted or compromised
- **Environment**: CheckPoint Management Server administration
- **Prerequisites**: Administrative access and proper backup procedures
- **Recovery reference**: Detailed procedure available in sk65764

## Operational Impact
- Breaks all existing SIC trust relationships
- Requires manual re-establishment of SIC with all managed gateways
- Potential service disruption during re-establishment phase
- Network security policy enforcement may be affected until SIC is restored

## Connection Potential
Links to existing vault concepts:
- [[checkpoint-sic-communication-framework]]
- [[checkpoint-management-server-administration]]
- [[checkpoint-trust-relationship-management]]
- [[checkpoint-disaster-recovery-procedures]]
- [[checkpoint-multi-domain-management]]

## Technical Notes
- Command execution requires expert-level CLI access
- Debug mode generates extensive logging that should be captured
- Multi-Domain environments require specific context switching before execution
- Recovery procedures are documented in CheckPoint knowledge base articles