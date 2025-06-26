# Security-Focused Prompt Engineering

```yaml
---
state: permanent
type: atomic-note
created: 2025-06-15
last-reviewed: 2025-06-15
connections: 4
review-frequency: weekly
tags: [security, secure-coding, vulnerability-prevention, compliance, risk-assessment]
source: "Advanced Prompt Engineering Strategies for AI Coding"
---
```

## Core Concept

Security-focused prompt engineering embeds security analysis, vulnerability prevention, and compliance requirements directly into AI code generation prompts, reducing security issue introduction by up to 56% through proactive secure coding guidance and risk-aware development practices.

## Content

### Security Analysis Framework
```python
class SecurityFocusedPromptEngineer:
    def generate_secure_code_prompt(self, base_prompt, security_level='high', compliance_requirements=None):
        # 1. Analyze potential security implications of the coding task
        security_analysis = self._analyze_security_implications(base_prompt)
        
        # 2. Select appropriate security template based on risk assessment
        security_template = self._select_security_template(
            security_analysis, security_level, compliance_requirements or []
        )
        
        # 3. Enhance prompt with comprehensive security considerations
        enhanced_prompt = self._enhance_with_security(
            base_prompt, security_template, security_analysis
        )
```

### Risk Assessment Categories
- **Input Validation Vulnerabilities**: SQL injection, XSS, command injection, path traversal
- **Output Encoding Issues**: Improper data sanitization and encoding
- **Authentication/Authorization Flaws**: Session management, access control, privilege escalation
- **Data Exposure Risks**: Information leakage, insecure storage, transmission vulnerabilities
- **Cryptographic Issues**: Weak encryption, key management, random number generation
- **Configuration Security**: Default credentials, exposed services, insecure settings

### Security Requirements Integration
- **Mandatory Input Validation**: Comprehensive data type, range, and format validation
- **Parameterized Queries**: Prevention of injection attacks through safe data handling
- **Proper Error Handling**: Secure error messages without information disclosure
- **Authentication Mechanisms**: Robust identity verification and session management
- **Authorization Controls**: Role-based access control and privilege enforcement
- **Data Protection**: Encryption at rest and in transit, secure key management

### Compliance Framework Support
- **OWASP Guidelines**: Top 10 vulnerabilities and secure coding practices
- **GDPR Requirements**: Data privacy, consent management, right to deletion
- **HIPAA Compliance**: Healthcare data protection and access controls
- **SOX Requirements**: Financial data integrity and audit trails
- **PCI DSS Standards**: Payment card data security and processing requirements

### Security Template Structure
```yaml
Security Enhancement Template:
  risk_level: "low|medium|high|critical"
  mandatory_measures:
    - input_validation: "Validate all inputs according to expected types and ranges"
    - output_encoding: "Sanitize outputs to prevent injection attacks"
    - authentication: "Implement proper authentication mechanisms"
    - authorization: "Use role-based access control where applicable"
    - encryption: "Encrypt sensitive data at rest and in transit"
    - logging: "Log security-relevant events with proper audit trails"
  
  specific_protections:
    - vulnerability_type: "prevention_strategy"
    - compliance_requirement: "implementation_approach"
  
  code_quality_requirements:
    - "Follow secure coding best practices"
    - "Use established security libraries and frameworks"
    - "Include comprehensive security testing"
    - "Implement proper resource management"
```

### Vulnerability Prevention Strategies
- **Injection Prevention**: Parameterized queries, input sanitization, output encoding
- **Broken Authentication**: Strong password policies, session timeout, secure storage
- **Sensitive Data Exposure**: Encryption, access controls, data classification
- **XML External Entities**: Input validation, parser configuration, entity restriction
- **Security Misconfiguration**: Secure defaults, configuration management, regular audits
- **Cross-Site Scripting**: Input validation, output encoding, Content Security Policy

### Key Benefits
- **Proactive security**: Address vulnerabilities during development rather than post-deployment
- **Compliance assurance**: Integrate regulatory requirements into development process
- **Risk reduction**: Significant decrease in security vulnerability introduction
- **Knowledge transfer**: Embed security expertise into AI assistance
- **Automated guidance**: Consistent security practices across development teams

### Implementation Best Practices
- **Context-aware analysis**: Tailor security requirements to specific application domains
- **Graduated enforcement**: Adjust security rigor based on risk assessment
- **Compliance mapping**: Link security measures to specific regulatory requirements
- **Testing integration**: Include security testing requirements in generated code
- **Documentation requirements**: Ensure security decisions are properly documented

## Connections

- [[Secure Software Development Lifecycle]] - Broader security development practices
- [[AI-Assisted Security Code Review]] - Automated security analysis tools
- [[Enterprise Security Compliance]] - Large-scale security governance
- [[Vulnerability Assessment Automation]] - Security testing and validation tools

## Evolution Notes

- **2025-06-15**: Initial extraction from security-focused AI coding research
- **Future**: Integration with automated security testing frameworks and compliance monitoring

## Review Schedule

- Next review: 2025-06-22
- Frequency: weekly

---

## Evergreen Processing Checklist

- [x] Title refined to function as "concept API"
- [x] Content is self-contained and atomic
- [x] At least 2 meaningful connections established
- [x] State updated to `permanent` when mature
- [x] Tags updated to reflect semantic relationships