---
state: fleeting
type: atomic-note
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-https-inspection-policy
validation-status: verified
---

# HTTPS Inspection Policy Structure

## Core Concept
HTTPS Inspection Policy enables Security Gateways to decrypt and inspect encrypted HTTPS traffic by creating new SSL connections with external sites, allowing comprehensive security analysis of otherwise opaque encrypted communications.

## Security Architecture Context
Provides critical visibility into encrypted traffic flows, enabling security software blades to analyze HTTPS communications that would otherwise bypass security inspection due to encryption.

## Key Components
- **SSL Connection Recreation**: Creates new SSL connections to enable decryption
- **Multi-Blade Integration**: Works with Anti-Bot, Anti-Virus, Application Control, Content Awareness, DLP, IPS, Threat Emulation, and URL Filtering
- **Certificate Management**: Handles outbound and custom certificates for inspection
- **Bypass Capabilities**: Allows selective exclusion of sensitive traffic from inspection
- **Rule-Based Control**: Granular control over which traffic receives inspection

## Integrated Software Blades
Supports inspection integration with eight software blades: Anti-Bot, Anti-Virus, Application Control, Content Awareness (Data Awareness), Data Loss Prevention, IPS, Threat Emulation, and URL Filtering.

## Rule Structure Elements
HTTPS Inspection rules include source/destination objects, service specifications, application categories, actions (Inspect/Bypass), tracking options, blade selections, installation targets, and certificate assignments.

## Source Quality
- **Primary Source**: Check Point R81.20 Security Gateway Administration Guide (2022)
- **Credibility Score**: 9/10
- **Validation Method**: Official vendor documentation

## Connection Potential
Links to SSL certificate management, software blade integration, encrypted traffic analysis, and privacy protection mechanisms.