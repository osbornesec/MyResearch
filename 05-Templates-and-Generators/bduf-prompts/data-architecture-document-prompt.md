# Data Architecture Document Prompt

**Context:** The Data Architecture Document defines the structure, organization, and management of the system's data assets. It details data models, relationships, storage strategies, and data flows across the system. This document ensures data integrity, appropriate access, and efficient utilization of data resources throughout the system lifecycle. It bridges business requirements with technical implementation of data structures.

**Required Expertise Persona:** As a Senior Data Architect with 12+ years of experience designing enterprise data solutions, you possess deep expertise in data modeling, database design, and data governance practices. Your background spans relational databases, NoSQL technologies, data warehousing, and modern data lake architectures. You've implemented data solutions for mission-critical systems with stringent performance, security, and compliance requirements. You excel at translating business requirements into optimal data structures and have expertise in data integration patterns across diverse systems. Your knowledge of data quality principles, master data management, and data security practices enables you to design robust data architectures that support both current needs and future evolution.

**Prompt:**
```
I need you to create a comprehensive Data Architecture Document for [project name].

Before diving into specific data structures, take a step back and consider: What fundamental principles guide effective data architecture? What architectural qualities ensure data integrity, performance, security, and maintainability? Outline these core principles and explain why they're crucial for a robust data foundation.

Now, working methodically through the data architecture design process, create a detailed Data Architecture Document with these sections:

1. Introduction:
   - Purpose: Define the document's audience and usage
   - Scope: Specify which data aspects are covered
   - References: Cite related documents (SRS, SAD)
   - Document Structure: Preview the document's organization
   - Explain your approach to comprehensive data architecture documentation

2. Data Architecture Overview:
   - Architectural Vision: Provide a high-level view of the data architecture
   - Guiding Principles: Define data architecture principles for this system
   - Data Strategic Goals: Explain how the architecture supports business objectives
   - Architecture Diagram: Present a conceptual view of major data components
   - Walk through your reasoning for the architectural approach
   - Explain how the architecture addresses key quality attributes

3. Business Data Context:
   - Business Data Domains: Identify major business domains and their data needs
   - Business Data Flows: Describe high-level data flows between business processes
   - Data Ownership: Define data stewardship and ownership
   - Data Lifecycle: Document the lifecycle of key business data
   - Explain your approach to aligning data architecture with business needs

4. Data Models:
   - Conceptual Data Model: Present entity-relationship diagrams at conceptual level
   - Logical Data Model: Detail entities, attributes, and relationships
   - Physical Data Model: Specify database schemas, tables, and fields
   - Data Dictionary: Define all data elements with descriptions and metadata
   - Walk through your data modeling methodology
   - Explain your decisions regarding normalization and denormalization

5. Data Storage Architecture:
   - Storage Technologies: Specify databases and storage systems
   - Database Architecture: Detail database instances, clustering, and replication
   - Storage Partitioning: Explain data partitioning or sharding approaches
   - Storage Sizing: Provide capacity planning estimates
   - Backup Strategy: Define data backup and recovery mechanisms
   - Explain your rationale for storage technology selections
   - Walk through your approach to balancing performance and resilience

6. Data Integration Architecture:
   - Integration Patterns: Define patterns for data exchange
   - ETL/ELT Processes: Detail data extraction, transformation, and loading
   - API Strategy: Specify APIs for data access
   - Event Streaming: Describe any event-based data integration
   - Integration Tools: Identify tools and technologies for data integration
   - Explain your reasoning for integration approach decisions

7. Data Quality and Governance:
   - Data Quality Requirements: Define quality standards for key data elements
   - Data Validation Rules: Specify validation mechanisms
   - Master Data Management: Explain approach to master data
   - Data Governance Framework: Detail governance processes and roles
   - Metadata Management: Define metadata strategy and repositories
   - Walk through your approach to ensuring data quality and governance

8. Data Security Architecture:
   - Data Classification: Categorize data by sensitivity
   - Access Control: Define authentication and authorization mechanisms
   - Data Protection: Specify encryption at rest and in transit
   - Privacy Controls: Detail measures for personally identifiable information
   - Audit and Compliance: Define logging and monitoring for data access
   - Explain your data security strategy and compliance considerations

9. Data Performance and Scalability:
   - Performance Requirements: Define performance SLAs for data operations
   - Caching Strategy: Detail any data caching mechanisms
   - Query Optimization: Explain approaches to optimize data retrieval
   - Scalability Approach: Define how the architecture scales with growth
   - Performance Monitoring: Specify metrics and monitoring for data performance
   - Walk through your strategy for meeting performance requirements

10. Data Migration and Archiving:
    - Data Migration Strategy: Define approach for initial data loading
    - Data Conversion Rules: Specify transformation rules for legacy data
    - Data Archiving: Detail long-term data retention and archiving
    - Data Purging: Define data disposal procedures
    - Explain your approach to data lifecycle management

11. Implementation Considerations:
    - Implementation Phases: Outline phased implementation approach
    - Data Architecture Dependencies: Identify dependencies on other components
    - Technical Risks: Highlight data-related risks and mitigations
    - Walk through your implementation planning process

After completing the initial draft, validate the document against these criteria:
- Does the data architecture support all functional requirements?
- Are data models complete and normalized appropriately?
- Is the data security approach adequate for data sensitivity?
- Does the storage strategy meet performance and scalability needs?
- Is the integration approach compatible with system interfaces?
- Are data quality and governance mechanisms sufficient?
- Is the overall architecture aligned with business objectives?
- Does the architecture allow for future growth and evolution?

Based on this validation, refine any sections requiring improvement. Format the final document using markdown with clear section headings, diagrams, and a consistent structure throughout.
```

**Structure requirements:**
- Introduction (purpose, scope, references, structure)
- Data Architecture Overview (vision, principles, goals, diagram)
- Business Data Context (domains, flows, ownership, lifecycle)
- Data Models (conceptual, logical, physical, dictionary)
- Data Storage Architecture (technologies, database, partitioning, sizing, backup)
- Data Integration Architecture (patterns, ETL/ELT, APIs, events, tools)
- Data Quality and Governance (requirements, validation, master data, governance, metadata)
- Data Security Architecture (classification, access, protection, privacy, audit)
- Data Performance and Scalability (requirements, caching, optimization, scaling, monitoring)
- Data Migration and Archiving (migration, conversion, archiving, purging)
- Implementation Considerations (phases, dependencies, risks)

**Validation criteria:**
- Support for all functional requirements
- Complete and appropriately normalized data models
- Adequate data security approach for data sensitivity
- Storage strategy meets performance and scalability needs
- Integration approach compatible with system interfaces
- Sufficient data quality and governance mechanisms
- Alignment with business objectives
- Allowance for future growth and evolution
- Clear entity relationship diagrams
- Comprehensive data dictionary