# IV. Advanced Reasoning & Iterative Refinement Frameworks

## A. Self-Consistency (Refinement through diversity and voting)

Self-Consistency is a powerful technique that improves the accuracy of AI-assisted research by generating multiple independent reasoning paths and selecting the most consistent answer.

### Core Concept

Self-Consistency extends Chain of Thought (CoT) prompting through these key steps:

1. **Multiple Generations**: Using the same CoT prompt multiple times with higher temperature settings to produce diverse reasoning paths
2. **Independent Analysis**: Each path represents a different approach to solving the problem
3. **Majority Voting**: Extracting final answers from each reasoning path and selecting the most common result

This approach leverages the power of diversity and consensus to arrive at more robust conclusions, making it particularly valuable for complex research problems where multiple valid analytical approaches exist.

### Implementation for Research

To implement Self-Consistency in research contexts:

1. **Create a Clear CoT Prompt**: Design a prompt that encourages step-by-step reasoning for your research question.
   ```
   Analyze the relationship between infrastructure investment and economic growth. Think step by step, considering theoretical mechanisms, empirical evidence, and contextual factors.
   ```

2. **Generate Multiple Responses**: Run this prompt 3-5+ times with higher temperature settings (0.7-0.9) to encourage diverse reasoning paths.

3. **Extract and Compare Conclusions**: Identify the key findings or claims from each response.

4. **Determine Consensus Views**: Look for conclusions that appear consistently across multiple reasoning paths.

5. **Synthesize Final Analysis**: Compile the most consistent conclusions and their supporting reasoning into a final synthesis.

### Research Applications

Self-Consistency is particularly valuable for:

1. **Addressing Ambiguous Questions**: When research topics have multiple potential interpretations or approaches
   ```
   What factors have contributed most to wealth inequality since 1980? [Generate 5 reasoning paths]
   ```

2. **Complex Causal Analysis**: Where multiple causal mechanisms might be at play
   ```
   Through what mechanisms might climate change affect regional conflict? [Generate 5 reasoning paths]
   ```

3. **Evaluating Controversial Claims**: Where evidence and interpretations are contested
   ```
   Evaluate the evidence for and against minimum wage increases affecting employment levels. [Generate 5 reasoning paths]
   ```

4. **Interdisciplinary Research**: Where different disciplinary perspectives yield complementary insights
   ```
   Analyze the ethical, legal, and social implications of facial recognition technology. [Generate 5 reasoning paths]
   ```

### Advanced Implementation Strategies

For sophisticated research applications, consider these enhancements:

1. **Weighted Voting**: Assign higher weight to reasoning paths that demonstrate greater logical coherence or evidential support.

2. **Explicit Diversity Prompting**: Request reasoning from different theoretical perspectives.
   ```
   Analyze how social media affects political polarization from these perspectives: 
   1) technological determinism, 2) political economy, 3) social psychology, 
   4) network theory, and 5) institutional politics.
   ```

3. **Confidence Assessment**: Have the AI rate its confidence in each reasoning path and prioritize high-confidence analyses.

4. **Cross-Examination**: Have one reasoning path critically evaluate another to identify strengths and weaknesses.

Self-Consistency represents "refinement through diversity and voting," effectively creating an internal panel of experts that approach the problem from different angles. This diversity helps overcome the limitations of any single analytical approach, providing more robust and reliable research insights.

## B. Tree of Thoughts (ToT) (Structured exploration and self-correction)

Tree of Thoughts (ToT) is an advanced reasoning framework that significantly expands upon Chain of Thought by enabling systematic exploration of multiple reasoning branches, evaluation of intermediate steps, and deliberate selection of the most promising paths.

### Core Concept

The ToT framework conceptualizes problem-solving as navigating a tree where:

1. **Nodes** represent "thoughts" or intermediate reasoning states
2. **Branches** represent possible next steps in the reasoning process
3. **Paths** represent complete lines of thinking from start to conclusion

Unlike linear reasoning approaches, ToT allows for:
- Exploring multiple possibilities at each step
- Evaluating the promise of different reasoning directions
- Backtracking when a path proves unfruitful
- Strategic selection of which paths to explore further

### Implementing ToT for Research Tasks

A general ToT implementation for research involves these key steps:

