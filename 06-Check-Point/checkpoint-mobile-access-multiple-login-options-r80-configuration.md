---
state: fleeting
type: research-atomic
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-atrg-mobile-access-processing
validation-status: verified
source: sk104577 - ATRG Mobile Access Blade
---

# Checkpoint Mobile Access Multiple Login Options R80 Configuration

## Core Concept
R80.10+ Mobile Access gateways support Multiple Login Options configuration providing enhanced authentication flexibility compared to legacy Single Authentication settings, with capability to prevent access from non-compatible clients and legacy authentication methods.

## Configuration Evolution
- **Pre-R80.10**: Single Authentication settings only with old-style UX interface
- **R80.10 Default**: Single Authentication settings with new-style UX interface by default
- **R80.10 Enhanced**: Optional Multiple Authentication Option configuration with improved user experience

## Multiple Login Options Features
- **Enhanced User Interface**: Improved look and feel in Mobile Access Portal
- **Flexible Authentication**: Support for multiple authentication methods in single gateway
- **Client Compatibility Control**: Ability to prevent Single Authentication clients from accessing gateway
- **Authentication Method Control**: Option to prevent authentication using Single Authentication configuration
- **Proxy Configuration**: DynamicID authentication proxy now configured in Gateway proxy settings instead of Mobile Access proxy

## Access Control Capabilities
- **Client Restriction**: Can prevent Single Authentication clients (those not listed in sk111583) from gateway access
- **Method Restriction**: Can disable Single Authentication configuration usage entirely
- **Proxy Integration**: Enhanced proxy configuration for specific authentication methods like DynamicID

## Implementation Benefits
- **Backward Compatibility**: Maintains support for legacy Single Authentication when needed
- **Security Enhancement**: Provides granular control over authentication methods and client types
- **User Experience**: Improved portal interface with multiple authentication options
- **Administrative Control**: Fine-grained control over authentication policies and client access

## Connection Potential
- Links to authentication system integration patterns
- Connects with client compatibility management procedures
- Relates to proxy configuration methodologies
- Associates with user experience optimization frameworks