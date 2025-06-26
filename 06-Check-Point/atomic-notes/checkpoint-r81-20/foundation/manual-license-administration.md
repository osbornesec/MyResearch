---
state: fleeting
type: checkpoint-management-atomic
created: 2025-06-17
source: "Check Point R81.20 Security Management Guide (2022)"
source-section: "Managing Server and Gateway Licenses"
source-credibility: 9
management-domain: "licensing"
integration-points: ["smartconsole", "license-files", "license-strings", "permission-profiles"]
---

# Manual License Administration

## Core Management Concept
Manual license administration in SmartConsole (R81+) enables adding licenses from files or strings and removing licenses through the Licenses tab, requiring Run One Time Script permission and providing license information including IP Address, Expiration Date, CK (Certificate Key), and SKU (Catalog ID).

## Administrative Context
This manual licensing capability provides administrators with direct control over license deployment and management, supporting environments requiring offline licensing or specific license distribution scenarios while maintaining comprehensive license tracking and validation.

## Implementation Details
- R81 and higher SmartConsole support for manual license addition and removal
- Gateways & Servers navigation access for license management
- License file addition through Add > License File with file browser selection
- License string addition through Add > License String with paste functionality
- License removal through selection and Remove button operation
- License information columns: IP Address (generation target), Expiration Date (support contract), CK (Certificate Key), SKU (Catalog ID)
- Run One Time Script permission requirement for license operations
- Permission assignment through Manage & Settings > Permissions & Administrators > Permission Profiles

## Integration Requirements
- Requires SmartConsole R81+ for manual license management functionality
- Integrates with permission profile system for administrator authorization
- Supports license file and string formats for flexible deployment
- Foundation for manual license deployment and offline licensing scenarios workflows