---
state: fleeting
type: checkpoint-management-atomic
created: 2025-06-17
source: "Check Point R81.20 Security Management Guide (2022)"
source-section: "Updating the Registry Settings"
source-credibility: 9
management-domain: "schemamodification"
integration-points: ["registry-modification", "schema-updates", "control-delegation", "administrator-permissions"]
---

# Active Directory Schema Modification

## Core Management Concept
Active Directory schema modification requires registry DWORD key "Schema Update Allowed" with non-zero value under HKLM\System\CurrentControlSet\Services\NTDS\Parameters, plus control delegation to specific users or groups since default Administrator lacks schema modification privileges.

## Administrative Context
This advanced configuration procedure enables Check Point integration with Active Directory through schema extensions, requiring careful permission management and registry modifications to allow schema updates while maintaining directory security.

## Implementation Details
- Registry modification at HKLM\System\CurrentControlSet\Services\NTDS\Parameters location
- Create DWORD key named "Schema Update Allowed" with non-zero value for activation
- Control delegation required since default Administrator cannot modify schema
- Directory object management requires User Directory protocol permissions
- Specific user or group assignment necessary for schema modification authority
- Administrative delegation essential for proper directory integration functionality

## Integration Requirements
- Requires Windows registry modification access for schema enablement
- Integrates with Active Directory security model for permission delegation
- Supports User Directory protocol for object management operations
- Foundation for advanced Active Directory integration and schema extension workflows