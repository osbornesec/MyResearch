# Development Plan Prompt

**Context:** The development plan outlines the implementation strategy, coding standards, tools, environments, and development schedule. It's based on design documents and guides the implementation process. This document bridges the gap between design and implementation.

**Required Expertise Persona:** As a Lead Developer with 15+ years of experience in software engineering management, you possess deep expertise in establishing implementation strategies, coding standards, and development workflows. You've successfully managed development teams across multiple technology stacks and understand how to translate architectural designs into practical implementation plans. You excel at establishing version control protocols, build pipelines, and quality gates. With experience in both waterfall and agile methodologies, you understand how to structure development activities to maintain alignment with BDUF principles while enabling efficient development practices.

**Prompt:**
```
I need you to create a comprehensive Development Plan for [project name].

Before diving into implementation details, take a step back and consider: What fundamental development principles should guide the implementation phase? What practices lead to efficient, high-quality software development? Outline these core principles and explain why they're crucial for successful implementation.

Now, working methodically through the development planning process, create a detailed Development Plan with these sections:

1. Introduction:
   - Purpose: Define the document's audience and usage
   - Scope: Specify which components and phases are covered
   - References: Cite related documents (SRS, SAD, TDD)
   - Document Structure: Preview the plan's organization

2. Development Strategy:
   - Overall approach (agile, iterative, incremental)
   - Development methodology and practices
   - Implementation priorities and phasing
   - Explain your reasoning for the selected development approach
   - Walk through your strategy for managing development complexity

3. Development Environment:
   - Hardware and software requirements
   - Development tools and IDEs
   - Source code management system
   - Build automation tools
   - Deployment tools
   - Explain your rationale for environment and tool selections

4. Coding Standards:
   - Naming conventions
   - Code organization and structure
   - Documentation standards
   - Error handling conventions
   - Logging standards
   - Security practices
   - Performance considerations
   - Explain your reasoning for each standard and its importance

5. Version Control Strategy:
   - Repository organization
   - Branching strategy
   - Commit guidelines
   - Code review process
   - Walk through your approach to version control and collaboration

6. Build and Release Process:
   - Build process and tools
   - Continuous integration approach
   - Release preparation and verification
   - Deployment procedures
   - Explain your reasoning for build and deployment approaches

7. Development Schedule:
   - Component development breakdown
   - Milestones and deliverables
   - Task dependencies
   - Resource allocation
   - Walk through your schedule planning logic

8. Development Risks and Mitigation:
   - Technical risks
   - Schedule risks
   - Resource risks
   - Dependency risks
   - Mitigation strategies
   - Explain your risk assessment methodology

9. Quality Assurance:
   - Unit testing approach
   - Code review procedures
   - Static analysis tools
   - Development-phase testing
   - Quality metrics
   - Explain your strategy for ensuring code quality

10. Documentation Requirements:
    - Code documentation standards
    - Technical documentation deliverables
    - Explain your approach to documentation during development

11. Team Organization and Communication:
    - Team structure and roles
    - Communication channels and frequency
    - Status reporting
    - Explain your reasoning for team organization

After completing the initial draft, validate the document against these criteria:
- Is the development approach appropriate for the project scope and constraints?
- Are coding standards clear and comprehensive?
- Is the development environment fully specified?
- Is the version control strategy well-defined?
- Is the build and release process automated and repeatable?
- Is the development schedule realistic and aligned with project milestones?
- Are development risks identified with appropriate mitigations?
- Are quality assurance practices sufficient?

Based on this validation, refine any sections requiring improvement. Format the final document using markdown with clear section headings and a consistent structure throughout.
```

**Structure requirements:**
- Introduction (purpose, scope, references, structure)
- Development Strategy (approach, methodology, priorities)
- Development Environment (hardware, software, tools)
- Coding Standards (naming, organization, documentation, error handling)
- Version Control Strategy (repository, branching, commits, reviews)
- Build and Release Process (build, integration, release, deployment)
- Development Schedule (breakdown, milestones, dependencies, resources)
- Development Risks and Mitigation (risks, strategies)
- Quality Assurance (testing, reviews, analysis, metrics)
- Documentation Requirements (standards, deliverables)
- Team Organization and Communication (structure, channels, reporting)

**Validation criteria:**
- Appropriate development approach for project scope and constraints
- Clear and comprehensive coding standards
- Fully specified development environment
- Well-defined version control strategy
- Automated and repeatable build and release process
- Realistic and aligned development schedule
- Identified development risks with appropriate mitigations
- Sufficient quality assurance practices
- Clarity in team structure and communication protocols
- Alignment with architectural and design documents