1. **Problem Decomposition**: Break the research question into manageable components.
   ```
   To analyze sustainable urban planning practices, let's explore three key dimensions: 
   environmental impact, economic feasibility, and social equity.
   ```

2. **Thought Generation**: For each component, generate multiple possible approaches or perspectives (typically 2-4).
   ```
   For environmental impact, let's consider these perspectives:
   1. Carbon emissions and climate resilience
   2. Biodiversity and ecosystem services
   3. Resource efficiency and circular economy
   ```

3. **Evaluation**: Assess the promise of each branch based on evidence, relevance, and analytical value.
   ```
   Evaluating these perspectives:
   - The carbon emissions perspective has strong quantitative measures and policy relevance
   - The biodiversity perspective has less urban planning literature but growing importance
   - The resource efficiency perspective links directly to practical implementation challenges
   ```

4. **Selection and Expansion**: Choose the most promising paths to explore further.
   ```
   Let's explore the carbon emissions and resource efficiency perspectives in depth,
   as they have the strongest evidence base and practical applications.
   ```

5. **Iteration**: Repeat the process of generating thoughts, evaluating, and selecting until reaching well-supported conclusions.

6. **Integration**: Synthesize insights from the most valuable paths into a coherent analysis.

### Research Applications

ToT is especially powerful for:

1. **Complex Policy Analysis**: Systematically exploring multiple policy options and their potential consequences
   ```
   What policy approaches might effectively address the affordable housing crisis? 
   Generate 3-4 policy directions, evaluate their strengths and weaknesses,
   and explore the most promising options in detail.
   ```

2. **Research Design**: Developing methodological approaches by exploring alternative designs
   ```
   What research designs could best investigate the relationship between social media use
   and adolescent well-being? Consider experimental, longitudinal, cross-sectional, and 
   mixed-methods approaches. Evaluate the merits of each and develop the most promising in detail.
   ```

3. **Theory Development**: Exploring competing theoretical explanations for phenomena
   ```
   What theoretical frameworks best explain the rise of populist movements globally?
   Generate 3-4 theoretical perspectives, evaluate their explanatory power, and develop
   the most compelling frameworks in detail.
   ```

4. **Interdisciplinary Integration**: Systematically exploring how insights from different disciplines can be combined
   ```
   How can insights from behavioral economics, psychology, and public health be integrated
   to develop more effective health promotion interventions? Generate potential integration
   frameworks, evaluate their coherence, and develop the most promising approaches.
   ```

### Advanced ToT Strategies for Research

1. **Breadth-First vs. Depth-First Exploration**: Choose between exploring many options briefly (breadth-first) or fewer options more deeply (depth-first) based on the research task.

2. **Explicit Evaluation Criteria**: Define specific criteria for evaluating the promise of different thought branches.
   ```
   Evaluate each approach using these criteria:
   - Empirical support (strong/moderate/weak)
   - Theoretical coherence (high/medium/low)
   - Practical applicability (immediate/long-term/limited)
   - Novelty of insight (high/medium/low)
   ```

3. **Adversarial Evaluation**: For each promising path, generate potential criticisms or counterarguments to test robustness.

4. **Hybrid Approaches**: Combine ToT with other techniques like Step-Back Prompting for more powerful analysis.
   ```
   First, outline the fundamental principles of monetary policy. Then, using Tree of Thoughts,
   explore and evaluate multiple potential impacts of quantitative tightening on emerging economies.
   ```

Tree of Thoughts embodies a sophisticated form of structured exploration and self-correction. By systematically generating options, evaluating their promise, and strategically deciding which paths to pursue, ToT enables more comprehensive and rigorous analysis than linear reasoning approaches. This makes it particularly valuable for complex research questions where the optimal approach isn't immediately clear and multiple valid perspectives exist.

## C. ReAct (Reason & Act) (The thought-action-observation refinement loop)

ReAct (Reasoning and Acting) is a powerful framework that combines explicit reasoning with concrete actions in an iterative loop, making it especially valuable for research tasks that benefit from accessing external information or tools.

### Core Concept

The ReAct framework operates through a continuous cycle of:

1. **Reason**: The AI generates thoughts about the current state of the problem, analyzes available information, and plans what to do next
2. **Act**: The AI (or user) performs a specific action based on this reasoning, such as searching for information, retrieving a document, or using a tool
3. **Observe**: The results of the action are observed and fed back into the process
4. **Iterate**: The cycle continues with further reasoning informed by new observations

