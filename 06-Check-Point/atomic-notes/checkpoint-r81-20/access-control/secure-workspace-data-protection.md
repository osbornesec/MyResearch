---
state: fleeting
type: research-atomic
created: 2025-06-17
source-credibility: 9
research-context: Check Point R81.20 Mobile Access data protection
validation-status: verified
source: "Check Point R81.20 Mobile Access Administration Guide"
domain: "Data Protection"
---

# Secure Workspace Virtual Desktop Data Protection

## Core Concept
Check Point Secure Workspace provides a proprietary virtual desktop environment that protects session-specific data through protected disk space and file encryption, automatically cleaning all session cache after termination to prevent data leakage on shared or public computers.

## Virtual Desktop Architecture
- **Isolated Environment**: Creates protected virtual desktop separate from host system
- **Protected Disk Space**: Dedicated encrypted storage for session-specific files
- **File Encryption**: All files created during session are automatically encrypted
- **Memory Protection**: Session data isolated from host system memory and processes

## Session Data Protection
- **Temporary File Security**: All temporary files created during session are encrypted
- **Browser Cache Isolation**: Web browsing data contained within secure workspace
- **Application Data Containment**: Files and data from corporate applications remain protected
- **Cookie Isolation**: Session cookies stored securely within workspace environment

## Automatic Cleanup Mechanism
- **Session Termination Cleanup**: Automatic deletion of all session data upon logout
- **Cache Wiping**: Complete removal of protected session cache from endpoint
- **File Destruction**: Secure deletion of all files created during access session
- **Memory Clearing**: Protected memory areas cleared of sensitive information

## Public Computer Protection
- **Shared Terminal Security**: Prevents data leakage on public computers and kiosks
- **Hotel Business Center Safety**: Secure access from untrusted hotel computers
- **Internet Cafe Protection**: Safe corporate access from public internet access points
- **BYOD Risk Mitigation**: Reduces data exposure risks on personal devices

## Administrative Policy Control
- **Protection Level Integration**: Secure Workspace can be required for sensitive applications
- **User Group Policies**: Different workspace requirements for different user roles
- **Application-Specific Requirements**: Mandatory workspace for high-sensitivity applications
- **Compliance Enforcement**: Automatic workspace activation based on data classification

## Data Loss Prevention Integration
- **Corporate Data Protection**: Prevents inadvertent data storage on endpoint devices
- **Intellectual Property Security**: Protects proprietary information from local storage
- **Compliance Support**: Supports regulatory requirements for data handling
- **Audit Trail**: Session activities tracked for security and compliance monitoring

## Technical Implementation
- **Client-Side Deployment**: Virtual desktop runs on user's endpoint device
- **Encryption Standards**: Industry-standard encryption for all protected files
- **Performance Optimization**: Minimal impact on user experience and system performance
- **Cross-Platform Support**: Available across multiple operating systems and devices