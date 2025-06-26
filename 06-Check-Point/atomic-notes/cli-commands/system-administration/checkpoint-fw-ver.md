---
state: permanent
type: atomic-note
created: 2025-06-17
domain: checkpoint-firewall
source-credibility: 9
research-context: checkpoint-diagnostic-commands
validation-status: verified
connections: 3
review-frequency: quarterly
---

# Check Point fw ver Command - Version Information Display

## Core Concept
The `fw ver` command displays comprehensive version information for Check Point security gateway installations, including product version, build number, kernel version, and installed packages.

## Command Syntax
```bash
fw ver
```

## Primary Output Components
- **Product Version**: Major.minor release number (e.g., R81, R80.40)
- **Build Number**: Specific build identifier for troubleshooting
- **Kernel Version**: Underlying operating system kernel information
- **Installed Packages**: Security blades and add-on modules
- **Installation Date**: When the current version was installed

## Diagnostic Use Cases
- **Version Compatibility**: Verify supported features and integrations
- **Support Requirements**: Provide version details for technical support
- **Upgrade Planning**: Assess current state before version migrations
- **License Validation**: Confirm installed blade compatibility

## Connection Potential
- [[checkpoint-cpinfo-system-information-collection]]
- [[checkpoint-version-compatibility-matrix]]
- [[checkpoint-upgrade-verification-methodology]]