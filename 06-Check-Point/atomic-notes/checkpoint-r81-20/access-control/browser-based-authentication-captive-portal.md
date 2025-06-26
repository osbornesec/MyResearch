---
state: fleeting
type: research-atomic
created: 2025-06-17
source-credibility: 10
research-context: checkpoint-identity-awareness-guide-r81-20
validation-status: verified
---

# Browser-Based Authentication Captive Portal

## Core Concept
Browser-Based Authentication is an Identity Source that acquires user identities through a web portal (Captive Portal) on the Identity Awareness Gateway, where users authenticate using their web browser.

## Authentication Methods
- **Captive Portal**: Web authentication portal hosted on Identity Awareness Gateway
- **Transparent Kerberos Authentication**: Seamless authentication for domain users

## Technical Implementation
- Users connect to authentication web portal at https://<Gateway_IP_Address>/connect
- Web browser-based login and authentication process
- Identity acquired and mapped to source IP address
- Supports both recognized users and guest user scenarios

## Use Cases
- **Recognized User from Unmanaged Device**: Domain users on non-corporate devices
- **Guest Users from Unmanaged Device**: External users requiring network access
- **Wireless Campus**: Public WiFi authentication scenarios

## Security Considerations
- SSL/HTTPS encryption for authentication portal
- Certificate management for trusted authentication
- Integration with existing user directory services
- Support for two-factor authentication methods

## Research Context
Primary identity acquisition method for unmanaged devices and guest access scenarios in enterprise networks.

## Source Quality
- **Primary Source**: Check Point Identity Awareness Administration Guide R81.20
- **Credibility Score**: 10/10
- **Validation Method**: Official Check Point documentation

## Connection Potential
Links to Kerberos Authentication, Guest Access Management, Wireless Network Security, SSL Certificate Management