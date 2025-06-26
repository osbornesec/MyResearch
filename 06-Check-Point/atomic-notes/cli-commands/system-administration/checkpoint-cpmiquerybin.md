---
state: fleeting
type: atomic-note
created: 2025-06-18
source-credibility: 8
research-context: CheckPoint CLI command documentation
validation-status: verified
---

# CheckPoint Database Query CLI Tool - cpmiquerybin

## Core Concept
The cpmiquerybin utility is a CheckPoint CLI command that connects to a specified database, runs user-defined queries, and displays query results either as Security Gateway sets or tab-delimited field lists from retrieved objects.

## Command Syntax
```bash
cpmiquerybin <query_result_type> <database> <table> <query> [-a <attributes_list>]
```

## Parameters
- **query_result_type**: Query result format
  - `attr` - Returns values from specified fields for each object (requires -a parameter)
  - `object` - Shows Security Gateway sets containing data of each retrieved object
- **database**: Database file name in quotes (e.g., "mdsdb") or empty quotes "" for default database
- **table**: Name of the database table containing the data
- **query**: Query strings in comma-separated list or empty quotes "" to return all objects
  - Supports asterisk (*) wildcard for pattern matching
- **-a attributes_list**: Comma-delimited list of object fields (required with "attr" type)
  - Special string `__name__` returns all object names

## Key Features
- Connects to CheckPoint management databases
- Supports wildcard pattern matching in queries
- Returns structured data in multiple formats
- Works with Domain Management Server databases when combined with mdsenv
- Provides error handling for missing attributes and syntax errors

## Usage Example
```bash
# View names of all network objects
cpmiquerybin attr "" network_objects "" -a __name__
```

## Source Quality
- **Primary Source**: CheckPoint Admin Foundation CLI Guide
- **Credibility Score**: 8/10
- **Validation Method**: Official CheckPoint documentation

## Connection Potential
- Links to CheckPoint database management concepts
- Connects to Domain Management Server (mdsenv) configuration
- Related to CheckPoint object management and network administration
- Associated with CheckPoint query and reporting methodologies