---
state: fleeting
type: atomic-note
created: 2025-06-18
source-credibility: 9
research-context: checkpoint-multidomain-management
validation-status: verified
source: Check Point CLI Reference Guide R81.20
---

# CheckPoint mdsquerydb Multi-Domain Database Query Tool

## Core Concept
The mdsquerydb command is an advanced database query tool that enables administrators to run shell scripts to retrieve information from Multi-Domain Security Management databases, including Multi-Domain Server, Domain Management Server, and Global databases.

## Syntax and Parameters
```
mdsquerydb <key_name> [-f <output_file_name>]
```

- **key_name**: Query key that must be defined in the pre-defined queries configuration file
- **-f output_file_name**: Optional parameter to send query results to specified file; if omitted, data is sent to standard output

## Configuration Framework
- **Pre-defined queries**: System includes built-in queries defined in `$MDSDIR/confqueries.conf`
- **Configuration protection**: Pre-defined queries must not be changed or deleted
- **Query key validation**: All query keys must exist in the configuration file before execution

## Usage Context
- **Multi-Domain Server operations**: Query global database information across domains
- **Domain Management Server**: Retrieve domain-specific database content
- **Network object queries**: Extract network objects, gateways, and security policies
- **Administrative reporting**: Generate structured output for compliance and auditing

## Example Applications
- List network objects in global database: `mdsquerydb NetworkObjects -f /tmp/networks.txt`
- Query gateway objects in specific domain: `mdsquerydb Gateways -f /tmp/gateways.txt`
- Extract security policies for reporting and analysis
- Generate administrative reports from Multi-Domain Management databases

## Connection Potential
Links to [[checkpoint-multidomain-management-ai-agent-coordination]], [[database-query-automation]], [[multi-domain-security-architecture]], [[checkpoint-mdsenv-context-switching]], [[administrative-reporting-tools]]