This creates a dynamic research process that combines the strengths of analytical thinking with the power of accessing external information sources or tools.

### Implementation for Research Tasks

While original ReAct was developed for environments where the AI can directly take actions, the principles can be adapted for practical research applications through either:

1. **AI-Driven ReAct**: Using models with built-in tool use capabilities
2. **Human-AI Collaborative ReAct**: The AI suggests actions that the human researcher implements

A general implementation approach:

1. **Initial Reasoning**: Begin with an assessment of the research question and what information would be needed.
   ```
   To analyze recent advancements in quantum computing and their implications for
   cryptography, I first need to understand:
   1. The current state of quantum computing hardware
   2. The theoretical advances in quantum algorithms
   3. The specific cryptographic methods at risk
   4. The timeline projections for practical quantum supremacy in breaking encryption
   ```

2. **Action Planning**: Identify specific actions to gather this information.
   ```
   Actions needed:
   1. Search for recent peer-reviewed papers on quantum computing hardware capabilities
   2. Locate the latest reports on quantum algorithm development
   3. Identify which encryption standards are considered quantum-vulnerable
   4. Find expert projections on quantum computing timelines
   ```

3. **Action Execution**: Perform the actions (via direct tool use or human implementation).
   ```
   [Action 1] Searching for recent peer-reviewed papers on quantum computing hardware
   capabilities published in the last 2 years.
   ```

4. **Observation**: Record the results of the action.
   ```
   [Observation 1] Found three key developments:
   - IBM's Eagle processor reached 127 qubits in November 2021
   - Google demonstrated quantum error correction with Sycamore in 2022
   - QuEra achieved 256-qubit neutral atom quantum computer in 2023
   ```

5. **Reasoning with New Information**: Analyze the observations and determine next steps.
   ```
   The hardware advancements are progressing rapidly but still face significant
   challenges with error rates and coherence times. I should now look more specifically
   at error correction progress, as this appears to be the critical bottleneck.
   ```

6. **Iterative Cycle**: Continue this process, refining the research direction based on new information.

### Research Applications

ReAct is particularly valuable for:

1. **Literature Reviews**: Systematically exploring and synthesizing research literature
   ```
   [Reason] I need to understand the current state of research on microplastics in drinking water
   [Act] Search for systematic reviews and meta-analyses on this topic from the past 3 years
   [Observe] Found 4 systematic reviews focusing on detection methods, health impacts, removal techniques, and regulatory frameworks
   [Reason] The health impacts appear most contested with contradictory findings. I should investigate primary studies in this area...
   ```

2. **Data Analysis**: Guiding the process of gathering and analyzing data
   ```
   [Reason] To understand housing affordability trends, I need longitudinal data on housing prices and income levels
   [Act] Retrieve housing price indices and median income data from 2000-2023
   [Observe] Data shows housing prices growing at 4.7% annually while incomes grew at 2.3%
   [Reason] This divergence suggests decreasing affordability. I should now examine regional variations...
   ```

3. **Multi-Source Verification**: Cross-checking facts across multiple sources
   ```
   [Reason] The claim that "90% of ocean plastic comes from 10 rivers" needs verification
   [Act] Search for peer-reviewed research on sources of ocean plastic
   [Observe] Recent studies suggest a more complex picture, with estimates ranging from 56-90% from 10-20 rivers
   [Reason] There's significant uncertainty in these estimates. I should examine methodological differences...
   ```

4. **Hypothesis Development**: Refining hypotheses based on iterative information gathering
   ```
   [Reason] Initial hypothesis: Social media use negatively impacts adolescent mental health
   [Act] Search for longitudinal studies examining this relationship
   [Observe] Mixed findings, with some studies showing correlation but weak causal evidence
   [Reason] Need to refine hypothesis to focus on specific aspects of social media use...
   ```

### Advanced ReAct Strategies

1. **Explicit Research Plans**: Start with a structured research plan that outlines potential reasoning-action sequences.
   ```
   Research Plan for analyzing renewable energy investment trends:
   1. Gather data on global renewable investments (2010-2023)
   2. Analyze regional variations and technology-specific trends
   3. Identify key policy drivers in top-performing markets
   4. Examine financing mechanisms and their effectiveness
   5. Develop projections based on current trajectories
   ```

