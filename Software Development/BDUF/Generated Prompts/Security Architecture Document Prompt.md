# Security Architecture Document Prompt

**Context:** The Security Architecture Document defines the system's security controls, mechanisms, and practices to protect against threats and vulnerabilities. It details authentication, authorization, data protection, network security, and compliance measures. This document ensures that security is built into the system design rather than added as an afterthought, supporting both functional requirements and risk management objectives.

**Required Expertise Persona:** As a Senior Security Architect with 15+ years of experience in designing secure systems for highly regulated industries, you possess deep expertise in security architecture frameworks (SABSA, TOGAF), threat modeling, and security controls implementation. Your background includes designing security architectures for mission-critical applications with stringent compliance requirements (PCI-DSS, HIPAA, SOC2, etc.). You excel at identifying security risks and implementing defense-in-depth strategies that balance security with usability. Your knowledge spans authentication systems, encryption technologies, network security, and application security patterns. You're adept at translating regulatory requirements into practical security controls and have experience conducting security architecture reviews for enterprise systems.

**Prompt:**
```
I need you to create a comprehensive Security Architecture Document for [project name].

Before diving into specific security controls, take a step back and consider: What fundamental security principles should guide a robust security architecture? What architectural approaches ensure defense-in-depth while maintaining system usability? Outline these core principles and explain why they're crucial for effective security design.

Now, working methodically through the security architecture design process, create a detailed Security Architecture Document with these sections:

1. Introduction:
   - Purpose: Define the document's audience and usage
   - Scope: Specify which system aspects are covered
   - References: Cite related documents (SRS, SAD, applicable regulations)
   - Document Structure: Preview the document's organization
   - Explain your approach to comprehensive security architecture documentation

2. Security Architecture Overview:
   - Security Vision: Provide a high-level view of the security approach
   - Security Design Principles: Define guiding principles for security design
   - Security Architecture Framework: Identify any frameworks being followed
   - Security Architecture Diagram: Present a conceptual view of security components
   - Walk through your reasoning for the architectural approach
   - Explain how the architecture applies defense-in-depth strategies

3. Security Requirements and Objectives:
   - Business Security Objectives: Define security goals aligned with business needs
   - Compliance Requirements: List regulatory and policy requirements
   - Security Risk Tolerance: Define the organization's risk appetite
   - Explain your approach to aligning security with business objectives
   - Walk through your reasoning for prioritizing certain security aspects

4. Threat Model:
   - Threat Actors: Identify potential adversaries and their capabilities
   - Attack Vectors: Document potential attack paths
   - Threat Scenarios: Detail specific threat scenarios
   - Assets and Impact: Identify key assets and potential impact from compromise
   - Assumptions and Trust Boundaries: Define security boundaries and assumptions
   - Explain your threat modeling methodology
   - Walk through your process for comprehensive threat identification

5. Identity and Access Management:
   - Authentication Architecture: Define authentication mechanisms
   - Authorization Model: Detail access control models and policies
   - User Identity Lifecycle: Document identity management processes
   - Privilege Management: Explain approach to least privilege
   - Single Sign-On Strategy: Detail any SSO implementation
   - Explain your reasoning for IAM design decisions
   - Walk through your approach to balancing security and usability

6. Data Security:
   - Data Classification: Define sensitivity levels for different data types
   - Encryption Strategy: Detail encryption for data at rest, in transit, and in use
   - Key Management: Explain cryptographic key management
   - Data Loss Prevention: Define controls to prevent unauthorized data disclosure
   - Privacy Controls: Detail measures for protecting personal information
   - Explain your data protection strategy and its alignment with data classification

7. Application Security:
   - Secure Development Practices: Define secure SDLC integration
   - Input Validation: Detail approach to input handling
   - Output Encoding: Explain protection against injection attacks
   - Session Management: Define secure session handling
   - Error Handling: Explain secure error management
   - API Security: Detail API protection mechanisms
   - Walk through your application security strategy

8. Network Security:
   - Network Segmentation: Define security zones and segmentation
   - Perimeter Security: Detail boundary protection mechanisms
   - Internal Network Controls: Explain internal network security
   - Remote Access: Define secure remote access solutions
   - Network Monitoring: Detail network security monitoring
   - Explain your network defense strategy and zoning decisions

9. Host and Infrastructure Security:
   - Endpoint Security: Define endpoint protection mechanisms
   - Server Hardening: Detail server security configuration
   - Virtualization Security: Explain security for virtual environments
   - Cloud Security: Detail cloud-specific security controls if applicable
   - Walk through your infrastructure security approach

10. Security Monitoring and Incident Response:
    - Security Monitoring Architecture: Define monitoring framework
    - Log Management: Detail logging requirements and log protection
    - Security Event Management: Explain security event correlation and analysis
    - Incident Response Process: Define incident handling procedures
    - Explain your strategy for detection and response capabilities

11. Business Continuity and Disaster Recovery:
    - Security Aspects of BC/DR: Detail security controls for continuity
    - Backup Security: Define protection of backup systems and data
    - Recovery Security: Explain security during disaster recovery
    - Walk through your approach to maintaining security during disruptions

12. Security Compliance and Assurance:
    - Compliance Mapping: Map security controls to compliance requirements
    - Security Testing: Define security testing approach
    - Security Assessments: Detail ongoing assessment processes
    - Security Documentation: Explain security documentation maintenance
    - Explain your strategy for demonstrating and maintaining compliance

13. Security Implementation Roadmap:
    - Phased Implementation: Outline security implementation phases
    - Security Dependencies: Identify dependencies on other system components
    - Security Risks and Mitigations: Highlight implementation risks
    - Walk through your implementation planning process

After completing the initial draft, validate the document against these criteria:
- Does the security architecture address all identified threats?
- Are all compliance requirements adequately covered?
- Is the defense-in-depth approach comprehensive?
- Are security controls appropriate for the data sensitivity?
- Is the authentication and authorization model sufficient?
- Does the architecture balance security with usability?
- Are monitoring and incident response capabilities adequate?
- Is the architecture adaptable to evolving threats?

Based on this validation, refine any sections requiring improvement. Format the final document using markdown with clear section headings, diagrams, and a consistent structure throughout.
```

**Structure requirements:**
- Introduction (purpose, scope, references, structure)
- Security Architecture Overview (vision, principles, framework, diagram)
- Security Requirements and Objectives (business, compliance, risk tolerance)
- Threat Model (actors, vectors, scenarios, assets, boundaries)
- Identity and Access Management (authentication, authorization, lifecycle, privileges)
- Data Security (classification, encryption, key management, DLP, privacy)
- Application Security (SDLC, validation, encoding, sessions, errors, APIs)
- Network Security (segmentation, perimeter, internal, remote access, monitoring)
- Host and Infrastructure Security (endpoints, servers, virtualization, cloud)
- Security Monitoring and Incident Response (monitoring, logs, events, response)
- Business Continuity and Disaster Recovery (BC/DR, backups, recovery)
- Security Compliance and Assurance (mapping, testing, assessments, documentation)
- Security Implementation Roadmap (phases, dependencies, risks)

**Validation criteria:**
- Addresses all identified threats
- Covers all compliance requirements
- Comprehensive defense-in-depth approach
- Appropriate security controls for data sensitivity
- Sufficient authentication and authorization model
- Balance of security with usability
- Adequate monitoring and incident response capabilities
- Adaptability to evolving threats
- Clear security architecture diagrams
- Traceability to security requirements