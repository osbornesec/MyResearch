# Security-First Code Review Methodology

```yaml
---
state: fleeting
type: atomic-note
created: 2025-06-16
last-reviewed: 2025-06-16
connections: 0
review-frequency: monthly
tags: [security, code-review, vulnerability-assessment, secure-development]
---
```

# Security-First Code Review Methodology

## Core Concept

*Code review approach that prioritizes security considerations at every stage, systematically identifying and mitigating vulnerabilities before they reach production environments*

## Content

A security-centric review methodology that integrates threat modeling and vulnerability assessment into standard code review processes:

**Security Review Priorities:**
- **Input Validation**: All user inputs sanitized and validated against expected patterns
- **Authentication & Authorization**: Proper credential handling, token management, and access control verification
- **Data Protection**: Encryption for sensitive data at rest and in transit, secure storage patterns
- **Injection Prevention**: SQL injection, XSS, CSRF, and other injection attack mitigation
- **Dependency Security**: Third-party library vulnerability assessment and supply chain security

**Threat-Model Integration:**
- Asset identification for code changes
- Attack vector analysis for new functionality
- Risk assessment based on data sensitivity and exposure
- Mitigation strategy validation for identified threats

**Security Review Checklist:**
- Secrets and credentials never hardcoded
- Proper error handling without information disclosure
- Security headers and HTTPS enforcement
- Rate limiting and DoS protection implementation
- Logging and monitoring for security events

**Multi-Layer Security Validation:**
- **Frontend**: XSS prevention, content security policy implementation
- **API**: Authentication, authorization, input validation, rate limiting
- **Database**: Access controls, encryption, query parameterization
- **Infrastructure**: Secure configuration, network security, access management

**Automated Security Integration:**
- Static analysis security testing (SAST) integration
- Dependency vulnerability scanning
- Secret detection in code commits
- Security-focused linting rules

The methodology ensures security is not an afterthought but a fundamental aspect of code quality assessment throughout the development lifecycle.

## Connections

*Link to related atomic notes, sources, and MOCs*

- [[zero-trust-ai-security-architecture]]
- [[google-cloud-platform-security-pattern]]
- [[stripe-webhook-security-pattern]]
- [[supabase-row-level-security-pattern]]

## Evolution Notes

*Track how this note has developed over time*

- **2025-06-16**: Initial capture from comprehensive code review guide analysis

## Review Schedule

*Based on importance and connection density*
- Next review: 2025-07-16
- Frequency: monthly

---

## Evergreen Processing Checklist

- [ ] Title refined to function as "concept API"
- [x] Content is self-contained and atomic
- [ ] At least 2 meaningful connections established
- [ ] State updated to `permanent` when mature
- [ ] Tags updated to reflect semantic relationships