2. **Multi-Tool Integration**: Plan actions that leverage different tools for specific research needs.
   ```
   [Reason] To analyze climate policy effectiveness, I need both quantitative emissions
   data and qualitative policy implementation assessment
   [Act] Use statistical databases for emissions trends by country
   [Observe] Emissions data shows varied progress across countries
   [Reason] Now I need to understand policy mechanisms in successful cases
   [Act] Retrieve policy analyses for top-performing countries
   ```

3. **Critical Path Identification**: Identify the most crucial information needs early in the process.
   ```
   [Reason] The most critical unknown in assessing AI risk regulation is the technical
   feasibility of proposed safety measures
   [Act] Focus first on technical expert assessments of monitoring capabilities
   [Observe] Technical consensus indicates monitoring of some metrics is feasible but others remain challenging
   [Reason] This suggests a hybrid regulatory approach may be needed...
   ```

4. **Reflection Points**: Periodically step back to assess the overall research progress.
   ```
   [Reflection] After gathering data on five key variables affecting remote work productivity,
   I notice that organizational culture factors appear consistently significant across studies,
   while technology factors show more variability. Let me refocus my next actions to explore
   the cultural dimension more deeply...
   ```

ReAct represents a dynamic approach to research that combines analytical reasoning with strategic information gathering in an iterative loop. By explicitly separating reasoning, action, and observation steps, it creates a more transparent and directed research process that can adapt as new information emerges. This thinking-doing-observing cycle mirrors how expert human researchers work, making it a powerful framework for AI-assisted deep research.

## D. Automatic Prompt Engineering (APE) (Iterative refinement of prompts themselves)

Automatic Prompt Engineering (APE) applies the principle of iterative refinement to the prompts themselves, using AI to systematically discover, test, and optimize research prompts.

### Core Concept

APE involves using one AI system to generate and refine prompts that will be used with another AI system (or sometimes the same system) to perform research tasks. This meta-level approach treats prompt creation as an iterative optimization problem where:

1. Candidate prompts are generated
2. These prompts are evaluated based on their effectiveness in producing quality research outputs
3. The most effective prompts are refined or combined to create even better prompts

This process mirrors how human researchers might experiment with different ways of framing questions to elicit the most insightful responses.

### Implementation Approaches

While formal APE frameworks often require specialized setups, researchers can implement simplified versions:

1. **Manual APE**: Systematically testing and refining different prompt structures
   ```
   Version 1: "What are the impacts of remote work on employee productivity?"
   Version 2: "Analyze the relationship between remote work and productivity, considering both positive and negative effects."
   Version 3: "What does research evidence since 2020 indicate about how remote work affects different dimensions of employee productivity across various industries and job types?"
   ```

2. **AI-Assisted APE**: Asking an AI to generate and evaluate research prompts
   ```
   "Generate 5 different ways to prompt an AI system to research the environmental impacts of electric vehicles. 
   Include variations in specificity, structure, and framing. Then, evaluate which prompt is likely to produce 
   the most comprehensive, balanced, and evidence-based analysis."
   ```

3. **Iterative Refinement**: Starting with a basic prompt and progressively enhancing it
   ```
   Initial: "Analyze blockchain technology applications."
   
   Refinement 1: "Analyze current and emerging applications of blockchain technology beyond cryptocurrencies."
   
   Refinement 2: "Analyze the current state and future potential of blockchain applications in supply chain, 
   healthcare, and governance, focusing on implementation challenges and demonstrated benefits."
   
   Refinement 3: "Critically analyze the evidence for blockchain effectiveness in supply chain, healthcare, 
   and governance applications. For each sector: 1) Evaluate implemented use cases and their measured outcomes, 
   2) Identify technical and organizational adoption barriers, 3) Assess the value proposition compared to 
   alternative technologies, and 4) Project future developments based on current research trajectories."
   ```

### Research Applications

APE is especially valuable for:

1. **Complex Research Projects**: Finding optimal ways to decompose and investigate multi-faceted questions
   ```
   "Generate a series of interconnected research prompts that would comprehensively investigate 
   the social, economic, political, and technological dimensions of digital privacy."
   ```

2. **Literature Reviews**: Optimizing prompts for systematic coverage of research literature
   ```
   "Create a prompt that would guide an AI to comprehensively review the literature on climate 
   adaptation strategies for coastal cities, ensuring coverage of engineering approaches, 
   policy frameworks, community engagement, and economic factors."
   ```

