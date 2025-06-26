---
state: permanent
type: atomic-note
created: 2025-06-17
source-credibility: 10
research-context: check-point-atrg-smartevent-processing
validation-status: verified
connections: 4
---

# SmartEvent PostgreSQL Database Events Storage

## Core Concept
Check Point SmartEvent utilizes PostgreSQL database for Events Database storage, requiring proper database registration, configuration, and maintenance. The cpsemd process depends on PostgreSQL functionality for SmartEvent GUI login and event storage operations.

## Database Dependencies
- **cpsemd Process**: Responsible for SmartEvent GUI login, depends on PostgreSQL database availability
- **Events Database**: Stores all detected events received from Correlation Units
- **Database Registration**: Requires proper PostgreSQL registration in Check Point registry for operation
- **Process Interdependency**: PostgreSQL failure causes cpsemd crashes and SmartEvent GUI login failures

## Registration Requirements
```bash
# PostgreSQL Registration Command
$CPDIR/database/postgresql/util/PostgreSQLCmd register -p Analyzer<CP_Version_Code_Name> -D "/opt/CPrt-<CP_Version>/events_db/data"

# Registry Section Format
: (PostgreSQL 
    :PgDataPath ("/opt/CPrt-<CP_Version>/events_db/data") 
    :UserName (cp_postgres) 
    :(PgDatabase 
        :Analyzer<CP_Version_Code_Name>(true) 
    ) 
)
```

## Troubleshooting Procedures
- **Database Status Check**: `$CPDIR/database/postgresql/util/PostgreSQLCmd status`
- **Registration Verification**: Check registry file for PostgreSQL section
- **Directory Requirements**: Ensure `$RTDIR/events_db/data` directory exists with proper permissions
- **Debug Mode**: Enhanced logging through postgresql.conf configuration modifications

## Operational Considerations
- **Data Persistence**: Unregistering PostgreSQL removes all old events from database
- **Backup Strategy**: Events can be restored using 'Offline Job' option in SmartEvent GUI
- **Permission Management**: events_db directory must be owned by cp_postgres user
- **Service Dependencies**: PostgreSQL must be running before SmartEvent services can function

## Related Concepts
- [[smartevent-architecture-three-component-system]]
- [[smartevent-troubleshooting-cpsemd-process-failures]]
- [[postgresql-database-management-check-point-integration]]
- [[enterprise-database-registration-procedures]]

## Source Attribution
Check Point ATRG SmartEvent sk93970 - Official Technical Documentation
Credibility: 10/10 - Authoritative vendor documentation