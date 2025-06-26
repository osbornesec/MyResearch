---
state: fleeting
type: checkpoint-management-atomic
created: 2025-06-17
source: "Check Point R81.20 Security Management Guide (2022)"
source-section: "Creating a New Policy Package"
source-credibility: 9
management-domain: "policy"
integration-points: ["manage-policies-layers", "installation-targets", "gateway-selection", "policy-types"]
---

# Policy Package Creation Procedure

## Core Management Concept
Policy package creation involves accessing Manage policies and layers from the Menu, defining package name and policy types (Access Control & HTTPS Inspection, Threat Prevention, QoS, Desktop Security), and configuring installation targets for gateway deployment.

## Administrative Context
This fundamental policy management procedure enables administrators to create organized policy collections that match organizational requirements and deployment scenarios, ensuring appropriate security coverage through structured policy type selection and targeted gateway installation.

## Implementation Details
- Access through Menu > Manage policies and layers to open management window
- Create new policy package using New button to open configuration interface
- Define descriptive policy package name for identification and management
- Select appropriate policy types: Access Control & HTTPS Inspection, Threat Prevention, QoS (Recommended/Express), Desktop Security
- Configure installation targets through All gateways or Specific gateway selection
- QoS and Desktop Security require gateway-level enablement through gateway editor settings
- Policy Package association with appropriate installation targets prevents deployment errors

## Integration Requirements
- Requires gateway configuration for QoS and Desktop Security policy type availability
- Integrates with Security Policies page for policy package management
- Connects to installation target gateways for deployment coordination
- Foundation for organized policy deployment and structured security management workflows