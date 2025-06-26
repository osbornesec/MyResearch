---
state: fleeting
type: checkpoint-management-atomic
created: 2025-06-17
source: "Check Point R81.20 Security Management Guide (2022)"
source-section: "Command Line Reference - contract_util"
source-credibility: 9
management-domain: "servicecontracts"
integration-points: ["service-contracts", "licensing", "support-verification", "contract-validation"]
---

# Service Contract Management Utility

## Core Management Concept
The contract_util command-line utility manages Check Point Service Contracts through comprehensive operations including contract checking, downloading, printing, summary generation, updating, and verification with macro processing capabilities for licensing and support management.

## Administrative Context
This essential utility enables administrators to manage service contract lifecycle operations, verify licensing compliance, maintain support entitlements, and ensure proper contract documentation for organizational security infrastructure management and vendor relationship maintenance.

## Implementation Details
- check command validates service contract status and compliance
- cpmacro command processes contract-related macro operations
- download command retrieves updated service contract files
- mgmt command provides management-specific contract operations
- print command generates service contract documentation
- summary command displays contract overview and key information
- update command refreshes service contract configurations
- verify command confirms contract authenticity and validity

## Integration Requirements
- References SK33089 documentation for Service Contract File information
- Integrates with Check Point licensing and support systems
- Supports contract file management and validation workflows
- Foundation for licensing compliance and support entitlement management procedures