---
state: permanent
type: atomic-note
created: 2025-06-17
source-credibility: 10
research-context: check-point-atrg-smartevent-processing
validation-status: verified
connections: 3
---

# SmartEvent Correlation Unit Log Analysis Patterns

## Core Concept
Check Point SmartEvent Correlation Unit (cpsead process) analyzes log entries through four distinct processing patterns: marking entries for future pattern identification, generating immediate events, adding entries to ongoing events, and discarding irrelevant entries.

## Processing Patterns
- **Pattern Marking**: Marks log entries that individually are not events but may contribute to larger pattern identification
- **Event Generation**: Takes log entries meeting Event Policy criteria and generates immediate security events
- **Event Aggregation**: Adds new log entries to ongoing events that represent group security patterns
- **Entry Discard**: Eliminates log entries that do not meet any event criteria to reduce processing overhead

## Event Policy Integration
- **Criteria Matching**: Analyzes each log entry against installed Event Policy definitions
- **Pattern Recognition**: Identifies security event patterns based on predefined and learned behaviors
- **Threshold Management**: Applies configurable thresholds to determine event significance
- **Multi-Source Analysis**: Processes logs from Check Point products and third-party OPSEC devices

## Communication Protocols
- **cpsead Process**: Responsible for correlation unit functionality and log analysis
- **LEA Protocol**: Communicates with Log Servers using TCP port 18184 for log data retrieval
- **Event Forwarding**: Sends identified events to SmartEvent server for further processing and storage

## Related Concepts
- [[smartevent-architecture-three-component-system]]
- [[smartevent-real-time-correlation-pattern-analysis]]
- [[enterprise-security-log-processing-methodologies]]

## Source Attribution
Check Point ATRG SmartEvent sk93970 - Official Technical Documentation
Credibility: 10/10 - Authoritative vendor documentation