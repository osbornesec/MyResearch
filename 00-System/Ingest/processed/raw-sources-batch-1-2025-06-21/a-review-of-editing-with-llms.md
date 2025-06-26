# A review of editing with LLMs

---
**Source URL**: https://southbridge-research.notion.site/A-review-of-editing-with-LLMs-1755fec70db180149cc3fc4b1210823d
**Capture Date**: 2025-06-20
**Content Type**: Research Article / Technical Review
**Publisher**: Southbridge Research

---

Also relevant: Understanding Code Assistance in Zed

Large Language Models (LLMs) have revolutionized code and document generation, but using them for precise editing remains a significant challenge. While LLMs can generate impressive content from scratch, making targeted modifications to existing documents requires solving complex problems around edit representation, accurate placement, and verification. This challenge becomes particularly acute in professional environments where reliability and precision are paramount.

This document analyzes the current landscape of LLM-based editing systems, examining how different approaches tackle these challenges. Through a detailed review of systems like Tabby, Claude, Mandark, and others, we explore the fundamental tensions between precision and flexibility, automation and verification, and scalability and reliability. Our analysis aims to identify the most effective strategies for LLM-based editing and propose new directions for improvement, ultimately working toward more robust and efficient editing systems that can transform how we maintain and modify code and documents.

## Overview

1. Prior Art Review
2. General Review
3. Experimental Methodology
4. New Approaches to Test
5. Key Takeaways
6. Next Steps

## Prior Art

### 1. Tabby

**Key Strategies:**
- **Infilling**: Generates code to fill gaps within existing code.
- **Appending**: Generates code to continue from the cursor position.
- **Completion**: Predicts the rest of a line.

**Prompt Examples:**

Infilling:
```python
<PRE>def calculate_area(length, width):
    """Calculates the area of a rectangle."""
    <SUF>return <MID>
```

Appending:
```python
<PRE>def main():
    print("Hello, world!")
    <MID>
```

**Key Takeaways:**
- Uses structured prompts (<PRE>, <SUF>, <MID>) to guide the LLM.
- Fine-tuned models are preferred for better performance.
- No few-shot prompting; relies on relevant code snippets for context.

**Strengths:**
- Efficient for cursor-based edits.
- Handles multiple scenarios (infilling, appending, completion).

**Weaknesses:**
- Limited to cursor-based edits; not designed for large-scale document edits.

### 2. Claude Artifact Editing

**Key Strategies:**
- **Structured Edits**: Uses XML-like tags (<...>) to specify edits.
- **Update vs. Rewrite**: Distinguishes between targeted updates (update) and complete rewrites (rewrite).

**Prompt Example:**
```xml
<function_calls>
  <invoke name="artifacts">
    <parameter name="id">artifact1</parameter>
    <parameter name="type">text/plain</parameter>
    <parameter name="title">Example</parameter>
    <parameter name="command">update</parameter>
    <parameter name="content">New content</parameter>
  </invoke>
</function_calls>
```

**Key Takeaways:**
- Structured format ensures precise edits.
- Emphasizes exact string matching for updates to avoid errors.

**Strengths:**
- Precise and controlled edits.
- Suitable for both small and large-scale changes.

**Weaknesses:**
- Requires exact string matching, which can be brittle.

### 3. Mandark

**Key Strategies:**
- **JSON Output**: LLM generates edits in a structured JSON format.
- **Line Numbering**: Adds line numbers to provide context for edits.
- **Edit Verification**: Optional LLM verification of edits.

**Prompt Example:**
```json
{
  "explain": "Add a console log statement",
  "filename": "src/app.ts",
  "change": {
    "type": "addition",
    "atLine": 2
  },
  "code": "console.log('Starting the application');"
}
```

**Key Takeaways:**
- Uses JSON for structured, machine-readable edits.
- Line numbers ensure accurate placement of edits.
- Optional verification step improves accuracy.

**Strengths:**
- Structured and verifiable edits.
- Handles multiple files and complex changes.

**Weaknesses:**
- Requires user confirmation; not fully automated.

### 4. Claude-engineer

**Key Strategies:**
- **Search/Replace**: Uses exact string matching for targeted edits.
- **Partial vs. Full Edits**: Supports both partial (line-based) and full file edits.

**Prompt Example:**
```python
{
  "file_path": "example.py",
  "edit_type": "partial",
  "start_line": 10,
  "end_line": 12,
  "new_content": "print('Updated content')"
}
```

**Key Takeaways:**
- Simple and direct search/replace mechanism.
- Supports both partial and full file edits.

**Strengths:**
- Easy to implement and understand.
- Suitable for small, targeted changes.

**Weaknesses:**
- Limited to exact string matching; not robust for complex edits.

### 5. Void

**Key Strategies:**
- **Autocomplete**: Real-time code suggestions.
- **Ctrl+L (Sidebar Chat)**: Full file modifications using diff-based approach.
- **Ctrl+K (Quick Edit)**: Targeted edits using "fill in the middle" (FIM) approach.