3. **Methodological Research**: Developing prompts that elicit detailed analysis of research methods
   ```
   "Generate and evaluate alternative prompts for critiquing the methodology of a nutrition 
   intervention study. Which prompt structure would best elicit analysis of sampling strategy, 
   measurement validity, confounding variables, and statistical approach?"
   ```

4. **Cross-Disciplinary Integration**: Finding effective ways to prompt for integration across fields
   ```
   "Design a prompt that would effectively elicit integration of behavioral economics, 
   environmental psychology, and public policy insights for designing effective climate 
   change mitigation programs."
   ```

### Advanced APE Strategies

1. **Prompt Component Testing**: Systematically vary specific elements of prompts to identify effective patterns
   ```
   Base: "Analyze the factors affecting renewable energy adoption."
   
   Test variations of:
   - Specificity: General vs. detailed scope definition
   - Structure: Free-form vs. explicit section requirements
   - Perspective: Neutral vs. specified stakeholder viewpoints
   - Evidence expectations: With vs. without explicit citation requirements
   ```

2. **Context-Based Optimization**: Develop prompts optimized for specific research contexts
   ```
   "Generate specialized research prompts for analyzing healthcare access disparities that would be 
   optimal for use with: 1) A primarily medical research corpus, 2) A primarily public health policy 
   corpus, and 3) A primarily sociological research corpus."
   ```

3. **Prompt Libraries**: Build collections of effective prompts for different research tasks
   ```
   "Create a catalog of research prompt templates optimized for these common research tasks:
   1. Comparing competing theories
   2. Evaluating intervention effectiveness
   3. Synthesizing interdisciplinary literature
   4. Analyzing policy implementation challenges
   5. Identifying research gaps in emerging fields"
   ```

4. **Meta-Prompting**: Creating prompts that guide an AI in generating task-specific prompts
   ```
   "You are an expert prompt engineer specializing in academic research. Given a research topic, 
   generate a series of increasingly refined prompts that would elicit the most comprehensive, 
   nuanced, and evidence-based analysis from an AI research assistant. For the topic of 'algorithmic bias 
   in hiring systems,' create an optimal prompt development sequence."
   ```

APE represents a meta-level application of iterative refinement principles to the prompts themselves. By treating prompt engineering as an explicit optimization problem, researchers can discover more effective ways to guide AI systems toward producing high-quality research outputs. This approach acknowledges that the way questions are framed significantly impacts the quality of the answers, and systematically improves those framings through intentional experimentation and refinement.

## E. Specialized Application: Code Prompting with Iterative Refinement

Code-related research and development represent a specialized domain where iterative refinement techniques can dramatically improve AI assistance. Whether analyzing existing code, developing new algorithms, or translating between programming languages, strategic prompting approaches can significantly enhance outcomes.

### Writing Code with Iterative Refinement

When using AI to assist with code development in research contexts, a structured iterative approach yields the best results:

1. **Initial Specification Prompt**
   ```
   Write a Python function that implements the k-means clustering algorithm. The function should:
   - Take parameters for the number of clusters, data points, and convergence threshold
   - Return both the final cluster assignments and centroids
   - Include basic error handling for invalid inputs
   - Be optimized for numerical computation using NumPy
   ```

2. **Self-Critique and Revision Prompt**
   ```
   Please review the k-means implementation above for:
   1. Correctness: Does it correctly implement the algorithm?
   2. Edge cases: How does it handle empty clusters or non-convergence?
   3. Efficiency: Are there performance optimizations missing?
   4. Readability: Is the code well-documented and maintainable?

   Then, provide an improved version addressing any identified issues.
   ```

3. **Test Case Development**
   ```
   Generate comprehensive test cases for the k-means function that verify:
   1. Correct clustering on simple 2D datasets with clear separation
   2. Handling of edge cases (empty clusters, identical points)
   3. Convergence behavior with different thresholds
   4. Performance with larger datasets
   ```

4. **Documentation Refinement**
   ```
   Based on the implementation and testing, create comprehensive documentation for this function:
   1. Detailed docstring explaining the algorithm, parameters, and return values
   2. Inline comments explaining non-obvious implementation details
   3. Usage examples showing typical application scenarios
   4. Notes on limitations and potential extensions
   ```

