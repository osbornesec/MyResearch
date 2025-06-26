---
state: fleeting
type: checkpoint-management-atomic
created: 2025-06-17
source: "Check Point R81.20 Security Management Guide (2022)"
source-section: "Outbound HTTPS Connections"
source-credibility: 9
management-domain: "inspection"
integration-points: ["https-rules", "certificate-validation", "ocsp-protocol", "traffic-decryption"]
---

# Outbound HTTPS Inspection Process

## Core Management Concept
Outbound HTTPS inspection processes internal client requests to external servers through rule matching, OCSP certificate validation, new certificate creation, traffic decryption, security policy inspection, re-encryption, and external server forwarding for comprehensive malicious traffic protection.

## Administrative Context
This sophisticated inspection workflow enables deep packet inspection of encrypted outbound traffic, protecting organizations from internal threats while maintaining the integrity and security of legitimate communications through systematic certificate validation and policy enforcement.

## Implementation Details
- HTTPS request arrival from internal clients targeting external servers
- Security Gateway inspection and rule matching evaluation
- Non-matching requests bypass HTTPS payload inspection
- Matching requests trigger comprehensive inspection workflow
- External server HTTPS certificate validation using OCSP (Online Certificate Status Protocol)
- New certificate creation for external server connection establishment
- HTTPS connection decryption for payload inspection
- Decrypted traffic analysis against Security Policy rules
- Policy-allowed traffic re-encryption before external server transmission
- Complete request forwarding to designated external servers

## Integration Requirements
- Requires HTTPS Inspection rule configuration for traffic matching
- Integrates with OCSP infrastructure for certificate validation
- Supports Security Policy enforcement for decrypted traffic analysis
- Foundation for outbound threat detection and encrypted traffic security workflows