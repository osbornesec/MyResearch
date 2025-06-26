---
state: transitioning
type: workbench-moc
created: 2025-06-17
source-credibility: 10
research-context: checkpoint-identity-awareness-guide-r81-20
validation-status: verified
---

# Check Point Identity Awareness Architecture MOC

## Core Identity Awareness Framework

### Foundational Concepts
- [[checkpoint-identity-awareness-software-blade-definition]]
- [[traditional-firewall-ip-address-limitation]]
- [[access-role-object-definition]]
- [[identity-source-acquisition-framework]]

### Identity Acquisition Architecture

#### Direct Gateway Integration Methods
- [[browser-based-authentication-captive-portal]]
- [[ad-query-clientless-identity-acquisition]]
- [[radius-accounting-identity-source]]
- [[remote-access-vpn-identity-integration]]

#### Client-Based Acquisition Methods
- [[identity-agent-endpoint-software]]
- [[terminal-servers-identity-agent]]
- [[identity-collector-server-based-collection]]

#### Programmatic Integration
- [[identity-web-api-programmatic-interface]]

### Distributed Identity Architecture

#### Policy Decision and Enforcement Framework
- [[policy-decision-point-pdp]]
- [[policy-enforcement-point-pep]]

#### Identity Sharing Mechanisms
- [[publisher-pdp-identity-sharing]]
- [[subscriber-pdp-identity-reception]]
- [[identity-broker-pdp-communication]]

## Integration Patterns

### Enterprise Directory Integration
- **Active Directory Integration**: AD Query, Domain Controllers, Security Event Logs
- **LDAP Server Integration**: User/device group information retrieval
- **Multi-Domain Support**: Cross-domain identity federation

### Authentication Method Integration
- **Single Sign-On (SSO)**: Kerberos integration, transparent authentication
- **Multi-Factor Authentication**: Two-factor authentication support
- **Certificate-Based Authentication**: SSL/TLS certificate frameworks

### Network Security Integration
- **Access Control Policy**: Identity-based rule enforcement
- **Security Gateway Integration**: Software Blade architecture
- **VPN Integration**: Remote access identity acquisition

## Operational Workflows

### Identity Acquisition Workflow
1. **Identity Source Configuration**: Enable appropriate identity sources
2. **Identity Mapping**: Map users/computers to IP addresses
3. **Policy Application**: Apply Access Role-based rules
4. **Logging and Monitoring**: Identity-aware security logs

### Identity Sharing Workflow
1. **PDP Identity Acquisition**: Acquire identities from sources
2. **Identity Distribution**: Share identities via Identity Broker
3. **PEP Policy Enforcement**: Enforce policies based on shared identities
4. **Session Management**: Maintain identity session lifecycle

### User Authentication Workflow
1. **Authentication Trigger**: User attempts network resource access
2. **Identity Verification**: Check existing identity mapping
3. **Authentication Method**: Apply configured identity source method
4. **Policy Enforcement**: Apply Access Role-based access control

## Connection to Foundation Architecture

### Security Gateway Foundation
- Integrates with Security Gateway Software Blade architecture
- Extends firewall capabilities beyond IP-based filtering
- Enables identity-centric security policy framework

### Security Management Foundation
- Configured through SmartConsole interface
- Integrates with Access Control Policy management
- Connects to user and computer object management

### Policy Framework Integration
- Access Role objects in Access Control rules
- Identity-based Source and Destination criteria
- Integration with NAT and Threat Prevention policies

## Advanced Identity Scenarios

### Multi-User Environment Support
- Terminal Servers identity tagging
- Citrix XenApp/XenDesktop integration
- Port-based user identification

### Guest Access Management
- Captive Portal authentication
- Temporary identity assignment
- Guest user policy enforcement

### Enterprise Integration
- Third-party security product integration
- API-driven identity automation
- Certificate-based trust management

## Research Context
Comprehensive enterprise identity-aware security architecture providing granular access control based on user and computer identities rather than IP addresses alone.

## Source Quality
- **Primary Source**: Check Point Identity Awareness Administration Guide R81.20
- **Credibility Score**: 10/10
- **Validation Method**: Official Check Point documentation

## Connection Potential
Links to Check Point Security Gateway Architecture, Access Control Policy Framework, Active Directory Integration, Enterprise Authentication Systems