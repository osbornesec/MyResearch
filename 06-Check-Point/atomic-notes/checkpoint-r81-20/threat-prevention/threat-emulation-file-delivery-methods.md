---
state: fleeting
type: atomic-note
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-threat-prevention-guide-r81-20
validation-status: verified
domain: checkpoint-security-architecture
---

# Threat Emulation File Delivery Methods

## Core Concept
Threat Emulation receives and analyzes files through multiple delivery channels including email attachments, web downloads, API transfers, and network file sharing protocols.

## Supported Delivery Protocols
- Email attachments via SMTP and SMTPS protocols
- Web downloads from internet sources
- FTP and SMB file transfer protocols
- IMAP email attachment processing
- Threat Prevention API file submissions

## Integration Architecture
- Intercepts files at network gateway level
- Supports multiple protocol analysis simultaneously
- Maintains compatibility with existing network infrastructure
- Enables automated file submission from various sources

## Security Coverage
- Protects against email-borne threats
- Secures web-based file downloads
- Monitors internal file sharing activities
- Provides comprehensive file analysis coverage

## Research Context
This multi-protocol support ensures comprehensive threat detection across all common file delivery mechanisms in enterprise network environments.

## Source Quality
- **Primary Source**: Check Point R81.20 Threat Prevention Administration Guide
- **Credibility Score**: 9/10
- **Validation Method**: Official vendor documentation verification

## Connection Potential
- Links to threat emulation virtual sandbox engine
- Integrates with gateway protocol inspection capabilities
- Connects to email security protection frameworks
- Related to network file transfer security policies