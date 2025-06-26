---
state: permanent
type: atomic-note
created: 2025-06-17
source-credibility: 9
research-context: Check Point CLI Administration
validation-status: verified
connections: 3
review-frequency: monthly
---

# Check Point fw sam_policy Command Framework

## Core Concept

The `fw sam_policy` command manages the Suspicious Activity Policy editor for both Suspicious Activity Monitoring (SAM) rules and Rate Limiting rules on Check Point Security Gateways through CLI interface.

## Command Structure

**Base Syntax:**
```bash
fw [-d] sam_policy {add|batch|del|get} [options]
```

**Alternative Commands:**
- IPv4: `fw sam_policy` or `fw samp`  
- IPv6: `fw6 sam_policy` or `fw6 samp`

## Core Operations

### Add Rules
- **Single Rule**: `fw sam_policy add [options]`
- **Multiple Rules**: `fw sam_policy batch` with EOF delimiter
- Supports both SAM and Rate Limiting rule types

### Delete Rules  
- **Single Rule**: `fw sam_policy del '<Rule UID>'`
- **Batch Deletion**: Through batch mode
- Requires exact UID from `get` command output

### View Rules
- **All Rules**: `fw sam_policy get`
- **Specific Rule**: `fw sam_policy get -u '<Rule UID>'`
- **List Format**: `fw sam_policy get -l` (parameters on separate lines)

### Batch Processing
```bash
fw sam_policy batch <<EOF
add [rule parameters]
del <rule_uid>
EOF
```

## Storage Architecture

**Rule Database:**
- **Location**: `$FWDIR/database/sam_policy.db`
- **Management File**: `$FWDIR/database/sam_policy.mng`
- **Persistence**: Configuration survives reboot

## VSX Mode Requirements

**Virtual System Context:**
- **Gaia Clish**: `set virtual-system <VSID>`
- **Expert Mode**: `vsenv <VSID>`
- **Cluster**: All members must be configured identically

## Performance Considerations

**CPU Resource Impact:**
- SAM Policy rules consume CPU resources on Security Gateway
- Best practice: Set expiration times for investigation without performance impact
- Keep only required SAM Policy rules active
- Remove rules when confirmed activity risk is handled through Security Policy

## Key Operational Characteristics

**Rule Management:**
- Rules compiled and loaded immediately with `flush true` parameter
- Without flush parameter, rules stored but not immediately active
- UID-based identification system for precise rule targeting
- Supports both notify and enforcement actions (drop, reject, block)

**Integration Points:**
- Works with SmartView Monitor GUI for SAM rule creation
- Complements `fw sam` command for active monitoring
- Integrates with Rate Limiting for DoS mitigation

## Connection Potential

Links to: [[checkpoint-suspicious-activity-monitoring-sam]], [[checkpoint-rate-limiting-configuration]], [[checkpoint-cli-administration-framework]], [[checkpoint-vsx-virtual-system-management]]