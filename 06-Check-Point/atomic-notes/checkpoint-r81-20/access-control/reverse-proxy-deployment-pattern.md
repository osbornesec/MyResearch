---
state: fleeting
type: research-atomic
created: 2025-06-17
source-credibility: 9
research-context: Check Point R81.20 Mobile Access deployment architecture
validation-status: verified
source: "Check Point R81.20 Mobile Access Administration Guide"
domain: "Deployment Architecture"
---

# Mobile Access Reverse Proxy Deployment Pattern

## Core Concept
Mobile Access can be deployed as a reverse proxy, positioning the Security Gateway between remote users and internal web applications to provide SSL termination, security inspection, and access control for web-based corporate resources.

## Reverse Proxy Architecture
- **Client-Gateway-Server Flow**: Remote clients connect to gateway, which proxies requests to internal servers
- **SSL Termination**: SSL encryption terminated at gateway, allowing security inspection
- **Request Mediation**: Gateway mediates all communication between clients and internal applications
- **Transparent Proxying**: Internal servers see requests as originating from gateway, not remote clients

## Security Inspection Benefits
- **Content Filtering**: Full inspection of web application traffic for threats and policy violations
- **Anti-Virus Scanning**: Malware detection in web content before delivery to remote users
- **IPS Protection**: Intrusion prevention analysis of all web application communications
- **URL Filtering**: Control over which web resources accessible through reverse proxy

## SSL/TLS Management
- **Certificate Centralization**: SSL certificates managed centrally on Mobile Access gateway
- **Encryption Termination**: HTTPS connections terminated at gateway for security inspection
- **Re-Encryption**: Optionally re-encrypt traffic between gateway and internal servers
- **Certificate Trust**: Clients trust gateway SSL certificate for secure communication

## Web Application Integration
- **Seamless Access**: Users access internal web applications through gateway URL
- **Session Management**: Gateway handles session state and authentication across applications
- **Load Balancing**: Gateway can distribute load across multiple backend application servers
- **Application Isolation**: Individual applications isolated through gateway access controls

## Access Control Enhancement
- **Authentication Integration**: User authentication before web application access
- **Authorization Policies**: Granular control over which users access which applications
- **Session Security**: Secure session management with timeout and monitoring
- **Multi-Factor Authentication**: Strong authentication before application access

## Performance Optimization
- **Content Caching**: Gateway can cache frequently accessed web content
- **Compression**: Content compression to optimize bandwidth utilization
- **Connection Pooling**: Efficient connection management between gateway and servers
- **SSL Offloading**: Removes SSL processing load from internal application servers

## Deployment Advantages
- **Security Centralization**: Centralized security controls for all web application access
- **Infrastructure Simplification**: Single point of management for remote web access
- **Compliance Support**: Centralized logging and monitoring for regulatory compliance
- **Legacy Integration**: Enables secure remote access for legacy web applications

## Network Architecture Integration
- **DMZ Compatibility**: Reverse proxy deployment compatible with DMZ architecture
- **Firewall Integration**: Works with existing firewall rules and network segmentation
- **Load Balancer Coordination**: Can work with internal load balancers for high availability
- **Monitoring Integration**: Comprehensive monitoring of web application access patterns