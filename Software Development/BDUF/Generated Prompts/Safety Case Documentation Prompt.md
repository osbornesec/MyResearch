# Safety Case Documentation Prompt

**Context:** Safety Case Documentation provides a structured argument supported by evidence that demonstrates the system meets its safety requirements and is acceptably safe to operate in its intended environment. This documentation is critical for safety-critical systems in regulated industries such as healthcare, aviation, automotive, defense, and industrial control. It evidences safety through systematic hazard identification, risk assessment, and mitigation strategies.

**Required Expertise Persona:** As a Chief Safety Engineer with 20+ years of experience developing safety cases for mission-critical systems, you possess extensive expertise in safety engineering methodologies, risk assessment frameworks, and regulatory standards. Your background includes creating safety documentation for systems where failures could result in loss of life, significant property damage, or environmental harm. You excel at systematic hazard analysis and developing comprehensive safety arguments supported by rigorous evidence. Your experience spans multiple safety-critical domains and regulatory frameworks (e.g., ISO 26262, IEC 61508, DO-178C). You understand how to structure clear, defensible safety cases that satisfy both technical reviewers and regulatory authorities. Your knowledge of safety analysis techniques, verification methods, and safety certification processes enables you to create thorough safety documentation that demonstrates due diligence in ensuring system safety.

**Prompt:**
```
I need you to create comprehensive Safety Case Documentation for [project name].

Before diving into specific safety evidence, take a step back and consider: What fundamental principles make an effective safety case? What qualities ensure that safety arguments are systematic, comprehensive, and convincing to regulators and stakeholders? Outline these core principles and explain why they're crucial for demonstrating system safety.

Now, working methodically through the safety case development process, create detailed Safety Case Documentation with these sections:

1. Introduction:
   - Purpose: Define the document's audience and usage
   - Scope: Specify what system aspects are covered
   - References: Cite related documents (System Requirements, Architecture, Standards)
   - Safety Case Approach: Explain the methodology used (e.g., Goal Structuring Notation)
   - Regulatory Context: Identify applicable regulations and standards
   - Document Structure: Preview the safety case organization
   - Explain your approach to comprehensive safety argumentation

2. System Definition:
   - System Description: Provide an overview of the system
   - System Boundaries: Define what is included and excluded
   - Operating Environment: Describe the context in which the system operates
   - Modes of Operation: Detail different operational states
   - Safety-Critical Functions: Identify functions with safety implications
   - Explain your approach to defining the safety scope
   - Walk through how system definition forms the foundation for safety analysis

3. Safety Requirements:
   - Safety Objectives: Define high-level safety goals
   - Functional Safety Requirements: Detail specific safety functions
   - Safety Integrity Requirements: Specify required levels of integrity
   - Regulatory Requirements: List compliance requirements
   - Safety Constraints: Identify operational limitations
   - Explain your requirements derivation methodology
   - Walk through how requirements address identified hazards

4. Hazard Identification:
   - Hazard Analysis Methodology: Explain analysis approaches used
   - Identified Hazards: List all identified hazards
   - Hazard Classification: Categorize hazards by type and source
   - Hazard Scenarios: Detail how hazards could manifest
   - Explain your hazard identification approach
   - Walk through your systematic hazard discovery process

5. Risk Assessment:
   - Risk Assessment Methodology: Define how risks are evaluated
   - Severity Categorization: Explain severity classification criteria
   - Probability Estimation: Detail frequency or likelihood assessment
   - Risk Matrix: Present the risk evaluation framework
   - Initial Risk Assessment: Show unmitigated risk levels
   - Explain your risk assessment reasoning
   - Walk through example risk calculations

6. Safety Argument:
   - Top-Level Claim: State the primary safety proposition
   - Argument Structure: Present the hierarchical safety case
   - Sub-Claims: Detail supporting arguments
   - Strategies: Explain approaches to demonstrating safety
   - Assumptions: Document safety case assumptions
   - Explain your safety argument approach
   - Walk through the logical structure of your safety case

7. Safety Evidence:
   - Evidence Types: Categorize different forms of evidence
   - Design Evidence: Detail safety features in system design
   - Analysis Evidence: Summarize analytical results
   - Testing Evidence: Present safety-focused test results
   - Operational Evidence: Include relevant operational data
   - Standards Compliance: Document adherence to safety standards
   - Explain your approach to comprehensive evidence collection
   - Walk through how evidence supports safety claims

8. Risk Mitigation:
   - Risk Control Hierarchy: Explain prioritization of control measures
   - Preventive Measures: Detail hazard prevention approaches
   - Detective Measures: Explain hazard detection methods
   - Protective Measures: Describe harm minimization strategies
   - Residual Risk Assessment: Evaluate risk after mitigation
   - Explain your mitigation selection rationale
   - Walk through how controls address specific hazards

9. Safety Verification and Validation:
   - V&V Strategy: Outline the verification and validation approach
   - Analysis Methods: Detail analytical verification techniques
   - Test Coverage: Explain safety testing coverage
   - Independence: Document assessment independence
   - Results Summary: Present key verification outcomes
   - Explain your V&V methodology and its rigor
   - Walk through how verification confirms safety requirements

10. Safety Management:
    - Safety Organization: Define safety management structure
    - Safety Processes: Detail safety-related procedures
    - Configuration Management: Explain safety artifact control
    - Change Management: Detail safety impact assessment
    - Explain your safety governance approach
    - Walk through safety management throughout the lifecycle

11. Operational Safety:
    - Safety Monitoring: Define ongoing safety monitoring
    - Incident Reporting: Detail incident handling procedures
    - Safety Training: Specify required user and operator training
    - Operational Constraints: Document usage limitations
    - Maintenance Requirements: Detail safety-critical maintenance
    - Explain your operational safety strategy
    - Walk through how safety is maintained during operation

12. Safety Assessment:
    - Assessment Methodology: Explain how safety is assessed
    - Assessment Results: Summarize safety evaluation findings
    - Assessment Independence: Document assessor independence
    - Recommendations: List safety improvement actions
    - Explain your assessment approach
    - Walk through the assessment process and conclusions

13. Residual Risk Acceptance:
    - Residual Risk Summary: Document remaining risks
    - Acceptance Criteria: Define thresholds for risk acceptance
    - Risk Acceptance: Present justification for accepting residual risk
    - Authority: Identify who accepts the residual risk
    - Explain your risk acceptance framework
    - Walk through the decision process for risk acceptance

14. Conclusion and Safety Statement:
    - Safety Claim Evaluation: Assess fulfillment of safety goals
    - Safety Statement: Provide formal declaration of safety
    - Limitations: Identify any caveats or restrictions
    - Explain the basis for your safety conclusion
    - Walk through how the safety case demonstrates acceptable safety

15. Appendices:
    - Detailed Hazard Logs: Comprehensive hazard records
    - Analysis Reports: Technical safety analyses
    - Test Results: Safety-critical test data
    - Compliance Matrices: Standards compliance evidence
    - Explain how supporting materials strengthen the safety case
    - Walk through how to navigate detailed supporting evidence

After completing the initial draft, validate the document against these criteria:
- Is the safety argument logically structured and complete?
- Are all identified hazards addressed with appropriate mitigations?
- Is there sufficient evidence to support all safety claims?
- Are safety requirements clearly traced to verification evidence?
- Does the safety case address all relevant regulatory requirements?
- Are residual risks clearly identified and appropriately justified?
- Is the relationship between hazards, controls, and evidence clear?
- Would the safety case withstand scrutiny by a safety regulator?

Based on this validation, refine any sections requiring improvement. Format the final document using markdown with clear section headings, tables for hazards and risks, diagrams for safety arguments, and a consistent structure throughout.
```