**Prompt Example (Ctrl+K):**
```text
<PRE>const someOtherVariable = 5;</PRE>
<SUF>console.log(myVar);</SUF>
<MID>let myVar = 10;</MID>
```

**Key Takeaways:**
- Uses structured prompts (<PRE>, <SUF>, <MID>) for targeted edits.
- Computes diffs internally for precise application of changes.

**Strengths:**
- Handles both full file and targeted edits.
- Streaming responses for real-time updates.

**Weaknesses:**
- Requires diff computation, which adds complexity.

### 6. Aider

**Key Strategies:**
- **Search/Replace Blocks**: LLM identifies code blocks to replace.
- **Unified Diffs**: Uses simplified unified diff format for edits.
- **Whole File Edits**: LLM returns the entire updated file.

**Prompt Example (Diff Format):**
```python
mathweb/flask/app.py
<<<<<<< SEARCH
from flask import Flask
=======
import math
from flask import Flask
>>>>>>> REPLACE
```

**Key Takeaways:**
- Uses structured formats (search/replace, unified diffs) for precise edits.
- Supports both incremental and full file edits.

**Strengths:**
- Flexible and efficient for various edit scenarios.
- Handles complex changes with minimal errors.

**Weaknesses:**
- Requires careful prompt engineering for accurate results.

## Comparison of Approaches

| System | Edit Strategy | Prompt Structure | Strengths | Weaknesses |
|--------|--------------|------------------|-----------|------------|
| Tabby | Cursor-based (infill, append) | <PRE>, <SUF>, <MID> | Efficient for cursor-based edits | Limited to cursor-based edits |
| Claude Artifact | Structured XML-like edits | <...> | Precise and controlled edits | Requires exact string matching |
| Mandark | JSON-based edits | JSON format | Structured and verifiable edits | Requires user confirmation |
| Claude-engineer | Search/replace | JSON format | Simple and direct | Limited to exact string matching |
| Void | FIM, diff-based edits | <PRE>, <SUF>, <MID> | Handles full file and targeted edits | Requires diff computation |
| Aider | Search/replace, unified diffs | Search/replace blocks | Flexible and efficient for complex changes | Requires careful prompt engineering |

## Key Insights

1. **Structured Prompts**: Most systems use structured prompts (e.g., <PRE>, <SUF>, <MID>, JSON) to guide the LLM and ensure precise edits.
2. **Edit Types**: Systems vary in their approach to edits—some focus on cursor-based changes (Tabby), while others handle full file edits (Aider, Void).
3. **Verification**: Some systems (Mandark) include optional verification steps to improve accuracy.
4. **Efficiency**: Systems like Aider and Void use diff-based approaches to minimize the amount of text the LLM needs to process.
5. **Trade-offs**: Simpler systems (Claude-engineer) are easier to implement but less robust, while more complex systems (Aider, Void) handle complex edits but require careful prompt engineering.

## Questions Remaining

- How do these systems scale to large documents or codebases?
- What is the upper limit of the number of edits an LLM can make in a single pass?
- Can few-shot prompting improve edit performance without fine-tuning?
- How do these systems handle edits across multiple files simultaneously?
- What metrics should be used to evaluate the accuracy and efficiency of edit strategies?

## Key Problems

### Data Structure for Receiving Edits
- **Problem**: What is the most efficient and flexible data structure for representing edits? JSON, XML, or custom formats like search/replace blocks?
- **Example**: Mandark uses JSON, while Claude uses XML-like tags. Which is better for scalability and ease of parsing?

### Edit Placement
- **Problem**: How do we ensure edits are placed at the correct location in a file, especially in large documents or codebases?
- **Example**: Tabby uses cursor-based placement, while Aider uses line numbers and search/replace blocks. Which is more reliable?

### Edit Verification
- **Problem**: How do we verify that edits are correct and applied in the right location without human intervention?
- **Example**: Mandark uses an optional LLM verification step. Is this sufficient, or are there better methods?

### Adapting to LLMs
- **Problem**: How do we optimize edit strategies for LLMs, such as repeating existing lines or using few-shot examples?
- **Example**: Void uses FIM (Fill-In-the-Middle) prompts. Can this be extended to other edit types?

### Extracting Edit Information
- **Problem**: How do we reliably extract edit information from LLM responses, especially when the output format is complex?
- **Example**: Aider uses regex to parse search/replace blocks. Is there a more robust method?

### Handling Multiple Files
- **Problem**: How do we handle edits across multiple files simultaneously, and how are these files identified?
- **Example**: Mandark supports multi-file edits but requires user confirmation. Can this be automated?

## New Ideas

### Few-Shot Prompting
- Can we use few-shot examples to improve edit performance? Yes, by providing examples of correct edits in the prompt.
- Do we absolutely need to fine-tune? Few-shot prompting may reduce the need for fine-tuning.

### Edit Tokens
- Are there models with built-in edit tokens, and are they better at edit performance? Models like Codex have edit tokens, but their performance needs evaluation.

