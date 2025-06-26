---
state: permanent
type: atomic-note
created: 2025-06-17
source-credibility: 8
research-context: checkpoint-networking-utilities
validation-status: verified
last-reviewed: 2025-06-17
connections: 0
review-frequency: monthly
---

# CheckPoint Contract Util - Service Contract Management Utility

## Core Concept
The `contract_util` command-line utility in CheckPoint products manages and verifies service contract information for Security Gateways and Management Servers, ensuring devices maintain valid licensing and upgrade eligibility.

## Key Functions
- **Contract Verification**: Check upgrade eligibility with `contract_util check`
- **Contract Updates**: Download contracts from User Center with proxy support
- **License Distribution**: Deliver contract info from Management to Gateways via `contract_util mgmt`
- **Coverage Display**: Show installed licenses and contract status with `contract_util print`

## Networking Integration
- **User Center Connectivity**: Requires external access to CheckPoint User Center for contract downloads
- **Proxy Support**: Configured for environments with restricted outbound internet access
- **Internal Distribution**: Management server propagates contract information to managed gateways

## Operational Context
Essential for maintaining CheckPoint license compliance, software upgrade eligibility, and ensuring continuous service contract coverage across security infrastructure.

## Connection Potential
Links to CheckPoint management utilities, license management systems, and network security administration workflows.