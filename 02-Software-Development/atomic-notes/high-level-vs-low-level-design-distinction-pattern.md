```yaml
---
state: permanent
type: atomic-note
created: 2025-06-16
last-reviewed: 2025-06-16
connections: 3
review-frequency: monthly
tags: [software-design, bduf, architecture, detailed-design, ieee-1016]
---
```

# High-Level vs Low-Level Design Distinction Pattern

## Core Concept

*BDUF methodologies implement a two-tier design approach: High-Level Design (HLD) establishes system architecture and component interactions, while Low-Level Design (LLD) specifies internal module algorithms and implementation details suitable for direct coding.*

## Content

**What is the core idea?**
HLD (Architectural Design Document) answers "which components and how do they interact" with system architecture, major components, and technology stack decisions. LLD (Detailed Design Document) answers "how does each component work internally" with algorithms, data structures, pseudocode, and implementation-ready specifications.

**Why is it important?**
This separation provides:
- Clear abstraction layers preventing implementation details from contaminating architecture
- Parallel development capability where different teams can work on HLD and LLD simultaneously
- Better traceability from requirements through architecture to implementation
- Formal review opportunities at each design level
- Risk management through staged design validation
- Maintainability through documented design rationale at appropriate levels

**How does it connect to other concepts?**
This pattern implements IEEE 1016 standards for Software Design Descriptions, supports the BDUF sequential approval process, and enables systematic requirements traceability through design layers.

## Connections

- [[bduf-document-hierarchy-sequential-approval-pattern]] - Sequential development framework
- [[bduf-documentation-philosophy-pattern]] - Underlying methodology
- [[system-architecture-document-pattern]] - HLD implementation
- [[requirements-traceability-framework-pattern]] - Cross-layer traceability

## Evolution Notes

- **2025-06-16**: Initial capture from BDUF design documentation analysis
- **Future**: Track how modern architectures adapt this pattern for microservices and cloud-native systems

## Review Schedule

- Next review: 2025-07-16
- Frequency: monthly

---

## Evergreen Processing Checklist

- [x] Title refined to function as "concept API"
- [x] Content is self-contained and atomic
- [x] At least 2 meaningful connections established
- [x] State updated to `permanent` when mature
- [x] Tags updated to reflect semantic relationships