### Upper Limit of Edits
- How do we find the upper limit of the number of edits an LLM can make in a single pass? Test with increasingly complex edit tasks.

### Chain of Thought
- Should we allow for chain of thought before edits? Yes, this could improve the LLM's understanding of the task.

### Automated Verification
- Can we automate edit verification using unit tests or static analysis tools? Yes, this could reduce the need for human intervention.

### Hybrid Approaches
- Can we combine the strengths of different systems? For example, use Aider's search/replace blocks with Mandark's JSON structure.

## Experimental Methodology

### 1. Objectives

The primary objectives of the study are:
- **Evaluate Accuracy**: Measure how accurately different editing mechanisms apply changes to documents or codebases.
- **Assess Efficiency**: Determine the time and computational resources required for each editing mechanism.
- **Test Scalability**: Evaluate how well each mechanism handles large documents or codebases and multiple files.
- **Explore Adaptability**: Test how well each mechanism adapts to different types of content (e.g., code vs. text).
- **Identify Best Practices**: Provide actionable insights for designing and implementing LLM-based editing systems.

### 2. Experimental Setup

#### 2.1. Datasets
- **Codebases**: Use open-source repositories (e.g., Exercism Python exercises, GitHub repositories) to simulate real-world code editing tasks.
- **Documents**: Use large text documents (e.g., legal contracts, research papers) to test text editing capabilities.
- **Benchmarks**: Use existing benchmarks (e.g., Aider's Exercism exercises) to ensure comparability with prior work.

#### 2.2. Editing Mechanisms
Test the following editing mechanisms:
- Cursor-Based Edits (Tabby): Infilling, appending, and line completion.
- Structured Edits (Claude): XML-like tags for targeted updates and rewrites.
- JSON-Based Edits (Mandark): Structured JSON format for precise edits.
- Search/Replace Blocks (Aider): Search/replace blocks for incremental changes.
- Unified Diffs (Aider): Simplified unified diff format for full file edits.
- Fill-In-the-Middle (Void): FIM prompts for targeted edits.

#### 2.3. Metrics
- **Accuracy**:
  - Percentage of edits applied correctly.
  - Percentage of edits that pass verification (e.g., unit tests, static analysis).
- **Efficiency**:
  - Time taken to generate and apply edits.
  - Token usage per edit.
- **Scalability**:
  - Performance on large documents or codebases.
  - Ability to handle multiple files simultaneously.
- **User Experience**:
  - Ease of use (e.g., clarity of prompts, simplicity of edit formats).
  - Responsiveness (e.g., streaming updates, real-time feedback).

### 3. Experimental Design

#### 3.1. Phase 1: Baseline Evaluation
- **Objective**: Establish baseline performance for each editing mechanism.
- **Tasks**: Apply a set of predefined edits to codebases and documents. Measure accuracy, efficiency, and scalability.

#### 3.2. Phase 2: Few-Shot Prompting
- **Objective**: Evaluate the impact of few-shot prompting on edit performance.
- **Tasks**: Provide few-shot examples in the prompt for each editing mechanism. Measure improvements in accuracy and efficiency.

#### 3.3. Phase 3: Edit Token Evaluation
- **Objective**: Evaluate the performance of models with built-in edit tokens.
- **Tasks**: Test models like Codex that have edit tokens. Compare their performance with standard models.

#### 3.4. Phase 4: Automated Verification
- **Objective**: Test the effectiveness of automated verification methods.
- **Tasks**: Implement automated verification using unit tests or static analysis tools. Compare the accuracy of automated vs. manual verification.

#### 3.5. Phase 5: Hybrid Approaches
- **Objective**: Test hybrid approaches that combine the strengths of different mechanisms.
- **Tasks**: Combine search/replace blocks with JSON structure. Test performance on multi-file edit tasks.

### 4. Data Collection and Analysis

#### 4.1. Data Collection
- **Edit Logs**: Record all edits generated and applied by each mechanism.
- **Performance Metrics**: Collect data on accuracy, efficiency, and scalability.
- **User Feedback**: Gather feedback on ease of use and responsiveness.

#### 4.2. Data Analysis
- **Quantitative Analysis**: Use statistical methods to compare performance metrics across mechanisms.
- **Qualitative Analysis**: Analyze user feedback to identify usability issues and areas for improvement.
- **Benchmarking**: Compare results with existing benchmarks to ensure validity.

### 5. Expected Outcomes
- **Performance Rankings**: Identify the most accurate, efficient, and scalable editing mechanisms.
- **Best Practices**: Provide actionable insights for designing and implementing LLM-based editing systems.
- **Few-Shot Impact**: Determine the effectiveness of few-shot prompting in improving edit performance.
- **Edit Token Evaluation**: Evaluate the performance of models with built-in edit tokens.
- **Hybrid Approaches**: Identify the most effective hybrid approaches for complex edit tasks.

### 6. Limitations
- **Dataset Bias**: Results may vary depending on the datasets used.
- **Model Variability**: Performance may differ across different LLM models.
- **Scalability Challenges**: Testing on very large documents or codebases may require significant computational resources.