---
state: fleeting
type: research-atomic
created: 2025-06-17
source-credibility: 9
research-context: Check Point R81.20 Mobile Access endpoint security
validation-status: verified
source: "Check Point R81.20 Mobile Access Administration Guide"
domain: "Endpoint Security"
---

# Endpoint Compliance Scanner Security Validation

## Core Concept
Check Point Endpoint Security on Demand (ESOD) scanner performs pre-access security validation of endpoint machines to ensure compliance with corporate endpoint security policies before granting Mobile Access portal access.

## Compliance Validation Framework
- **Security Posture Assessment**: Scans endpoint for required security software and configurations
- **Anti-Virus Verification**: Ensures updated anti-virus signatures and active protection
- **Firewall Status Check**: Validates active firewall protection on endpoint devices
- **Policy Compliance**: Verifies endpoint meets organizational security requirements

## On-Demand Scanning Architecture
- **Pre-Access Validation**: Scanning occurs before granting application access
- **Automatic Integration**: Seamlessly integrated into Mobile Access portal workflow
- **Risk-Based Access**: Access decisions based on endpoint compliance status
- **Real-Time Assessment**: Dynamic security posture evaluation during connection

## Multi-Factor Security Enforcement
- **Device Security State**: Evaluates current endpoint security configuration
- **Software Installation Checks**: Verifies presence of required security applications
- **Update Status Validation**: Ensures security software has current threat definitions
- **Configuration Compliance**: Validates security settings match corporate policies

## Protection Level Integration
- **Granular Policy Control**: Different compliance requirements for different applications
- **User Group Policies**: Customized compliance requirements based on user role
- **Application Sensitivity**: Higher security requirements for sensitive applications
- **Risk-Based Decisions**: Compliance requirements matched to data sensitivity

## Threat Prevention Capabilities
- **Malware Detection**: Identifies and blocks access from infected endpoints
- **Security Software Verification**: Ensures endpoint protection is active and current
- **Policy Enforcement**: Blocks non-compliant devices from accessing corporate resources
- **Continuous Monitoring**: Ongoing compliance validation during access sessions

## Administrative Control
- **Policy Configuration**: Administrators define compliance requirements per user group
- **Exemption Management**: Controlled exceptions for specific users or scenarios
- **Reporting Integration**: Compliance status reporting and audit trails
- **Remediation Guidance**: Instructions for users to achieve compliance

## Access Control Integration
- **Authentication Coordination**: Works with multi-factor authentication systems
- **Authorization Enhancement**: Adds security posture to access decision matrix
- **Session Management**: Compliance affects session privileges and duration
- **Application Access**: Determines which applications user can access based on compliance