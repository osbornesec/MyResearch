```yaml
---
state: permanent
type: atomic-note
created: 2025-06-16
last-reviewed: 2025-06-16
connections: 4
review-frequency: monthly
tags: [bduf, documentation, approval-gates, waterfall, quality-control]
---
```

# BDUF Document Hierarchy Sequential Approval Pattern

## Core Concept

*BDUF methodologies enforce a rigid document hierarchy with sequential approval gates where each document must be formally baselined before downstream documents can begin development, creating a chain of contractual specifications.*

## Content

**What is the core idea?**
BDUF creates a formal document chain: Project Charter → SRS → Architectural Design → Detailed Design → Interface Specs → Test Plan → Project Management Plan. Each document undergoes formal review and approval (baseline) before the next phase begins, establishing contractual stability.

**Why is it important?**
This approach provides:
- Risk mitigation through early problem detection in documentation
- Clear accountability with formal approval signatures
- Traceability from high-level requirements to implementation details
- Change control protection preventing scope creep
- Regulatory compliance through audit trails
- Predictable cost estimation based on stable specifications

**How does it connect to other concepts?**
This pattern forms the foundation of waterfall methodology, contrasts with agile's flexible documentation, and requires formal configuration management practices for maintaining document baselines.

## Connections

- [[bduf-documentation-philosophy-pattern]] - Foundational philosophy
- [[formal-document-review-process-pattern]] - Quality assurance mechanism
- [[waterfall-methodology-characteristics-pattern]] - Implementation methodology
- [[requirements-traceability-framework-pattern]] - Supporting framework
- [[Document Baselining and Change Control Pattern]] - Configuration management

## Evolution Notes

- **2025-06-16**: Initial capture from BDUF interrelationships analysis
- **Future**: Track hybrid approaches that maintain quality gates with increased flexibility

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