---
state: fleeting
type: checkpoint-management-atomic
created: 2025-06-17
source: "Check Point R81.20 Security Management Guide (2022)"
source-section: "Managing Gateways - SIC Authentication"
source-credibility: 9
management-domain: "communication"
integration-points: ["trusted-communication", "authentication", "one-time-password", "gateway-server-trust"]
---

# Secure Internal Communication SIC

## Core Management Concept
Secure Internal Communication (SIC) establishes trusted communication between Security Management Server and Security Gateways through one-time password authentication and platform-specific initialization procedures, ensuring secure policy distribution and management operations.

## Administrative Context
This critical security mechanism protects the integrity of management communications in distributed security infrastructures, preventing unauthorized access to configuration channels and ensuring authentic policy deployment across the security enforcement network.

## Implementation Details
- One-time password authentication required for initial trust establishment
- Platform-specific initialization procedures accommodate different appliance types
- Automatic trusted communication initialization for Small Office Appliance platforms
- Initialize command establishes secure communication channels between management and enforcement
- Trust establishment verification before continuing gateway configuration
- Failure handling allows configuration continuation despite communication issues
- Communication window provides platform selection and authentication configuration

## Integration Requirements
- Integrates with Security Gateway creation and configuration procedures
- Supports platform-specific communication requirements and initialization methods
- Connects to gateway topology retrieval for interface configuration validation
- Foundation for secure policy distribution and management communication workflows