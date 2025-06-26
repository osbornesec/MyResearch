---
state: fleeting
type: research-atomic
created: 2025-06-17
source-credibility: 9
research-context: Check Point R81.20 Remote Access clients
validation-status: verified
source: "Check Point R81.20 Remote Access VPN Administration Guide"
domain: "Remote Access Clients"
---

# Endpoint Security VPN Integrated Client Solution

## Core Concept
Endpoint Security VPN combines secure remote access connectivity with comprehensive endpoint protection, providing IPsec VPN functionality integrated with centrally managed Desktop Firewall and security verification capabilities.

## Comprehensive Security Model
- **Secure Connectivity**: IPsec VPN tunnel encryption between client and Security Gateway
- **Endpoint Protection**: Integrated Desktop Firewall with centrally managed security policies
- **Security Verification**: Secure Configuration Verification (SCV) ensures endpoint compliance
- **Unified Management**: Single console management through Security Management Server

## Technical Architecture
- **IPsec Foundation**: Uses industry-standard IPsec protocols for tunnel establishment
- **Policy Integration**: Downloads and enforces Desktop Security Policies from Policy Server
- **Authentication Methods**: Supports certificates, pre-shared secrets, and multi-factor authentication
- **Machine Certificates**: R80.40+ supports machine certificate authentication modes

## Advanced Features
- **Office Mode Support**: Automatic IP address assignment for seamless internal network access
- **Split DNS**: Intelligent DNS resolution for internal vs. external resources
- **Post-Connect Scripts**: Automated script execution after VPN connection establishment
- **Secure Domain Logon (SDL)**: Enables domain authentication before network connectivity

## Endpoint Compliance
- **SCV Checks**: Monitors OS version, security patches, running processes, and group membership
- **Process Monitoring**: Verifies required security software is running (anti-virus, etc.)
- **HotFix Validation**: Ensures critical security updates are installed
- **Group Membership**: Validates user domain group membership for access control

## Licensing Requirements
- **Gateway Licenses**: IPsec VPN Software Blade on Security Gateway
- **Management Licenses**: Endpoint Container and VPN Software Blade licenses on Security Management Server
- **Platform Support**: Windows and macOS with platform-specific capabilities

## Enterprise Integration
- **Active Directory**: Seamless integration with corporate directory services
- **Certificate Infrastructure**: Leverages PKI for strong authentication
- **Policy Inheritance**: Inherits security policies from centralized management
- **High Availability**: Supports clustered gateways and policy server redundancy