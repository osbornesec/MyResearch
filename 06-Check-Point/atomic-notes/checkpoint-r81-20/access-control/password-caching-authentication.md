---
state: fleeting
type: research-atomic
created: 2025-06-17
source-credibility: 9
research-context: Check Point R81.20 authentication user experience
validation-status: verified
source: "Check Point R81.20 Remote Access VPN Administration Guide"
domain: "Authentication Management"
---

# Password Caching Authentication Experience Enhancement

## Core Concept
Password caching enables storage of user authentication credentials for specified time periods, reducing re-authentication frequency during VPN sessions while maintaining security through configurable cache timeouts and compatibility restrictions.

## Caching Mechanism
- **Temporary Storage**: User passwords stored temporarily on client system
- **Configurable Duration**: Cache timeout period administratively configurable
- **Re-Authentication Timing**: Cached credentials used for subsequent authentication requests
- **Automatic Expiration**: Cached passwords automatically expire after specified time period

## Authentication Workflow Enhancement
- **Initial Authentication**: User provides credentials for first VPN connection
- **Cache Storage**: Valid credentials stored in secure local cache
- **Subsequent Connections**: Cached credentials used for re-authentication events
- **Seamless Experience**: Reduced user interaction for ongoing VPN access

## Security Restrictions
- **Multiple-Use Passwords Only**: Caching only available for reusable password types
- **One-Time Password Exclusion**: SecurID and other OTP systems incompatible with caching
- **Authentication Scheme Limitation**: Specific authentication methods support caching
- **Timeout Enforcement**: Cached credentials expire regardless of usage patterns

## Configuration Options
- **Administrative Control**: Password caching enabled/disabled through Global Properties
- **Cache Duration**: Configurable time period for credential storage
- **User Group Policies**: Different caching policies for different user groups
- **Security Balance**: Balance between user experience and security requirements

## Implementation Considerations
- **OTP Incompatibility**: One-time password systems should not implement caching
- **Security Assessment**: Organizations must evaluate caching risks vs. usability benefits
- **Timeout Selection**: Cache duration selection based on security requirements
- **User Education**: Users need understanding of caching behavior and implications

## Client Integration
- **Endpoint Security VPN**: Full password caching support with administrative controls
- **Transparent Operation**: Caching occurs transparently without user configuration
- **Secure Storage**: Cached credentials stored using secure local storage mechanisms
- **Memory Protection**: Cached passwords protected in client memory during storage

## Administrative Management
- **Global Properties Configuration**: Caching settings managed through Global Properties
- **Remote Access Settings**: Configuration under Remote Access > Endpoint Security VPN
- **Policy Distribution**: Caching settings distributed to all managed gateways
- **Audit Capability**: Password caching usage tracked for security monitoring