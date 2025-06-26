---
state: fleeting
type: research-atomic
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-vsx-virtualization-architecture
validation-status: verified
source: Check Point R81.20 VSX Administration Guide
---

# VSX Secure Internal Communication

## Core Concept
All communication between Management Server and VSX Gateway utilizes Secure Internal Communication (SIC), a certificate-based channel that authenticates communication between Check Point components.

## SIC Functions
- Provisioning Virtual Devices
- Policy installation across Virtual Systems
- Logging and status monitoring
- Secure channel establishment for all Virtual Devices

## Trust Establishment Process
- Initial SIC trust established using one-time password during VSX Gateway configuration
- Multi-Domain deployments establish trust between Domain Management Server and VSX Gateway
- Virtual Devices establish trust differently than physical counterparts
- VSX automatically establishes SIC trust for Virtual Devices using secure channel between Management Server and VSX Gateway

## Communication Architecture
VSX Gateway uses management interface for Secure Internal Communication between Management Server and all Virtual Devices, providing centralized secure communication hub.

## Research Context
Security foundation that enables trusted communication and management across all virtual components in VSX environment.

## Source Quality
- **Primary Source**: Check Point R81.20 VSX Administration Guide
- **Credibility Score**: 9/10
- **Validation Method**: Official Check Point documentation

## Connection Potential
- Links to: Management Server communication, certificate-based authentication
- Relates to: Virtual Device provisioning, policy distribution
- Enables: Secure centralized management of virtual infrastructure