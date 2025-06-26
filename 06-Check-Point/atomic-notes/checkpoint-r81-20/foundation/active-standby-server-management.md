---
state: fleeting
type: checkpoint-management-atomic
created: 2025-06-17
source: "Check Point R81.20 Security Management Guide (2022)"
source-section: "The High Availability Environment - Active vs. Standby"
source-credibility: 9
management-domain: "highavailability"
integration-points: ["active-server", "standby-server", "changeover-procedures", "collision-mode"]
---

# Active Standby Server Management

## Core Management Concept
High Availability configuration maintains one Active server for administration with automatic Standby server synchronization at regular intervals, supporting Read Only Standby access, administrator-initiated changeover for failover, and Collision Mode handling when communication fails.

## Administrative Context
This operational management model ensures continuous administrative capability through clearly defined server roles and automated synchronization, enabling planned maintenance and emergency failover while preventing configuration conflicts through controlled access modes.

## Implementation Details
- Single Active server handles all administrative management functions
- Automatic synchronization from Active to Standby servers at regular intervals
- Standby servers accessible only in Read Only mode for monitoring and verification
- Administrator-initiated changeover converts Standby to Active server during failover
- Collision Mode occurs when communication failure creates multiple Active servers
- Primary vs. Secondary designation based on installation sequence (first becomes Primary Active)
- Secondary servers default to Standby status upon installation completion

## Integration Requirements
- Requires synchronized backup and restore procedures across all High Availability servers
- Integrates with SmartConsole for changeover administration and status monitoring
- Supports coordination with other administrators during backup operations
- Foundation for resilient management operations and planned maintenance workflows