---
state: fleeting
type: atomic-note
created: 2025-06-18
source-credibility: 9
research-context: checkpoint-multidomain-management
validation-status: verified
source: Check Point CLI Reference Guide R81.20
---

# CheckPoint mcd Directory Change Command for Multi-Domain Context

## Core Concept
The mcd command changes the current working directory to a specified directory within the $FWDIR directory structure, specifically when operating in the context of a Domain Management Server (DMS) in Check Point's Multi-Domain environment.

## Description
This command provides directory navigation capabilities within the Check Point framework directory structure when working with Multi-Domain Server configurations. It operates exclusively within the Domain Management Server context and is limited to directories under the $FWDIR path.

## Syntax
```bash
mdsenv <IP Address or Name of Domain Management Server>
mcd <Name of Directory in $FWDIR>
```

## Parameters
- **Domain Management Server**: IP address or hostname of the target DMS
- **Directory Name**: Name of the directory within $FWDIR to navigate to
- **$FWDIR**: Check Point installation directory (typically /opt/CPshrd-R81.20)

## Usage Context
- **Multi-Domain Environment**: Must be used within mdsenv context
- **Directory Navigation**: Limited to $FWDIR subdirectories only
- **Administrative Tasks**: Facilitates file system navigation for domain-specific operations
- **Domain Management**: Enables context-aware directory changes for multi-domain configurations

## Operational Requirements
- **Prerequisite**: mdsenv command must be executed first to establish DMS context
- **Path Limitation**: Only directories within $FWDIR hierarchy are accessible
- **Administrative Access**: Requires appropriate privileges for domain management operations
- **Context Dependency**: Cannot be used outside of established DMS environment

## Connection Potential
Links to [[checkpoint-multidomain-management-ai-agent-coordination]], [[checkpoint-mdsenv-domain-context-management]], [[checkpoint-directory-navigation-framework]], [[domain-management-server-operations]], [[checkpoint-file-system-architecture]]