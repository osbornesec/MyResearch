---
state: fleeting
type: research-atomic
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-atrg-corexl-processing
validation-status: verified
source: "Check Point ATRG CoreXL sk98737"
---

# Check Point CoreXL CPU Affinity Range Specification

## Core Concept
CoreXL affinity commands support flexible CPU range specification syntax, allowing single CPU IDs, ranges, or combinations for precise resource allocation control across multi-core systems.

## Technical Implementation
- **Single CPU**: `-cpu 7` assigns to specific core ID
- **Range Specification**: `-cpu 0-5` assigns to consecutive core range
- **Combination Syntax**: `-cpu 0-2 4` combines ranges and individual cores
- **VSID Range Support**: `-vsid 0-5` or `-vsid 0-2 4` for Virtual System contexts
- **Instance Range**: `-inst 0 2 4` specifies FWK instance lists for assignment

## Research Context
Essential syntax framework for precise CPU resource allocation in CoreXL multi-core firewall deployments, enabling granular performance optimization.

## Source Quality
- **Primary Source**: Check Point ATRG CoreXL Technical Reference sk98737
- **Credibility Score**: 9/10
- **Validation Method**: Direct extraction from Check Point technical documentation

## Connection Potential
- Links to CPU resource management syntax
- Connects with system configuration languages
- Relates to multi-core assignment patterns
- Associates with performance tuning methodologies