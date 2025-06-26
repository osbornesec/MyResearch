---
state: permanent
type: atomic-note
created: 2025-06-17
source-credibility: 10
research-context: check-point-atrg-smartevent-processing
validation-status: verified
connections: 4
---

# SmartEvent Architecture Three Component System

## Core Concept
Check Point SmartEvent utilizes a three-component architecture consisting of Correlation Unit (log analysis), SmartEvent Server (events database), and SmartEvent Client (management interface). These components work together to provide centralized real-time event correlation and threat detection.

## Component Functions
- **Correlation Unit**: Analyzes log entries from Log servers, identifies threat patterns according to Event Policy, forwards events to SmartEvent server
- **SmartEvent Server**: Receives events from Correlation Units, assigns severity levels, invokes automatic reactions, stores events in Events Database
- **SmartEvent Client**: Displays received events, manages event filtering and closure, configures and installs Events Policy

## Deployment Flexibility
- **Standalone Deployment**: All components installed on single machine for smaller environments
- **Distributed Deployment**: Components spread across multiple machines and sites for higher logging volumes
- **Scalable Architecture**: Multiple Correlation Units can analyze logs from multiple Log servers

## Inter-Component Communication
- **Event Flow**: Correlation Unit → SmartEvent Server → Events Database → SmartEvent Client
- **Policy Distribution**: SmartEvent Client → SmartEvent Server → Correlation Unit
- **Real-time Processing**: Continuous log analysis and event generation across all components

## Related Concepts
- [[smartevent-correlation-unit-log-analysis-patterns]]
- [[smartevent-postgresql-database-events-storage]]
- [[smartevent-distributed-deployment-scalability-architecture]]
- [[enterprise-security-event-correlation-systems]]

## Source Attribution
Check Point ATRG SmartEvent sk93970 - Official Technical Documentation
Credibility: 10/10 - Authoritative vendor documentation