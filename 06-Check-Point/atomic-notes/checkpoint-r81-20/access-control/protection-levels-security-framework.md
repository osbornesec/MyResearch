---
state: fleeting
type: research-atomic
created: 2025-06-17
source-credibility: 9
research-context: Check Point R81.20 Mobile Access security framework
validation-status: verified
source: "Check Point R81.20 Mobile Access Administration Guide"
domain: "Access Control"
---

# Protection Levels Balanced Security Framework

## Core Concept
Protection Levels provide a systematic framework for balancing connectivity convenience with security requirements, defining security prerequisites that users must meet before accessing specific corporate resources through graduated security enforcement.

## Three-Tier Security Model
- **Permissive Level**: Minimal security requirements for low-sensitivity resources
- **Normal Level**: Standard security requirements for typical corporate applications
- **Restrictive Level**: Maximum security requirements for highly sensitive applications
- **Custom Levels**: Administrative capability to define organization-specific protection levels

## Security Requirement Framework
- **Authentication Method Requirements**: Specific authentication mechanisms required per level
- **Device Compliance Standards**: Endpoint security requirements based on application sensitivity
- **Client Type Restrictions**: Allowed client types and access methods per protection level
- **Session Security Controls**: Session timeout, encryption, and monitoring requirements

## Application-Specific Security Mapping
- **Resource Classification**: Applications assigned protection levels based on data sensitivity
- **Dynamic Enforcement**: Protection requirements evaluated for each access attempt
- **Graduated Access**: Different resources require different levels of security validation
- **Risk-Based Controls**: Higher-value resources require stronger authentication and compliance

## User Experience Optimization
- **Security-Convenience Balance**: Framework designed to minimize user friction while maintaining security
- **Progressive Requirements**: Users face increasingly stringent requirements only for sensitive resources
- **Transparent Enforcement**: Security controls applied seamlessly during normal workflow
- **Adaptive Access**: Security requirements adapt to resource sensitivity and risk level

## Policy Administration
- **Flexible Configuration**: Administrators can modify existing protection levels
- **Custom Level Creation**: New protection levels can be defined for specific organizational needs
- **Group-Based Assignment**: Different user groups can have different protection level requirements
- **Application Mapping**: Specific applications assigned to appropriate protection levels

## Integration Points
- **Authentication System**: Works with multiple authentication methods and factors
- **Endpoint Compliance**: Integrates with endpoint security scanning and validation
- **Client Technology**: Compatible with various Mobile Access client types
- **Session Management**: Protection levels influence session handling and monitoring

## Enforcement Mechanism
- **Pre-Access Validation**: Protection level requirements checked before resource access
- **Continuous Monitoring**: Ongoing validation of protection level compliance during sessions
- **Access Denial**: Automatic blocking when protection level requirements not met
- **Remediation Guidance**: Users directed to meet requirements when access denied