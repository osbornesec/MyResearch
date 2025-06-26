---
state: fleeting
type: research-atomic
created: 2025-06-17
source-credibility: 9
research-context: Check Point R81.20 VSX Mobile Access deployment
validation-status: verified
source: "Check Point R81.20 Mobile Access Administration Guide"
domain: "Virtual Systems"
---

# VSX Multi-Tenant Mobile Access Architecture

## Core Concept
Virtual System Extension (VSX) enables multiple isolated Mobile Access deployments on a single physical platform, with each Virtual System providing independent Mobile Access portals, policies, and client access for different organizational segments.

## Virtual System Isolation
- **Independent Virtual Systems**: Each VS operates as separate logical Mobile Access gateway
- **Isolated Configurations**: Separate portals, applications, and policies per Virtual System
- **Multi-Tenant Support**: Different organizational units, departments, or customer segments
- **Resource Segregation**: Network traffic and security policies isolated between Virtual Systems

## Deployment Flexibility
- **Departmental Segmentation**: Separate Virtual Systems for Sales, Finance, Development, etc.
- **User Group Isolation**: Different authentication and access requirements per Virtual System
- **Application Segregation**: Distinct application sets and access policies per department
- **Security Level Variation**: Different security requirements and controls per Virtual System

## Portal Customization Per Virtual System
- **Unique Portal URLs**: Each Virtual System has distinct Mobile Access portal URL
- **Branded Interfaces**: Customized user interfaces and branding per organizational segment
- **Application-Specific Access**: Tailored application sets for each Virtual System
- **Independent User Bases**: Separate user populations and authentication systems

## Multi-Factor Authentication Segmentation
- **VS-Specific Auth Methods**: Different authentication schemes per Virtual System
- **Security Policy Variation**: Varying security requirements based on user group needs
- **Compliance Segregation**: Different compliance requirements per organizational segment
- **Certificate Management**: Independent certificate authorities and policies per VS

## Client Access Differentiation
- **Selective Client Support**: Different allowed client types per Virtual System
- **Platform Restrictions**: Mobile vs desktop access controls per Virtual System
- **Feature Availability**: Different Mobile Access features enabled per VS
- **Performance Isolation**: Resource allocation and performance controls per Virtual System

## Administrative Benefits
- **Centralized Management**: Single physical platform manages multiple logical deployments
- **Cost Efficiency**: Reduced hardware requirements through virtualization
- **Operational Simplification**: Unified monitoring and management across Virtual Systems
- **Scalability Enhancement**: Easy addition of new Virtual Systems for growth

## Example Implementation Patterns
- **Development Environment**: Separate VS for development team with relaxed policies
- **Sales Team Access**: Dedicated VS with CRM and sales application access
- **Finance Department**: High-security VS with restricted application access and strong authentication
- **Guest/Contractor Access**: Limited-privilege VS with time-based certificate authentication

## Network Architecture Integration
- **Virtual Switch**: Shared network infrastructure with Virtual System isolation
- **Interface Segregation**: Separate network interfaces or VLANs per Virtual System
- **Routing Isolation**: Independent routing tables and network policies
- **Traffic Separation**: Network traffic segregation between Virtual Systems