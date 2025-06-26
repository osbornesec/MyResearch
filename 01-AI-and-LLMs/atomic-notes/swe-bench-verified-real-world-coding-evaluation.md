# SWE-bench Verified Real-World Coding Evaluation

```yaml
---
state: permanent
type: atomic-note
created: 2025-06-16
last-reviewed: 2025-06-16
connections: 3
review-frequency: weekly
tags: [benchmark-evaluation, real-world-coding, github-issues, software-engineering, model-assessment]
source: "Latest AI Coding Model Capabilities Research 2025"
---
```

## Core Concept

SWE-bench Verified evaluates AI coding models on real GitHub issues requiring full codebase navigation, debugging, and test suite compliance, with manually validated test cases achieving 2x better correlation with production performance compared to synthetic benchmarks.

## Content

### Revolutionary Benchmark Design
SWE-bench Verified addresses fundamental limitations in AI coding evaluation by using **actual GitHub issues** from popular repositories. Unlike HumanEval's isolated 164 problems, SWE-bench Verified contains 500+ manually validated issues requiring models to:

- Navigate complex, multi-file codebases (10k-100k+ lines)
- Understand project-specific architectures and conventions  
- Debug issues using incomplete error descriptions
- Ensure all existing tests continue passing after modifications
- Handle cross-module dependencies and integration challenges

### Performance Hierarchy (2025 Data)
**Top Performers:**
- **Claude 3.7 Sonnet**: 70.3% resolution rate (8.2 min average)
- **o4-mini (High)**: 68.1% resolution rate (6.5 min average)  
- **Claude 3.5 Sonnet**: 49.0% resolution rate (10.1 min average)
- **GPT-4o**: 33.2% resolution rate (12.7 min average)

### Verification vs Original SWE-bench
The "Verified" designation indicates manual validation of test case quality. **Key improvements:**

- **Test Reliability**: Eliminates false positives from flaky or incorrect tests
- **Issue Clarity**: Ensures problem descriptions contain sufficient context
- **Solution Uniqueness**: Verifies single correct approach exists
- **Performance Doubling**: GPT-4o jumped from 16% to 33.2% on verified subset

### Real-World Correlation Analysis
Enterprise deployment studies show SWE-bench Verified scores correlate 0.84 with production debugging success, compared to 0.31 for HumanEval. **Critical insights:**

- **Context Dependency**: Models scoring >60% handle legacy codebases effectively
- **Integration Challenges**: Performance drops 40% when issues span >5 files
- **Tool Orchestration**: Top performers execute ~25k code searches per task
- **Iterative Refinement**: Leading models use compiler feedback for solution improvement

### Technical Architecture Requirements
High-performing models demonstrate:

- **Agentic Scaffolding**: Iterative solution refinement using environmental feedback
- **Project-Aware Context**: Understanding of repository structure and conventions
- **Tool Integration**: Systematic code search, file analysis, and test execution
- **Error Recovery**: Robust handling of compilation and test failures

### Limitations and Future Evolution
**Current Gaps:**
- Test suite quality varies across repositories
- Issues may lack real-world complexity nuances
- Security and performance considerations underweighted
- Limited coverage of enterprise coding standards

**Upcoming Enhancements:**
- Multi-modal SWE-bench incorporating UI/UX requirements
- Security-focused issue variants
- Cross-language evaluation beyond Python-heavy current set

## Connections

- [[LiveCodeBench Competitive Programming Evaluation]] - Complementary algorithmic assessment
- [[Enterprise AI Coding Adoption Patterns]] - Real-world deployment correlation
- [[Agentic Coding Workflows]] - Technical approaches enabling high performance

## Evolution Notes

- **2025-06-16**: Initial extraction from latest AI coding research
- **Future**: Track performance evolution as new models emerge

## Review Schedule

- Next review: 2025-06-23
- Frequency: weekly

---

## Evergreen Processing Checklist

- [x] Title refined to function as "concept API"
- [x] Content is self-contained and atomic
- [x] At least 2 meaningful connections established
- [x] State updated to `permanent` when mature
- [x] Tags updated to reflect semantic relationships