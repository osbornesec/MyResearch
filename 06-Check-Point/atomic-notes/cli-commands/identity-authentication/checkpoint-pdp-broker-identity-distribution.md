---
state: permanent
type: atomic-note
created: 2025-06-18
source-credibility: 7
research-context: checkpoint-identity-awareness-cli-commands
validation-status: verified
---

# CheckPoint PDP Identity Broker Management

## Core Concept
The `pdp broker` command manages connections and communication with Identity Brokers that distribute identity information between CheckPoint Security Gateways.

## Command Functionality
- **Primary Purpose**: Control Identity Broker connections for distributed identity information sharing
- **Distribution Role**: Synchronize user identity data across multiple security gateways
- **Scalability Support**: Enable identity awareness in distributed and clustered environments
- **Communication Management**: Maintain secure channels between gateways for identity data exchange

## Technical Context
- **Component**: Policy Decision Point (PDP) Identity Broker interface
- **Architecture**: Distributed identity management across multiple enforcement points
- **Data Synchronization**: Real-time identity information sharing between gateways
- **Protocol**: Secure inter-gateway communication for identity distribution

## Identity Broker Functions
- **Identity Replication**: Share user-to-IP mappings across security gateways
- **Load Distribution**: Balance identity queries across multiple brokers
- **Failover Support**: Maintain identity services during broker failures
- **Consistency Management**: Ensure synchronized identity information across the network

## Common Use Cases
- Configure distributed Identity Awareness deployments
- Troubleshoot identity synchronization issues between gateways
- Monitor Identity Broker connectivity and performance
- Manage identity distribution in clustered security environments

## Operational Benefits
- **Centralized Identity Management**: Single point of identity truth across multiple gateways
- **Performance Optimization**: Reduced individual gateway AD query load
- **High Availability**: Identity service continuity through broker redundancy
- **Scalability**: Support for large-scale distributed security architectures

## Source Quality
- **Primary Source**: CheckPoint CLI documentation and Identity Awareness architecture guides
- **Credibility Score**: 7/10
- **Validation Method**: Vendor documentation and distributed deployment guides

## Connection Potential
Links to CheckPoint distributed architecture, Identity Awareness scalability, and multi-gateway deployment concepts.