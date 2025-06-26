---
state: fleeting
type: checkpoint-management-atomic
created: 2025-06-17
source: "Check Point R81.20 Security Management Guide (2022)"
source-section: "Creating an Access Control Policy - Unified Access Control Policy"
source-credibility: 9
management-domain: "policy"
integration-points: ["firewall", "application-filtering", "content-awareness", "vpn", "identity-awareness"]
---

# Unified Access Control Policy Framework

## Core Management Concept
The Unified Access Control Policy combines Firewall, Application & URL Filtering, Content Awareness, IPsec VPN, Mobile Access, and Identity Awareness into a single granular Rule Base, eliminating separate rule base management and enabling comprehensive security control through integrated features.

## Administrative Context
This consolidated policy framework simplifies security management by providing unified control over multiple security functions, enabling administrators to create intuitive rules that address network access, application usage, data protection, secure communications, and user identification in cohesive policies.

## Implementation Details
- Firewall controls access to and from internal networks
- Application & URL Filtering blocks applications and websites
- Content Awareness restricts data types for upload and download
- IPsec VPN and Mobile Access configure secure site-to-site and remote access
- Identity Awareness identifies users, computers, and networks
- Single rule capability combining user networks, applications, and file size restrictions
- Unified object support including Security Zones, Services, Applications, URLs, Data Types, and Access Roles
- Comprehensive logging covering Network, Protocol, Application, User, Accessed resources, and Data Types

## Integration Requirements
- Integrates all access control features into unified rule base management
- Supports complex rule creation combining multiple security functions
- Provides consolidated logging for comprehensive security event analysis
- Foundation for simplified security policy management and integrated protection workflows