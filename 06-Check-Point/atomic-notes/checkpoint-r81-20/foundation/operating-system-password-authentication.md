---
state: fleeting
type: checkpoint-management-atomic
created: 2025-06-17
source: "Check Point R81.20 Security Management Guide (2022)"
source-section: "Authentication Methods - Operating System Password"
source-credibility: 9
management-domain: "authentication"
integration-points: ["operating-system", "windows-domain", "local-accounts", "system-integration"]
---

# Operating System Password Authentication

## Core Management Concept
OS Password authentication utilizes passwords stored on the operating system where Security Gateways (for users) or Security Management Server (for administrators) are installed, including support for Windows domain authentication without requiring additional software.

## Administrative Context
This system-integrated authentication method leverages existing operating system credential infrastructure, enabling seamless integration with established user management systems and reducing administrative overhead by utilizing existing authentication mechanisms.

## Implementation Details
- Passwords stored directly on the operating system hosting Security Gateway or Management Server
- Support for local operating system user accounts for authentication
- Integration with Windows domain authentication for enterprise environments
- No additional software installation required for operation
- Direct utilization of existing system authentication infrastructure
- Seamless integration with established operating system security policies

## Integration Requirements
- Integrates with host operating system authentication services
- Supports Windows domain integration for enterprise user management
- Connects to Security Gateway and Management Server host systems
- Foundation for enterprise authentication integration and system-level security workflows