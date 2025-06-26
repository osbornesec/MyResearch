---
state: permanent
type: atomic-note
created: 2025-06-18
source-credibility: 8
research-context: checkpoint-identity-management
validation-status: verified
---

# CheckPoint Identity Agent User Authentication System

## Core Concept
The CheckPoint Identity Agent is a Windows-based client software deployed on user endpoints that provides identity awareness capabilities by acquiring and reporting user and computer identities to CheckPoint security gateways, enabling security policies based on authenticated user identity rather than static IP addresses for enhanced access control and security enforcement.

## Identity Agent Architecture Types
Three distinct identity agent implementations provide flexible deployment options:
- **Full Identity Agent**: Comprehensive identity solution providing packet tagging, computer authentication, and Single Sign-On (SSO) user identification
- **Light Identity Agent**: Simplified implementation offering SSO user identification without packet tagging or computer authentication capabilities
- **Custom Identity Agent**: Configurable solution enabling selective feature deployment including MAD services and packet tagging based on organizational requirements

## Authentication and Identity Management
The agent provides sophisticated identity acquisition and management:
- **Transparent SSO Integration**: Seamless authentication integration with Active Directory domain authentication for user identity acquisition
- **Computer Identity Management**: System-level authentication and identification for machine-based policy enforcement
- **Packet Tagging Capability**: Advanced session tracking through packet-level identity tagging for comprehensive user session monitoring
- **IP Address Change Detection**: Dynamic identity tracking across network topology changes and mobility scenarios

## Enterprise Policy Integration
Identity agents enable advanced policy enforcement capabilities:
- **User-Based Security Policies**: Security rule enforcement based on authenticated user identity and group membership
- **Group-Based Access Control**: Granular access control implementation based on Active Directory group membership and organizational roles
- **Dynamic Policy Application**: Real-time policy adjustment based on user identity changes and authentication status
- **Network Access Control**: Comprehensive access control based on combined user, computer, and network context

## Research Context
Critical component of CheckPoint Identity Awareness architecture, enabling zero-trust security implementation and advanced access control in enterprise environments.

## Source Quality
- **Primary Source**: CheckPoint Identity Awareness Administration Guide
- **Credibility Score**: 8/10
- **Validation Method**: Technical documentation review and identity management framework verification

## Connection Potential
Links to CheckPoint Identity Awareness architecture, zero-trust security frameworks, enterprise authentication systems, and advanced access control methodologies.