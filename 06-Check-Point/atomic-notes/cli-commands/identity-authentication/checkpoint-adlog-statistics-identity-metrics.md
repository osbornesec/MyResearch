---
state: permanent
type: atomic-note
created: 2025-06-18
source-credibility: 8
research-context: checkpoint-identity-awareness-cli-commands
validation-status: verified
---

# CheckPoint AD Log Statistics and Identity Metrics

## Core Concept
The `adlog statistics` command displays statistics about NT Event logs received from AD Domain Controllers and the number of identified IP addresses for Identity Awareness monitoring.

## Command Functionality
- **Primary Purpose**: Monitor health and effectiveness of identity acquisition process
- **Metrics Scope**: NT Event log processing statistics and active user-to-IP mappings
- **Performance Monitoring**: Track identity acquisition efficiency and coverage
- **Operational Health**: Validate ongoing Identity Awareness functionality

## Statistical Information Provided
- **NT Event Logs**: Count of authentication events received from AD DCs
- **Identified IP Addresses**: Number of currently mapped user-to-IP associations
- **Processing Rates**: Identity acquisition throughput and processing efficiency
- **Time-based Metrics**: Historical identity mapping patterns and trends

## Technical Context
- **Data Source**: Active Directory NT Event logs from domain controllers
- **Mapping Maintenance**: Real-time user identity to IP address associations
- **Identity Lifecycle**: Statistics on identity acquisition, maintenance, and expiration
- **Network Coverage**: Scope of identity awareness across network segments

## Common Use Cases
- Monitoring Identity Awareness deployment effectiveness
- Validating user identification coverage across network segments
- Troubleshooting identity acquisition performance issues
- Capacity planning for identity-based policy enforcement

## Operational Insights
- Identity acquisition success rates
- Network coverage of authenticated users
- Policy enforcement readiness assessment
- Performance baseline establishment

## Source Quality
- **Primary Source**: CheckPoint Gaia CLI Reference Documentation
- **Credibility Score**: 8/10
- **Validation Method**: Official vendor documentation cross-reference

## Connection Potential
Links to CheckPoint Identity Awareness monitoring, performance analysis, and network security policy enforcement concepts.