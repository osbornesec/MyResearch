---
state: permanent
type: atomic-note
created: 2025-06-18
last-reviewed: 2025-06-18
connections: 2
review-frequency: monthly
source-credibility: 8
research-context: checkpoint-securexl-table-management
validation-status: verified
source: Perplexity Research and CheckPoint CLI Reference
---

# CheckPoint SecureXL sim table Command

## Core Concept
The sim table command displays the contents of specific SecureXL kernel tables, providing visibility into acceleration data structures and current table entries.

## Command Syntax
```bash
sim table <table_name>
sim tab -d templates    # Special case: show templates in drop state
```

## Supported Table Names
- **conns**: Current SecureXL accelerated connections
- **nat**: NAT table entries and translations
- **templates**: Acceleration templates and rules
- **rule**: Rule table entries
- **connections**: Active connection acceleration entries

## Functionality
- **Table Inspection**: View contents of SecureXL internal data structures
- **Connection Analysis**: Examine accelerated connection entries
- **Template Monitoring**: Review acceleration template configurations
- **NAT Visibility**: Inspect NAT acceleration table entries
- **Debugging Support**: Analyze table contents for troubleshooting

## Usage Examples
```bash
sim table conns        # Show accelerated connections
sim table templates    # Display acceleration templates
sim table nat          # View NAT table entries
sim tab -d templates   # Show only templates in drop state
```

## Output Characteristics
- Table contents displayed in structured format
- Shows current entries and their configuration
- Provides real-time snapshot of table state
- Templates in drop state output to `/var/log/messages` and kernel ring buffer

## Troubleshooting Applications
- **Connection Issues**: Analyze acceleration status of specific connections
- **Template Problems**: Review template configuration and status
- **NAT Troubleshooting**: Examine NAT acceleration entries
- **Performance Analysis**: Understand table utilization and efficiency

## SecureXL Context
Core diagnostic tool for SecureXL Information Manager that provides direct access to acceleration kernel data structures and table contents.

## Connection Potential
- Links to SecureXL connection acceleration and template management
- Connects to NAT acceleration optimization and debugging methodologies
- Related to fwaccel table analysis and acceleration troubleshooting frameworks