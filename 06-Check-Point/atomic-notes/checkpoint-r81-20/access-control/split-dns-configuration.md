---
state: fleeting
type: research-atomic
created: 2025-06-17
source-credibility: 9
research-context: Check Point R81.20 DNS resolution for VPN
validation-status: verified
source: "Check Point R81.20 Remote Access VPN Administration Guide"
domain: "Network Services"
---

# Split DNS Intelligent Name Resolution

## Core Concept
Split DNS provides intelligent DNS resolution for VPN clients, automatically routing internal domain name queries to corporate DNS servers while directing external queries to local DNS servers, optimizing performance and maintaining security.

## DNS Resolution Architecture
- **Dual Resolution Path**: Corporate DNS for internal domains, local DNS for external domains
- **Automatic Routing**: Client automatically selects appropriate DNS server based on domain
- **Performance Optimization**: Reduces unnecessary traffic through VPN tunnel for external queries
- **Security Maintenance**: Ensures internal DNS resolution goes through corporate infrastructure

## Client Integration
- **Endpoint Security VPN**: Full Split DNS support with configurable parameters
- **Check Point Mobile**: Native Split DNS functionality for Windows clients
- **Configuration Flexibility**: Client-side configuration options for DNS behavior
- **Legacy Support**: SecuRemote clients supported with specific configuration

## Implementation Benefits
- **Bandwidth Conservation**: External DNS queries don't consume VPN tunnel bandwidth
- **Performance Enhancement**: Faster external domain resolution through local DNS
- **Security Compliance**: Internal domain resolution maintains corporate DNS policies
- **User Transparency**: DNS resolution appears seamless to end users

## Configuration Management
- **Automatic Enablement**: Split DNS enabled by default for supported clients
- **Client Parameter Control**: Configurable through trac_client_1.ttm file settings
- **Policy Distribution**: DNS settings distributed through VPN policy deployment
- **Gateway Configuration**: DNS domain specifications configured on Security Gateway

## Domain Specification
- **Internal Domain Lists**: Administrator-defined list of internal corporate domains
- **Wildcard Support**: Pattern matching for domain and subdomain resolution
- **Exception Handling**: Specific exclusions and special case handling
- **Update Mechanisms**: Dynamic updates to domain lists without client reconfiguration

## Office Mode Integration
- **Recommended Pairing**: Best practice combination with Office Mode for optimal functionality
- **IP Assignment Coordination**: Split DNS works with Office Mode IP assignment
- **Routing Consistency**: DNS resolution aligns with Office Mode routing decisions
- **Transparent Operation**: Users experience seamless internal network integration

## Administrative Control
- **SmartConsole Configuration**: DNS settings managed through gateway properties
- **Policy Inheritance**: DNS configuration inherited from VPN community settings
- **Client Override**: Administrative control over client-side DNS configuration
- **Monitoring Support**: DNS resolution patterns visible in connection logs