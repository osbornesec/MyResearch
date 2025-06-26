---
state: fleeting
type: research-atomic
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-atrg-corexl-processing
validation-status: verified
source: "Check Point ATRG CoreXL sk98737"
---

# Check Point CoreXL VSX Affinity Factory Reset

## Core Concept
CoreXL provides VSX-specific affinity reset commands to restore default CPU assignment configurations across Virtual System environments, with optional user prompting for safety confirmation.

## Technical Implementation
- **Prompted Reset**: `fw ctl affinity -vsx_factory_defaults` resets with user confirmation
- **Silent Reset**: `fw ctl affinity -vsx_factory_defaults_no_prompt` resets without prompting
- **VSX Scope**: Specifically targets Virtual System Exchange (VSX) affinity settings
- **R77+ Compatibility**: Available in Check Point R77 and higher versions
- **Factory Restoration**: Returns all VSX CPU assignments to original default configurations

## Research Context
Critical recovery mechanism for VSX environments where custom CPU affinity configurations require reset to baseline performance settings.

## Source Quality
- **Primary Source**: Check Point ATRG CoreXL Technical Reference sk98737
- **Credibility Score**: 9/10
- **Validation Method**: Direct extraction from Check Point ATRG documentation

## Connection Potential
- Links to system recovery procedures
- Connects with VSX management operations
- Relates to configuration reset patterns
- Associates with multi-tenant firewall administration