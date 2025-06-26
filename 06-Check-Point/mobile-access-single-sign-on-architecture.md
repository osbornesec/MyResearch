---
state: fleeting
type: research-atomic
created: 2025-06-17
source-credibility: 10
research-context: Check Point Mobile Access ATRG processing
validation-status: verified
source: sk104577 - ATRG Mobile Access Blade
---

# Mobile Access Single Sign-On Architecture

## Core Concept
Native applications accessed through SSL Network Extender support Single Sign-On (SSO) functionality, enabling automatic authentication using Mobile Access portal credentials.

## Technical Implementation
- **Client Requirement**: SSL Network Extender client upgrade required
- **Version Support**: Available in R77.20 and higher
- **Authentication Flow**: Native applications receive username/password parameters from internal server
- **Credential Source**: Mobile Access portal login credentials

## User Experience
- **Automatic Connection**: Users connect to native applications without additional login
- **Transparent Authentication**: Applications receive credentials seamlessly
- **Session Continuity**: Single authentication session across multiple applications

## Architecture Dependencies
- SSL Network Extender client must be upgraded
- Native applications must support credential parameter passing
- Internal server infrastructure must facilitate credential forwarding

## Security Considerations
- Credential propagation security between Mobile Access portal and applications
- Session management across multiple application contexts
- Authentication strength maintenance throughout SSO session

## Connection Potential
- Links to: Single sign-on protocols, credential management, session management
- Builds on: SSL Network Extender client architecture
- Integrates with: Enterprise authentication and identity management systems