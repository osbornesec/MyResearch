---
state: fleeting
type: research-atomic
created: 2025-06-17
source-credibility: 10
research-context: checkpoint-identity-awareness-guide-r81-20
validation-status: verified
---

# Terminal Servers Identity Agent

## Core Concept
Terminal Servers Identity Agent is specialized software installed on Windows-based application servers hosting Terminal Servers, Citrix XenApp, and Citrix XenDesktop services to enforce identity awareness policies for multiple users connecting from a single IP address.

## Technical Problem Solved
Multiple users accessing network resources through a shared application server appear to come from the same IP address, making individual user identification impossible with traditional methods.

## Traffic Tagging Solution
- Each actively connected user is dynamically assigned a set of ports or IDs
- Traffic for each user is tagged with their unique identifier
- Identity Awareness Gateway receives and maps tag information to specific users
- Packet examination enables individual user identification within shared IP traffic

## Supported Platforms
- Microsoft Terminal Servers
- Citrix XenApp services
- Citrix XenDesktop services
- Windows-based application servers

## Technical Constraints
- Cannot be used for endpoint computers
- Specific to multi-user server environments
- Requires specialized tagging and port assignment mechanisms

## Use Case Requirements
Essential for environments where administrators must control traffic from users of application servers that host multi-user remote access services.

## Research Context
Specialized identity acquisition solution for virtualized desktop and application delivery environments requiring granular user identification.

## Source Quality
- **Primary Source**: Check Point Identity Awareness Administration Guide R81.20
- **Credibility Score**: 10/10
- **Validation Method**: Official Check Point documentation, reference sk66761

## Connection Potential
Links to Citrix Integration, Virtual Desktop Infrastructure, Multi-User Environment Security, Application Server Management