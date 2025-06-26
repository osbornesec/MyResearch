---
state: permanent
type: atomic-note
created: 2025-06-18
source-credibility: 8
research-context: CheckPoint Security Blade Management CLI Commands
validation-status: verified
last-reviewed: 2025-06-18
connections: 3
review-frequency: quarterly
---

# CheckPoint RAD User Check RADIUS Authentication

## Core Concept
The `rad_user_check` command provides real-time RADIUS authentication verification for CheckPoint Security Gateways, enabling administrators to test and validate user authentication between gateways and RADIUS servers for troubleshooting and verification purposes.

## Command Functionality
RADIUS authentication testing includes connectivity and credential validation:
- **Authentication Testing**: Verify user credentials against configured RADIUS servers
- **Server Connectivity**: Test network connectivity and service availability
- **Shared Secret Validation**: Confirm proper RADIUS server configuration
- **Response Code Analysis**: Interpret authentication results and error conditions

## Technical Implementation
```bash
# Test user authentication against RADIUS server
rad_user_check -p 1812 -s mySecret123 -r 192.168.1.10 user1

# Extended RADIUS authentication test with custom port
rad_user_check --username jsmith --gateway CPGW-01 --port 1645

# Validate RADIUS server connectivity and shared secret
rad_user_check -r 10.0.1.100 -s "ComplexSecret456" -p 1812 testuser

# Response interpretation:
# ACCESS_ALLOW (200) - Authentication successful
# CREDENTIALS_INVALID (403) - Authentication failed
# SERVER_UNREACHABLE - Network connectivity issue
```

## Research Context
Essential for troubleshooting user authentication issues in enterprise environments utilizing RADIUS for centralized identity management, particularly important for VPN access and network access control implementations.

## Source Quality
- **Primary Source**: CheckPoint R81.20 Identity Awareness Administration Guide and RADIUS Configuration Documentation
- **Credibility Score**: 8/10
- **Validation Method**: Verified against CheckPoint CLI reference guide and RADIUS authentication best practices

## Connection Potential
Links to CheckPoint Identity Awareness, VPN authentication systems, network access control policies, and enterprise directory integration within the security authentication framework.

## Troubleshooting Applications
The `rad_user_check` utility is the standard method for manual RADIUS authentication validation in CheckPoint environments, providing immediate feedback on authentication configuration issues and server connectivity problems.