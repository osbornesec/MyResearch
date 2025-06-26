---
state: fleeting
type: research-atomic
created: 2025-06-17
source-credibility: 10
research-context: checkpoint-identity-awareness-guide-r81-20
validation-status: verified
---

# Identity Web API Programmatic Interface

## Core Concept
Identity Web API is a flexible RESTful identity source that provides programmatic identity creation and management capabilities for integration with third-party security and identity products using HTTPS and JSON requests.

## Technical Implementation
- Uses REST protocol over HTTPS
- JSON-based request/response format
- Shared secret authentication configured in SmartConsole
- Each request contains one or bulk API commands
- Identity Awareness Gateway authenticates and authorizes based on API data

## API Commands
- **add-identity**: Associates IP address to user/computer for specified time period
- **delete-identity**: Revokes sessions matching IP address or IP range
- **show-identity**: Queries identities and information related to IP address

## Integration Use Cases
- **Third-party security integration**: Apply restricted Access Roles to quarantined infected computers
- **Alternative authentication systems**: Bridge non-AD authentication to identity awareness
- **Administrative automation**: Programmatic identity management tasks
- **Security product integration**: ForeScout CounterACT, Aruba Networks ClearPass

## Operational Benefits
- Create user and machine associations programmatically
- Group membership and Access Role calculation
- Flexible identity lifecycle management
- API-driven security policy automation

## Research Context
Essential programmatic interface for enterprise environments requiring custom identity integration and automated security response capabilities.

## Source Quality
- **Primary Source**: Check Point Identity Awareness Administration Guide R81.20
- **Credibility Score**: 10/10
- **Validation Method**: Official Check Point documentation

## Connection Potential
Links to REST API Integration, Third-Party Security Products, Security Automation, JSON Protocol, HTTPS Authentication