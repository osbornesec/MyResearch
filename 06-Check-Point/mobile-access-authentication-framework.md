---
state: fleeting
type: research-atomic
created: 2025-06-17
source-credibility: 10
research-context: Check Point Mobile Access ATRG processing
validation-status: verified
source: sk104577 - ATRG Mobile Access Blade
---

# Mobile Access Authentication Framework

## Core Concept
Mobile Access Blade implements realm-based authentication with multi-factor authentication support and protection level-based authorization system.

## Authentication Methods
- **Realm-Based Authentication**: Structured authentication domains
- **Multi-Factor Authentication**: Enhanced security through multiple verification factors
- **User Group Integration**: Support for Internal, LDAP/AD, and RADIUS user sources

## Authorization Framework
- **User Group Authorization**: Based on Internal, LDAP/AD, or RADIUS groups
- **Resource Protection Levels**: Dynamic authorization based on:
  - Endpoint Security scan results
  - Authentication strength validation
  - Risk-based access control

## Security Integration
- Endpoint Security On Demand (ESOD) compliance
- Compliance Scanner (formerly ICS) integration
- Authentication strength evaluation for resource access

## Connection Potential
- Links to: Identity and access management, multi-factor authentication, LDAP/AD integration
- Builds on: Check Point endpoint security framework
- Extends: Traditional authentication with risk-based access control