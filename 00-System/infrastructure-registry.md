---
type: system-infrastructure
subtype: registry-documentation
atomic-compliance: infrastructure-exempt
created: 2025-06-15
last-reviewed: 2025-06-15
purpose: infrastructure-tracking
tags: [system-infrastructure, registry, compliance, documentation]
---

# System Infrastructure Registry

This document maintains a comprehensive registry of all files exempt from atomic compliance requirements due to their infrastructure nature.

## Infrastructure Classification Types

### 1. System Configuration Files
**Purpose**: Core system operation and configuration
**Atomic Compliance**: Exempt - These files serve operational functions, not knowledge content

| File | Type | Purpose | Location |
|------|------|---------|----------|
| `CLAUDE.md` | System Prompt | AI agent configuration | `/CLAUDE.md` |
| Various `*.json`, `*.yaml`, `*.yml` | Configuration | Tool and system configuration | Various |

### 2. Functional Templates
**Purpose**: Reusable templates for content generation
**Atomic Compliance**: Exempt - Templates are tools, not atomic knowledge concepts

| File | Type | Purpose | Location |
|------|------|---------|----------|
| `createprd.md` | PRD Generation Template | Product requirements document creation | `/05-Templates-and-Generators/sdlc-templates/` |
| Template files in `/05-Templates-and-Generators/` | Various Templates | Content generation tools | Multiple locations |

### 3. Reference Guides
**Purpose**: Comprehensive reference documentation
**Atomic Compliance**: Exempt - Serve as reference resources with extracted atomic notes

| File | Type | Purpose | Location |
|------|------|---------|----------|
| `comprehensive-code-review-guide-for-modern-full-stack-applications.md` | Reference Guide | Code review methodology reference | `/02-Software-Development/code-review/` |

### 4. Automation Scripts
**Purpose**: System automation and monitoring
**Atomic Compliance**: Exempt - Operational tools, not knowledge content

| File | Type | Purpose | Location |
|------|------|---------|----------|
| `atomic-compliance-monitor.sh` | Monitoring Script | Atomic compliance monitoring | `/00-System/Scripts/` |
| `monitoring-orchestrator.sh` | Orchestration Script | System monitoring coordination | `/00-System/Scripts/` |
| `pkm-integration-monitor.sh` | PKM Monitor | PKM system health monitoring | `/00-System/Scripts/` |
| Various `*.sh`, `*.py`, `*.js` files | Scripts | System automation | `/00-System/Scripts/` |

### 5. System Documentation
**Purpose**: Meta-documentation about the system itself
**Atomic Compliance**: Exempt - Describes system operation, not domain knowledge

| File | Type | Purpose | Location |
|------|------|---------|----------|
| `README.md` files | Documentation | Project/directory documentation | Various |
| `CHANGELOG.md` files | Version History | Change tracking | Various |
| `LICENSE*` files | Legal | Licensing information | Various |

## Infrastructure Identification Rules

The atomic compliance monitoring system uses these rules to identify infrastructure files:

### 1. Frontmatter-Based Identification
```yaml
---
type: system-infrastructure
atomic-compliance: infrastructure-exempt
---
```

### 2. Filename Pattern Matching
- `CLAUDE.md` - System prompt file
- `README.md` - Documentation files
- `CHANGELOG.md` - Change logs
- `LICENSE*` - License files
- `*.sh`, `*.py`, `*.js` - Script files
- `*.json`, `*.yaml`, `*.yml` - Configuration files

### 3. Directory-Based Exclusions
- `/Scripts/` - All script directories
- `/Automation/` - All automation directories
- `/Templates/` - Template directories (when used for generation)
- `/Attachments/` - Binary and attachment files

## Infrastructure Subtypes

### functional-template
Templates designed for content generation and reuse:
- PRD creation templates
- Code generation templates
- Documentation templates
- Process workflow templates

### reference-guide
Comprehensive reference materials with extracted atomic notes:
- Technical guides with practical examples
- Methodology documentation
- Best practice compilations
- Framework references

### registry-documentation
System documentation and registries:
- This infrastructure registry
- System configuration documentation
- Process documentation
- Compliance tracking documents

## Maintenance Protocol

### Weekly Review
- Verify all infrastructure files are properly marked
- Check for new files that should be classified as infrastructure
- Update registry with any new infrastructure additions

### Monthly Audit
- Review infrastructure classification accuracy
- Ensure monitoring script exclusions remain current
- Validate that knowledge content isn't incorrectly marked as infrastructure

### Quality Assurance
- Infrastructure files serve operational/reference functions
- Knowledge content files contain domain-specific insights
- Clear distinction maintained between tools and knowledge
- Atomic compliance applied only to knowledge content

## Registry Statistics

**Last Updated**: 2025-06-15
**Total Infrastructure Files Tracked**: 8+ (ongoing)
**Classification Categories**: 5
**Monitoring Integration**: Active

## Integration with Compliance Monitoring

The atomic compliance monitoring system (`atomic-compliance-monitor.sh`) automatically:

1. **Excludes Infrastructure Files**: Uses `is_infrastructure_file()` function
2. **Reports Infrastructure Count**: Tracks exempt files separately
3. **Maintains Compliance Accuracy**: Focuses on knowledge content only
4. **Provides Clear Metrics**: Distinguishes between content and infrastructure

## Future Enhancements

### Planned Improvements
- Automated infrastructure file discovery
- Enhanced pattern matching for new file types
- Integration with vault health monitoring
- Automated registry maintenance

### Classification Evolution
- Sub-category refinement as new infrastructure emerges
- Integration with PKM automation systems
- Enhanced reporting on infrastructure health
- Cross-reference validation with actual file usage

---

*This registry is maintained as part of the PKM Quality Assurance Framework and is exempt from atomic compliance requirements as system infrastructure.*