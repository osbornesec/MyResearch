# OCR with GOT and Sonnet

**Source**: https://southbridge-research.notion.site/
**Type**: Technical Implementation Case Study
**Date Captured**: 2025-06-20
**Content Type**: OCR + AI Pipeline Development

## Problem Statement

Complex OCR challenge that stumped multiple state-of-the-art systems:
- **DocumentIntelligence**: 85% accuracy
- **Sonnet 3.5**: ~90% accuracy
- **Other models**: Similar performance limitations

**Challenge**: OCR a complex table from PDF (CMSFileView.pdf, 1027.2KB) and convert to structured data

## Solution: GOT + Sonnet-3.5 Pipeline

### Architecture Overview
Two-stage approach achieving **98.79% accuracy**:
1. **Stage 1**: Use GOT (General OCR Theory) to extract raw text from image
2. **Stage 2**: Use Claude Sonnet 3.5 to structure and correct the OCR output

### Implementation Details

#### Stage 1: GOT OCR Processing
- Input: Rendered table image from PDF
- Output: Raw OCR text extraction
- Role: Initial text recognition from visual elements

#### Stage 2: Claude Sonnet Structuring
**Prompt Used**:
```
Here is a table image and the OCR output. Can you use the OCR output and put it into a proper markdown table without any mistakes?
```

**Process**:
- Input: Raw OCR text + original table image
- Processing: Error correction, structure recognition, format standardization
- Output: Properly formatted markdown table

## Results Analysis

### Performance Metrics
- **Total Fields**: 19 columns × 35 rows = 665 fields
- **Errors Found**: 8 problems identified
- **Accuracy**: 98.79% (657/665 correct)
- **Improvement**: Significant gain over previous best (~90%)

### Sample Output Table Structure
The pipeline successfully extracted a complex voting results table with:
- **35 polling stations** (rows)
- **19 data columns** including:
  - Sr. No.
  - Station Name  
  - Multiple candidate vote counts (Anurag Singh Thakur, Satpal Raizada, etc.)
  - Total valid votes
  - Rejected votes
  - NOTA votes
  - Total votes
  - No. of Tendered Votes

### Example Data Extraction
| Sr. No. | Station Name | Anurag Singh Thakur | Satpal Raizada | ... | Total votes |
|---------|--------------|---------------------|----------------|-----|-------------|
| 1 | 1-SAYAR | 393 | 213 | ... | 640 |
| 2 | 2-KAROT | 313 | 172 | ... | 515 |
| 3 | 3-RANIKOTLA | 640 | 281 | ... | 949 |

## Technical Insights

### Why This Approach Works

#### 1. Complementary Strengths
- **GOT**: Excellent at raw character/text recognition from images
- **Claude Sonnet**: Superior at understanding context, structure, and error correction

#### 2. Two-Stage Error Correction
- **Stage 1**: Handles visual perception challenges (font recognition, character boundaries)
- **Stage 2**: Handles logical/contextual errors (number alignment, structural consistency)

#### 3. Context-Aware Processing
- Claude uses both OCR output AND original image for validation
- Can identify and correct OCR mistakes by cross-referencing visual and textual information

### Limitations of Single-Model Approaches
- **Pure OCR**: Struggles with complex layouts, poor image quality, contextual errors
- **Pure LLM**: Cannot directly process visual information, relies on pre-processed text
- **Single-stage**: No opportunity for error correction or validation

## Implementation Considerations

### Technical Requirements
1. **GOT Integration**: Access to General OCR Theory model/API
2. **Claude Sonnet Access**: API access to Claude 3.5 Sonnet
3. **Image Processing**: PDF to image conversion capabilities
4. **Pipeline Orchestration**: System to manage two-stage workflow

### Performance Factors
- **Image Quality**: Higher resolution inputs likely improve Stage 1 performance
- **Table Complexity**: More complex layouts may require prompt engineering adjustments
- **Domain Specificity**: Different document types may need specialized prompts

### Cost Considerations
- **Two API Calls**: GOT processing + Claude processing per document
- **Token Usage**: OCR output + image tokens for Claude processing
- **Processing Time**: Sequential rather than parallel processing

## Next Steps and Research Directions

### Immediate Improvements
1. **Error Analysis**: Detailed analysis of the 8 remaining errors
2. **Data Cleaning**: Fix issues with cleaned reference data for better comparison
3. **Ablation Study**: Compare against alternative approaches:
   - Surya OCR
   - Document Intelligence
   - Raw LLM extraction
   - Different prompting strategies

### Research Questions
1. **Prompt Optimization**: Can specialized prompts improve the 98.79% accuracy?
2. **Model Combinations**: Would other LLM models in Stage 2 perform better?
3. **Multi-stage Refinement**: Would additional processing stages improve results?
4. **Domain Adaptation**: How does this approach perform on different document types?

### Potential Applications
- **Government Document Processing**: Election results, census data, administrative records
- **Financial Document Analysis**: Financial statements, audit reports, regulatory filings
- **Healthcare Records**: Medical charts, lab results, insurance forms
- **Legal Document Processing**: Court filings, contracts, regulatory documents

## Technical Architecture Patterns

### Pipeline Design Principles
1. **Modular Architecture**: Separate OCR and structuring components for flexibility
2. **Error Recovery**: Multi-stage approach allows error correction opportunities
3. **Context Preservation**: Maintain both visual and textual information throughout pipeline
4. **Quality Validation**: Built-in accuracy measurement and error identification

### Scalability Considerations
- **Batch Processing**: Pipeline can process multiple documents in parallel
- **Caching**: OCR results can be cached to avoid reprocessing
- **Rate Limiting**: API rate limits may constrain throughput
- **Cost Optimization**: Balance between accuracy and processing cost

## Innovation Aspects

### Novel Contributions
1. **Hybrid Visual-Textual Processing**: Combining specialized OCR with general language understanding
2. **Context-Aware Error Correction**: Using original image alongside OCR for validation
3. **High-Accuracy Complex Table Processing**: Achieving near-99% accuracy on challenging documents
4. **Practical Implementation**: Demonstrable improvement over existing state-of-the-art

### Broader Implications
- **Document AI Pipeline Design**: Template for multi-stage document processing
- **LLM Application Patterns**: Effective use of LLMs for structured data extraction
- **OCR Enhancement**: Method for significantly improving OCR accuracy through post-processing
- **Quality Assurance**: Systematic approach to measuring and improving extraction accuracy

## Lessons Learned

### Technical Insights
1. **Complementary AI Systems**: Different AI models excel at different aspects of complex tasks
2. **Multi-Stage Processing**: Sequential refinement can achieve better results than single-stage approaches
3. **Context Integration**: Combining multiple information sources (text + visual) improves accuracy
4. **Systematic Evaluation**: Rigorous accuracy measurement essential for comparative analysis

### Implementation Insights
1. **Prompt Engineering**: Simple, clear prompts can be highly effective
2. **Error Analysis**: Systematic identification of failure modes guides improvement
3. **Comparative Benchmarking**: Testing against multiple baselines provides clear value demonstration
4. **Iterative Refinement**: Planned next steps for continuous improvement

This case study demonstrates the potential for achieving significant accuracy improvements in complex document processing tasks through thoughtful combination of specialized AI systems and systematic evaluation methodologies.