### Explaining Code with Iterative Refinement

For research involving analysis of existing algorithms or codebases:

1. **Initial Comprehension**
   ```
   Explain what the following code does, focusing on the overall purpose and algorithmic approach:
   [Paste code here]
   ```

2. **Step-by-Step Analysis**
   ```
   Now, break down the code's execution step-by-step, tracking variables and explaining each major operation.
   ```

3. **Critical Evaluation**
   ```
   Evaluate this implementation for:
   1. Algorithmic efficiency (time and space complexity)
   2. Potential bugs or edge cases not handled
   3. Readability and maintainability concerns
   4. Alternative approaches that could improve performance
   ```

4. **Conceptual Connection**
   ```
   Connect this implementation to broader computer science or domain-specific concepts.
   How does it relate to established algorithms, design patterns, or theoretical frameworks?
   ```

### Translating Code with Iterative Refinement

For research requiring code conversion between languages or frameworks:

1. **High-Level Translation**
   ```
   Translate this Python TensorFlow neural network implementation to PyTorch, 
   maintaining the same architecture and functionality.
   [Original code]
   ```

2. **Idiomatic Refinement**
   ```
   Review the translated code and refine it to follow PyTorch best practices and idioms.
   Ensure it doesn't just mechanically translate the code but leverages PyTorch-specific 
   features for cleaner implementation.
   ```

3. **Equivalence Verification**
   ```
   Verify that the translated PyTorch implementation is functionally equivalent to the 
   original TensorFlow code. Identify any subtle differences in behavior that might affect 
   results, particularly regarding:
   1. Tensor operations and broadcasting
   2. Random number generation
   3. Default parameter initialization
   4. Optimization behavior
   ```

4. **Performance Optimization**
   ```
   Now optimize the PyTorch implementation for performance while maintaining correctness.
   Consider:
   1. Tensor memory layout optimization
   2. In-place operations where appropriate
   3. Parallelization opportunities
   4. GPU-specific optimizations
   ```

### Debugging and Reviewing Code with Iterative Refinement

For identifying and resolving issues in research code:

1. **Issue Identification**
   ```
   Analyze this code that's producing incorrect clustering results on high-dimensional data.
   Identify potential bugs or limitations that could cause this behavior.
   [Code with bug]
   ```

2. **Root Cause Analysis**
   ```
   For each identified potential issue, explain:
   1. The underlying problem in detail
   2. Why it would cause the observed behavior
   3. How to verify this is indeed the root cause
   ```

3. **Solution Development**
   ```
   Develop a fix for the most likely root cause. Explain:
   1. The specific changes needed
   2. Why these changes address the fundamental issue
   3. Any potential side effects of the fix
   ```

4. **Verification and Robustness**
   ```
   Suggest a testing approach to verify the fix works correctly, including:
   1. Test cases that would have caught this bug earlier
   2. Edge cases to verify the solution is robust
   3. Performance impact assessment of the changes
   ```

### Best Practices for Code-Related Research

1. **Embrace Multi-Step Refinement**: Treat code development as an iterative process with discrete stages.
   ```
   "First, outline the algorithm's core approach. Then implement a basic version. 
   Next, critique and refine that implementation. Finally, optimize for performance."
   ```

2. **Provide Examples for Key Operations**: Include examples for complex or domain-specific operations.
   ```
   "Implement a function to normalize protein sequence data where sequences have 
   variable lengths. For example, 'ACGT' and 'ACCGGGTT' should be processed to..."
   ```

3. **Request Alternate Implementations**: Generate multiple approaches to compare.
   ```
   "Generate three different implementations of this graph traversal algorithm: 
   1) Using recursion, 2) Using a queue-based approach, 3) Using a matrix representation.
   Then compare their efficiency and readability."
   ```

4. **Documentation as a Refinement Tool**: Use documentation requirements to improve code.
   ```
   "After implementing the statistical analysis function, create detailed documentation 
   that explains every parameter, edge case, and assumption. Then refine the function 
   based on any inconsistencies or limitations you identified during documentation."
   ```

The application of iterative refinement to code-related research tasks mirrors best practices in software engineering: progressive development, systematic testing, critical review, and continuous improvement. By explicitly structuring AI assistance into these iterative steps, researchers can obtain not just functional code but robust, efficient, and well-documented implementations suitable for research applications.