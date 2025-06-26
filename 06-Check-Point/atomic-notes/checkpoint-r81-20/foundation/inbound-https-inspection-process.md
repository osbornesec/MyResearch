---
state: fleeting
type: checkpoint-management-atomic
created: 2025-06-17
source: "Check Point R81.20 Security Management Guide (2022)"
source-section: "Inbound HTTPS Connections"
source-credibility: 9
management-domain: "inspection"
integration-points: ["external-clients", "internal-servers", "dmz-protection", "certificate-proxying"]
---

# Inbound HTTPS Inspection Process

## Core Management Concept
Inbound HTTPS inspection processes external client requests to internal servers through rule matching evaluation, internal server certificate utilization for external client connections, and new HTTPS connection establishment with internal servers for DMZ and internal network protection.

## Administrative Context
This reverse inspection capability protects internal server infrastructure from external threats by intercepting and analyzing inbound encrypted connections, enabling threat detection while maintaining legitimate access to organizational web services and applications.

## Implementation Details
- HTTPS request arrival from external clients targeting internal servers
- Security Gateway inspection and rule matching against configured policies
- Non-matching requests bypass HTTPS payload inspection for performance
- Matching requests trigger inbound inspection workflow activation
- Internal server certificate utilization for external client HTTPS connection creation
- New HTTPS connection establishment between Security Gateway and internal servers
- DMZ and internal network server protection through traffic interception
- Certificate proxying enables transparent security inspection

## Integration Requirements
- Requires HTTPS Inspection rule configuration for inbound traffic matching
- Integrates with internal server certificate management for client connections
- Supports DMZ and internal network architecture for server protection
- Foundation for inbound threat detection and internal server security workflows