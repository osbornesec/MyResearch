```yaml
---
state: permanent
type: atomic-note
created: 2025-06-15
last-reviewed: 2025-06-15
connections: 2
review-frequency: monthly
tags: [microservices, error-handling, distributed-systems, resilience-patterns]
---
```

# Microservices Error Handling Pattern

## Core Concept

*Comprehensive error handling strategy for microservices architecture involving centralized error classification, standardized response formats, circuit breaker patterns, and graceful degradation mechanisms across service boundaries.*

## Content

**What is the core idea?**
Microservices error handling requires coordination across multiple services with standardized error response structures, proper error classification and propagation, circuit breaker implementation for failing services, and graceful degradation when dependencies are unavailable. Each service maintains consistent error handling while preserving system resilience.

**Why is it important?**
Provides:
- System resilience and fault tolerance
- Consistent error experience across service boundaries
- Debugging and troubleshooting capabilities in distributed systems
- Graceful degradation under partial system failures
- Clear error propagation and correlation across services

**How does it connect to other concepts?**
Implements distributed systems resilience principles, builds on service-oriented architecture patterns, and supports observability and monitoring strategies.

## Connections

- [[express-middleware-organization-pattern]] - Implementation foundation
- [[Circuit Breaker Pattern]] - Resilience mechanism
- [[Distributed Systems Observability Pattern]] - Monitoring integration
- [[Service Mesh Error Handling Pattern]] - Infrastructure support

## Evolution Notes

- **2025-06-15**: Initial capture from microservices architecture analysis
- **Future**: Track evolution with new resilience patterns and tools

## Review Schedule

- Next review: 2025-07-15
- Frequency: monthly

---

## Evergreen Processing Checklist

- [x] Title refined to function as "concept API"
- [x] Content is self-contained and atomic
- [x] At least 2 meaningful connections established
- [x] State updated to `permanent` when mature
- [x] Tags updated to reflect semantic relationships