# Data Dictionary Prompt

**Context:** The Data Dictionary provides a comprehensive catalog of all data elements within the system, their definitions, attributes, relationships, and usage. It serves as the authoritative reference for data semantics, ensuring consistent understanding and usage of data across the system. This document is essential for maintaining data integrity, facilitating system integration, and supporting both development and maintenance activities.

**Required Expertise Persona:** As a Senior Data Analyst with 14+ years of experience in data modeling and management for enterprise systems, you possess extensive expertise in data dictionary development and maintenance. Your background includes creating comprehensive data dictionaries for complex systems across diverse domains. You excel at precisely defining data elements and their relationships while maintaining business context. Your experience spans both relational and non-relational data structures, and you understand how to document data across different storage paradigms. You've successfully developed data dictionaries that serve both technical and business stakeholders, balancing technical precision with accessibility. Your knowledge of data governance principles enables you to create data dictionaries that support both development and long-term data management needs.

**Prompt:**
```
I need you to create a comprehensive Data Dictionary for [project name].

Before diving into specific data elements, take a step back and consider: What fundamental principles make an effective data dictionary? What qualities ensure that data definitions are precise, consistent, and valuable for both technical and business stakeholders? Outline these core principles and explain why they're crucial for data integrity and understanding.

Now, working methodically through the data dictionary development process, create a detailed Data Dictionary with these sections:

1. Introduction:
   - Purpose: Define the document's audience and usage
   - Scope: Specify what data elements are included
   - References: Cite related documents (SRS, Data Architecture Document)
   - Document Structure: Preview the dictionary's organization
   - Terminology: Define key terms used in the dictionary
   - Explain your approach to comprehensive data documentation

2. Data Dictionary Overview:
   - Organization Approach: Explain how the dictionary is structured
   - Naming Conventions: Define standards for data element names
   - Classification Scheme: Detail how data is categorized
   - Versioning: Explain how the dictionary is versioned
   - Maintenance Process: Define how the dictionary is kept current
   - Walk through your reasoning for these structural decisions
   - Explain how the approach supports usability and completeness

3. Data Models Reference:
   - Conceptual Data Model: Summarize the high-level data domains
   - Logical Data Model: Reference the logical entity relationships
   - Physical Data Model: Point to database schema implementations
   - Model Relationships: Show how the models relate to each other
   - Explain your approach to connecting the dictionary to models
   - Walk through how to navigate between models and dictionary entries

4. Data Element Catalog:
   - For each data element:
     * Identifier: Unique ID for the element
     * Name: Business name of the element
     * Definition: Clear, precise definition of the element
     * Data Type: Technical type specification
     * Format/Length: Format constraints and size
     * Validation Rules: Business rules governing valid values
     * Source: Origin of the data
     * Usage: How and where the element is used
     * Security Classification: Sensitivity level of the data
     * Relationships: Related data elements or entities
     * Examples: Sample valid values
     * Notes: Additional information
   - Explain your approach to comprehensive element definition
   - Walk through how to interpret element entries

5. Data Domains:
   - For each value domain:
     * Domain Name: Identifier for the value set
     * Description: Explanation of the domain's purpose
     * Valid Values: List of allowed values with definitions
     * Default Value: Standard value if not specified
     * Format Mask: Pattern for representing values
     * Validation Rules: Rules governing the domain
   - Explain your approach to domain documentation
   - Walk through how domains are applied to data elements

6. Data Entities:
   - For each entity:
     * Entity Name: Identifier for the entity
     * Definition: Description of what the entity represents
     * Primary Key: Identifier for entity instances
     * Attributes: List of elements belonging to the entity
     * Relationships: Connections to other entities
     * Business Rules: Rules governing the entity
     * Usage Context: Where and how the entity is used
   - Explain your methodology for entity documentation
   - Walk through how entities organize related elements

7. Cross-Reference Tables:
   - Element to Entity Map: Which elements belong to which entities
   - System Usage: Where elements are used across the system
   - Lineage Reference: Data flow and transformation paths
   - Interface Mapping: How elements map to external interfaces
   - Explain your approach to cross-referencing
   - Walk through how to trace data across the system

8. Data Lifecycle Management:
   - Creation Rules: How data elements are created
   - Update Procedures: Rules for modifying data
   - Archival Guidelines: When and how data is archived
   - Retention Requirements: How long data is kept
   - Purging Rules: When and how data is deleted
   - Explain your data lifecycle documentation approach
   - Walk through how lifecycle rules apply to different data types

9. Data Quality Rules:
   - Quality Dimensions: Define relevant quality aspects
   - Quality Rules: Specify rules for ensuring quality
   - Measurement Methods: Define how quality is measured
   - Remediation Procedures: Detail how issues are addressed
   - Explain your approach to documenting quality requirements
   - Walk through how quality rules support data integrity

10. Data Ownership and Stewardship:
    - Data Owners: Identify business owners of data domains
    - Data Stewards: Specify operational data managers
    - Responsibilities: Define ownership and stewardship duties
    - Governance Process: Detail how data decisions are made
    - Explain your approach to documenting data responsibility
    - Walk through how governance supports data management

11. Appendices:
    - Abbreviations: List of abbreviations and acronyms used
    - Glossary: Business and technical terms with definitions
    - Change History: Record of dictionary updates
    - Request Process: How to request dictionary changes
    - Explain your approach to supporting information
    - Walk through how to use the appendices effectively

After completing the initial draft, validate the document against these criteria:
- Are data element definitions clear, precise, and unambiguous?
- Is there consistency in naming, formatting, and classification?
- Are all required attributes documented for each element?
- Does the dictionary connect elements to their business context?
- Are relationships between elements clearly defined?
- Is the dictionary organized for easy navigation and reference?
- Does the document serve both technical and business audiences?
- Are validation rules and constraints clearly specified?

Based on this validation, refine any sections requiring improvement. Format the final document using markdown with clear section headings, tables for data elements, and a consistent structure throughout.
```

**Structure requirements:**
- Introduction (purpose, scope, references, structure, terminology)
- Data Dictionary Overview (organization, naming, classification, versioning, maintenance)
- Data Models Reference (conceptual, logical, physical, relationships)
- Data Element Catalog (identifier, name, definition, type, format, validation, source, usage, classification, relationships, examples, notes)
- Data Domains (name, description, values, default, format, validation)
- Data Entities (name, definition, key, attributes, relationships, rules, context)
- Cross-Reference Tables (element-entity map, usage, lineage, interfaces)
- Data Lifecycle Management (creation, update, archival, retention, purging)
- Data Quality Rules (dimensions, rules, measurement, remediation)
- Data Ownership and Stewardship (owners, stewards, responsibilities, governance)
- Appendices (abbreviations, glossary, history, request process)

**Validation criteria:**
- Clear, precise, and unambiguous data element definitions
- Consistency in naming, formatting, and classification
- Documentation of all required attributes for each element
- Connection of elements to their business context
- Clear definition of relationships between elements
- Organization for easy navigation and reference
- Serving both technical and business audiences
- Clear specification of validation rules and constraints
- Comprehensive coverage of all system data elements
- Accessibility for various stakeholder groups