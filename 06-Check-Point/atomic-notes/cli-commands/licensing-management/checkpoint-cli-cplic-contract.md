---
state: fleeting
type: research-atomic
created: 2025-06-17
source-credibility: 9
research-context: "Check Point CLI command extraction from administrative foundation guide"
validation-status: verified
source: "Check Point CLI Reference Guide R81.20"
domain: "License Management"
---

# Check Point CLI Command cplic contract

## Core Concept

Manages Check Point Service Contracts on local Check Point computers, enabling deletion and installation of service contract files for support entitlements.

## Syntax and Parameters

```bash
cplic contract -h
cplic [-d] contract
    del
        -h
        <Service Contract ID>
    put
        [{-o | -overwrite}] <Service Contract File>
```

## Operations

**del**: Deletes Service Contract from `$CPDIR/conf/cp.contract` file
**put**: Merges Service Contract to `$CPDIR/conf/cp.contract` file

## Key Parameters

- `-d`: Debug mode (redirect output to file recommended)
- `<Service Contract ID>`: Identifier for specific contract
- `-o | -overwrite`: Overwrites current Service Contract
- `<Service Contract File>`: Path to contract file from User Center

## File Location

Service contracts stored in: `$CPDIR/conf/cp.contract`

## Managed Gateway Considerations

When installing Service Contract on managed Security Gateway / Cluster Member / Scalable Platform Security Group, must update license repository on Management Server using:
- `cplic get` command
- SmartUpdate interface

## Service Contract Source

Service Contract files must be downloaded from Check Point User Center account before installation.

## Execution Context

Available on:
- Management Server / Security Gateway / Cluster Member (Gaia Clish or Expert mode)
- Scalable Platform Security Group (Gaia gClish or Expert mode)

## Connection Potential

Links to:
- Check Point User Center procedures
- Service contract management
- Support entitlement administration
- License repository synchronization
- SmartUpdate operations
- Check Point support services
- Contract lifecycle management