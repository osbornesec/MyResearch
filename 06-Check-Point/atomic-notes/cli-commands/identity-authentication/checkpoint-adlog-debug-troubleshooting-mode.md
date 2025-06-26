---
state: permanent
type: atomic-note
created: 2025-06-18
source-credibility: 8
research-context: checkpoint-identity-awareness-cli-commands
validation-status: verified
---

# CheckPoint AD Log Debug Mode Control

## Core Concept
The `adlog debug` command enables or disables debug mode for the AD Query process to gather detailed troubleshooting information for Identity Awareness issues.

## Command Functionality
- **Primary Purpose**: Control debug logging level for AD Query authentication process
- **Debug Scope**: Detailed logging of identity acquisition, authentication events, and communication with AD DCs
- **Troubleshooting Enhancement**: Provides granular visibility into identity-related failures
- **Performance Consideration**: Debug mode increases logging overhead and should be used temporarily

## Technical Context
- **Component**: AD Query debug subsystem
- **Log Detail Level**: Enhanced verbosity for authentication and identity acquisition events
- **Storage Impact**: Increased log file sizes during debug sessions
- **Operational Mode**: Typically enabled during troubleshooting sessions only

## Common Use Cases
- Diagnosing authentication failures in Identity Awareness deployments
- Investigating user identity acquisition problems from Active Directory
- Troubleshooting policy enforcement issues related to user identification
- Analyzing communication problems between gateway and domain controllers

## Debug Information Categories
- AD communication protocol details
- User identity resolution processes
- Authentication event processing
- Error conditions and failure modes

## Source Quality
- **Primary Source**: CheckPoint Gaia CLI Reference Documentation
- **Credibility Score**: 8/10
- **Validation Method**: Official vendor documentation cross-reference

## Connection Potential
Links to CheckPoint troubleshooting methodologies, Identity Awareness debugging, and AD Query process analysis concepts.