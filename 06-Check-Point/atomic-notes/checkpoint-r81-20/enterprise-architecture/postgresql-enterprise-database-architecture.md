---
state: fleeting
type: research-atomic
created: 2025-06-17
source-credibility: 9
research-context: checkpoint-multidomain-enterprise-architecture
validation-status: verified
source: "Check Point R81.20 Multi-Domain Security Management Administration Guide"
---

# PostgreSQL Enterprise Database Architecture

## Core Concept
PostgreSQL serves as the relational database manager handling all Multi-Domain Security Management data, configuration parameters, and Domain Management data with enterprise-scale connection pooling.

## Database Architecture Components
- **Rule Base Storage**: Security policies and rules for all domains
- **Management Objects**: Network objects, services, and configuration entities
- **Configuration Settings**: System-wide and domain-specific parameters
- **Multi-Domain Data**: Cross-domain and global configuration data

## Enterprise Connection Management
- **Connection Pool**: 10-50 concurrent connections supported
- **Process-Based Connections**: Each connection operates as separate process
- **Concurrent Access**: Multiple simultaneous database operations
- **Scalable Architecture**: Efficient resource utilization across domains

## Technical Infrastructure
- **Port Configuration**: Standard PostgreSQL port 5432
- **Database Location**: $CPDIR/database/postgresql (also known as $PGDIR)
- **Log Management**: PostgreSQL logs in $MDS_TEMPLATE/log/postgres.elg
- **Shared Resource Model**: Single instance serves all Domain Management Servers

## Performance Optimization
- **Connection Pooling**: Optimized database connection management
- **Concurrent Processing**: Multiple simultaneous transaction support
- **Data Isolation**: Domain-specific data separation within shared infrastructure
- **Query Optimization**: Efficient data retrieval and update operations

## Multi-Domain Integration
- **Centralized Data Store**: Single database for all domains and global configuration
- **Domain Separation**: Logical isolation of domain-specific data
- **Global Data Management**: Shared configuration and policy storage
- **Transaction Consistency**: Atomic operations across domain boundaries

## Connection Potential
- Links to CPM main management process
- Connects to Solr search platform integration
- Relates to Multi-Domain Server shared resource model
- Associates with Domain Management Server data isolation