**Structure requirements:**
- Introduction (purpose, scope, references, approach, context, structure)
- System Definition (description, boundaries, environment, modes, functions)
- Safety Requirements (objectives, functional, integrity, regulatory, constraints)
- Hazard Identification (methodology, hazards, classification, scenarios)
- Risk Assessment (methodology, severity, probability, matrix, assessment)
- Safety Argument (claim, structure, sub-claims, strategies, assumptions)
- Safety Evidence (types, design, analysis, testing, operational, compliance)
- Risk Mitigation (hierarchy, preventive, detective, protective, residual)
- Safety Verification and Validation (strategy, methods, coverage, independence, results)
- Safety Management (organization, processes, configuration, change)
- Operational Safety (monitoring, reporting, training, constraints, maintenance)
- Safety Assessment (methodology, results, independence, recommendations)
- Residual Risk Acceptance (summary, criteria, acceptance, authority)
- Conclusion and Safety Statement (evaluation, statement, limitations)
- Appendices (hazard logs, reports, results, matrices)

**Validation criteria:**
- Logically structured and complete safety argument
- All identified hazards addressed with appropriate mitigations
- Sufficient evidence to support all safety claims
- Clear traceability from safety requirements to verification evidence
- Coverage of all relevant regulatory requirements
- Clear identification and appropriate justification of residual risks
- Clear relationship between hazards, controls, and evidence
- Ability to withstand scrutiny by a safety regulator
- Systematic approach to hazard identification and risk assessment
- Appropriate consideration of the entire system lifecycle