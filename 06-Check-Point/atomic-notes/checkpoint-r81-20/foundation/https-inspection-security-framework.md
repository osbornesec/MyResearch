---
state: fleeting
type: checkpoint-management-atomic
created: 2025-06-17
source: "Check Point R81.20 Security Management Guide (2022)"
source-section: "HTTPS Inspection"
source-credibility: 9
management-domain: "inspection"
integration-points: ["tls-protocol", "certificate-management", "outbound-inspection", "inbound-inspection"]
---

# HTTPS Inspection Security Framework

## Core Management Concept
HTTPS Inspection enables Security Gateways to decrypt and inspect TLS-encrypted traffic through certificate intermediation, providing Outbound HTTPS Inspection (internal client to external server protection) and Inbound HTTPS Inspection (external client to internal server protection) with privacy-protected logging and administrator permission controls.

## Administrative Context
This critical security capability addresses the challenge of encrypted traffic inspection, enabling organizations to detect malicious activity hidden within HTTPS communications while maintaining data privacy through access-controlled logging and specialized administrator permissions.

## Implementation Details
- TLS (Transport Layer Security) protocol traffic decryption and inspection capability
- Security Gateway acts as certificate intermediary between clients and servers
- Outbound inspection protects against malicious traffic from internal clients to external sites
- Inbound inspection protects internal servers from external malicious requests
- Certificate-based new TLS connection creation for traffic decryption
- Privacy protection through HTTPS Inspection log data confidentiality
- Administrator permission requirement for complete HTTPS Inspection log field access

## Integration Requirements
- Requires certificate management infrastructure for intermediation capabilities
- Integrates with Security Gateway enforcement for traffic inspection and filtering
- Supports specialized administrator permissions for log access control
- Foundation for encrypted traffic security analysis and malicious content detection workflows