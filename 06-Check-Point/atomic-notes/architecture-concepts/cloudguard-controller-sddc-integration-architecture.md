---
state: permanent
type: atomic-note
created: 2025-06-17
source-credibility: 10
research-context: check-point-atrg-cloudguard-controller-processing
validation-status: verified
connections: 4
---

# CloudGuard Controller SDDC Integration Architecture

## Core Concept
Check Point CloudGuard Controller delivers advanced threat protection to cloud infrastructures by connecting to Software-Defined Data Centers (SDDC) through trusted APIs, regularly polling for environment changes, and automatically pushing security policy updates to Security Gateways.

## Core Components
- **CMS (Cloud Management Server)**: Main CloudGuard Controller process coordinating all operations
- **Scanner**: CMS component that regularly retrieves objects and attributes from Data Center environments  
- **DC Repository**: Provides in-memory storage of scan results for rapid policy enforcement
- **Enforcement**: Sends Data Center updates to Security Gateways based on security policy definitions
- **Notifier (Auto-update)**: Updates Check Point Management (CPM) process with Data Center object changes

## Integration Workflow
- **API Connectivity**: Establishes trusted connections to SDDC vendor APIs for environment access
- **Regular Polling**: Continuously monitors connected environments for object and attribute changes
- **Automatic Synchronization**: Pushes detected changes automatically to integrated Security Gateways
- **Policy Enforcement**: Ensures security policies remain current with dynamic cloud infrastructure changes

## Operational Benefits
- **Dynamic Environment Support**: Adapts to constantly changing cloud infrastructure configurations
- **Centralized Management**: Provides unified security policy management across hybrid cloud environments
- **Automated Updates**: Eliminates manual policy updates through continuous synchronization
- **Vendor Agnostic**: Supports multiple cloud vendors through standardized API integration patterns

## Related Concepts
- [[software-defined-data-center-security-integration]]
- [[cloud-security-policy-automation]]
- [[hybrid-cloud-security-management]]
- [[api-driven-security-orchestration]]

## Source Attribution
Check Point ATRG CloudGuard Controller sk115657 - Official Technical Documentation
Credibility: 10/10 - Authoritative vendor documentation