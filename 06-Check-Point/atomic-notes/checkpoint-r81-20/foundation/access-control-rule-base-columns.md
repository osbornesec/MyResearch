---
state: fleeting
type: checkpoint-management-atomic
created: 2025-06-17
source: "Check Point R81.20 Security Management Guide (2022)"
source-section: "The Columns of the Access Control Rule Base"
source-credibility: 9
management-domain: "rulebase"
integration-points: ["rule-configuration", "policy-management", "hit-analysis", "installation-targets"]
---

# Access Control Rule Base Columns

## Core Management Concept
Access Control Rule Base columns provide structured rule definition through No (rule number), Hits (connection matches), Name (administrator-assigned), Source/Destination (network objects), VPN (community), Services & Applications, Content (data protection), Action (traffic handling), Track (logging), Install On (targets), and Time (enforcement period).

## Administrative Context
This comprehensive column structure enables systematic security rule definition and management, providing administrators with granular control over traffic handling, logging, and enforcement across distributed security infrastructure with clear organization and tracking capabilities.

## Implementation Details
- No column provides rule sequence numbering within Rule Base Layer
- Hits column tracks connection matches for rule effectiveness analysis
- Name column allows administrator-defined rule identification
- Source/Destination columns define traffic origin and target network objects
- VPN column specifies applicable VPN Community for secure communications
- Services & Applications column includes services, applications, categories, and sites
- Content column protects data assets with directional flow control (Download/Upload/Any)
- Action column defines traffic handling (Accept, Drop, Ask, Inform, Inline Layer, Reject)
- Track column configures logging and tracking behavior for matched traffic
- Install On column specifies network objects receiving rule deployment
- Time column sets temporal enforcement periods for rule activation

## Integration Requirements
- Integrates with rule base management for comprehensive policy configuration
- Supports hit count analysis for rule effectiveness measurement
- Connects to installation targets for distributed policy deployment
- Foundation for systematic access control rule definition and security policy management workflows