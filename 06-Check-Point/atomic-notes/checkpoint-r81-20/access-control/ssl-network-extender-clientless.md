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

# SSL Network Extender Clientless VPN Solution

## Core Concept
SSL Network Extender provides clientless remote access through web browsers using SSL/TLS encryption, enabling secure connectivity to corporate resources without requiring pre-installed VPN client software.

## Technical Architecture
- **Browser-Based Access**: Operates entirely through standard web browsers using HTTPS connections
- **SSL/TLS Encryption**: Leverages browser's native SSL capabilities for secure communication
- **On-Demand Installation**: Downloads and installs necessary components only when needed
- **Protocol Support**: Extends beyond web traffic to support various network protocols

## Key Capabilities
- **Universal Access**: Works on any device with a modern web browser
- **Zero Installation**: No administrative privileges required for initial access
- **Endpoint Security on Demand (ESOD)**: Optional malware scanning before granting access
- **Hub Mode Support**: Enables routing between remote clients through central hub

## User Experience
- **Simple Authentication**: Browser-based login with various authentication methods
- **Automatic Uninstall**: Components removed when session ends (configurable)
- **Certificate Management**: Supports client certificates and trusted CA validation
- **Session Management**: Configurable timeouts and disconnection policies

## Security Features
- **Endpoint Compliance**: Scans client machines for security threats before access
- **Certificate Validation**: Verifies server and client certificates for mutual authentication
- **Access Control**: Integrates with VPN access rules and user group policies
- **Secure Workspace**: Provides isolated environment for sensitive operations

## Gateway Requirements
- **Mobile Access Blade**: Requires Mobile Access Software Blade on Security Gateway
- **Certificate Infrastructure**: Needs proper certificate configuration for SSL operations
- **Port Configuration**: Uses standard HTTPS port (443) or customizable service ports