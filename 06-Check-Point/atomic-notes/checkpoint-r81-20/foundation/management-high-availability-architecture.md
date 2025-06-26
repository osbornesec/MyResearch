---
state: fleeting
type: checkpoint-management-atomic
created: 2025-06-17
source: "Check Point R81.20 Security Management Guide (2022)"
source-section: "Management High Availability - Overview"
source-credibility: 9
management-domain: "highavailability"
integration-points: ["redundancy", "database-backup", "synchronization", "revisions-technology"]
---

# Management High Availability Architecture

## Core Management Concept
Management High Availability provides redundancy and database backup for management servers through synchronized configurations including policies, rules, user definitions, network objects, and system settings, utilizing built-in revisions technology for real-time incremental updates.

## Administrative Context
This critical resilience capability ensures continuous security management operations through automated failover and data synchronization, enabling organizations to maintain security posture during primary server failures or maintenance activities without operational disruption.

## Implementation Details
- Synchronization includes policies, rules, user definitions, network objects, and system configuration
- Built-in revisions technology enables incremental change synchronization since last update
- Real-time updates maintained between management server peers for current state consistency
- Minimal resource impact on management server through efficient change-only synchronization
- Primary server designation assigned to first installed management server
- Secondary server changeover capability when primary fails or requires maintenance
- Database backup and redundancy maintained across synchronized management infrastructure

## Integration Requirements
- Requires multiple Security Management Server installations for redundancy
- Integrates with revisions technology for efficient synchronization
- Supports administrator-initiated changeover procedures for planned maintenance
- Foundation for resilient security management and business continuity workflows