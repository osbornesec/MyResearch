# Code Review Guidelines Prompt

**Context:** Code Review Guidelines establish the standards, processes, and practices for reviewing code within the project. They ensure consistent evaluation of code quality, adherence to architectural design, and identification of potential issues before code is integrated into the main codebase. These guidelines support the quality assurance aspects of the development process and help maintain the integrity of the implemented system.

**Required Expertise Persona:** As a Principal Software Engineer with 18+ years of experience in code quality management across multiple programming languages and platforms, you possess extensive expertise in establishing effective code review processes. You've implemented review practices for teams of varying sizes and complexity levels. Your background includes setting quality standards for mission-critical systems where defects could have significant consequences. You excel at balancing thoroughness with efficiency in the review process and have experience integrating automated and manual review techniques. You understand the technical, cultural, and process aspects of effective code reviews and how they contribute to overall software quality and developer growth.

**Prompt:**
```
I need you to create comprehensive Code Review Guidelines for [project name].

Before diving into specific review procedures, take a step back and consider: What fundamental principles make code reviews effective and valuable? What qualities should a code review process have to balance thoroughness, efficiency, and team dynamics? Outline these core principles and explain why they're crucial for maintaining code quality.

Now, working methodically through the code review process definition, create detailed Code Review Guidelines with these sections:

1. Introduction:
   - Purpose: Define the goals and benefits of code reviews
   - Scope: Specify what code changes require review
   - References: Cite related documents (Development Plan, Coding Standards)
   - Document Structure: Preview the guidelines' organization
   - Explain your approach to effective code review practices

2. Code Review Principles:
   - Guiding Philosophy: Define the mindset for reviews
   - Expected Outcomes: Detail what reviews should accomplish
   - Cultural Aspects: Explain how reviews support learning and collaboration
   - Walk through your reasoning for these principles
   - Explain how these principles support both quality and team development

3. Code Review Process:
   - Pre-Review Checklist: Detail developer preparation before requesting review
   - Review Request Process: Define how to submit code for review
   - Reviewer Selection: Explain how reviewers are chosen
   - Review Timing: Specify expected response times and deadlines
   - Review Methods: Detail techniques (pair reviews, tool-assisted, etc.)
   - Walk through your approach to creating an efficient review workflow
   - Explain how the process balances thoroughness with development velocity

4. Review Scope and Focus Areas:
   - Functional Correctness: Guidelines for verifying requirements implementation
   - Code Quality: Standards for readability, maintainability, and style
   - Performance: Areas to examine for performance concerns
   - Security: Critical security aspects to verify
   - Testing: Guidelines for evaluating test coverage and quality
   - Documentation: Standards for code comments and documentation
   - Explain your reasoning for prioritizing these focus areas
   - Walk through your approach to comprehensive yet focused reviews

5. Review Criteria:
   - Architecture Compliance: Alignment with system architecture
   - Design Principles: Adherence to software design principles
   - Coding Standards: Conformance to project coding standards
   - Error Handling: Appropriate error management
   - Edge Cases: Consideration of boundary conditions
   - Reusability: Appropriate use of existing components
   - Explain your criteria selection and their importance
   - Provide examples of applying criteria in different situations

6. Reviewer Guidelines:
   - Review Approach: How to conduct effective reviews
   - Feedback Techniques: Guidelines for constructive feedback
   - Common Issues: What to look for consistently
   - Depth vs. Breadth: How to balance detail with coverage
   - Walk through your approach to thorough yet efficient reviewing
   - Explain techniques for identifying different categories of issues

7. Author Guidelines:
   - Preparing for Review: How to ensure code is review-ready
   - Responding to Feedback: Guidelines for addressing review comments
   - Self-Review Techniques: How to pre-review your own code
   - Explain your approach to making the author's role effective
   - Walk through strategies for receiving criticism constructively

8. Review Tools and Automation:
   - Static Analysis Tools: Automated tools to use before review
   - Code Review Platforms: Tools for managing the review process
   - Automation Integration: How automated checks integrate with manual review
   - Explain your reasoning for tool selection
   - Walk through your approach to balancing automation and human review

9. Handling Disagreements:
   - Discussion Process: How to handle different opinions
   - Escalation Path: Process for resolving persistent disagreements
   - Decision Documentation: How to record and communicate resolutions
   - Explain your approach to constructive conflict resolution
   - Walk through techniques for focusing disagreements on technical merits

10. Metrics and Continuous Improvement:
    - Review Metrics: Measurements to track review effectiveness
    - Process Evaluation: How to assess the review process regularly
    - Feedback Loops: Mechanisms for improving the review process
    - Explain your approach to data-driven process improvement
    - Walk through methods for identifying process bottlenecks

11. Special Case Reviews:
    - Critical Systems: Enhanced review for critical components
    - Cross-Team Reviews: Process for code that spans team boundaries
    - Third-Party Code: Guidelines for reviewing external code
    - Legacy Code: Approaches for reviewing changes to legacy systems
    - Explain your reasoning for special case handling
    - Walk through techniques for adapting the process to different scenarios

After completing the initial draft, validate the document against these criteria:
- Are the guidelines clear and actionable for both reviewers and authors?
- Does the process appropriately balance thoroughness with efficiency?
- Are the review criteria comprehensive and aligned with project quality goals?
- Does the approach foster a constructive and collaborative review culture?
- Are there clear mechanisms for resolving disagreements?
- Does the process include continuous improvement mechanisms?
- Are the guidelines adaptable to different types of code changes?

Based on this validation, refine any sections requiring improvement. Format the final document using markdown with clear section headings and a consistent structure throughout.
```

**Structure requirements:**
- Introduction (purpose, scope, references, structure)
- Code Review Principles (philosophy, outcomes, cultural aspects)
- Code Review Process (checklist, request, selection, timing, methods)
- Review Scope and Focus Areas (functionality, quality, performance, security, testing, documentation)
- Review Criteria (architecture, design, standards, error handling, edge cases, reusability)
- Reviewer Guidelines (approach, feedback, common issues, depth vs. breadth)
- Author Guidelines (preparation, response, self-review)
- Review Tools and Automation (static analysis, platforms, integration)
- Handling Disagreements (discussion, escalation, documentation)
- Metrics and Continuous Improvement (metrics, evaluation, feedback)
- Special Case Reviews (critical systems, cross-team, third-party, legacy)

**Validation criteria:**
- Clarity and actionability for reviewers and authors
- Appropriate balance of thoroughness and efficiency
- Comprehensive review criteria aligned with quality goals
- Fostering of constructive and collaborative review culture
- Clear mechanisms for resolving disagreements
- Inclusion of continuous improvement mechanisms
- Adaptability to different types of code changes
- Integration with development workflow
- Consideration of team dynamics and psychology
- Support for knowledge sharing and team growth