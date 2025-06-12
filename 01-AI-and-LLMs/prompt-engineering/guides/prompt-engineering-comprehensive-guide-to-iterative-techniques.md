<img src="https://r2cdn.perplexity.ai/pplx-full-logo-primary-dark%402x.png" class="logo" width="120"/>

# Prompt Engineering: A Comprehensive Guide to Iterative Refinement for Large Language Models

Prompt engineering has emerged as a critical discipline in the effective utilization of Large Language Models (LLMs). This comprehensive report explores how the strategic construction of prompts can significantly enhance LLM outputs through iterative refinement-systematically testing, evaluating, and improving prompts to achieve increasingly effective results. By understanding LLMs as fundamentally prediction engines and applying structured prompting techniques, practitioners can dramatically improve the quality, reliability, and utility of AI-generated content.

## Foundational Concepts

### Understanding LLMs as Prediction Engines

At their core, Large Language Models function as sophisticated next-token prediction systems. As explained by researchers: "Large language models (LLMs) work by receiving an input or prompt, calculating what is most likely to come next based on patterns learned during training, and then producing an output or completion" [^2]. This prediction mechanism forms the foundation upon which all prompt engineering techniques are built.

Consider this simple example: When given the input "Mary had a little," an LLM will likely predict "lamb" as the next word based on patterns it has observed in its training data [^2]. This prediction capability extends to more complex scenarios, allowing LLMs to generate coherent and contextually appropriate text across a wide range of topics and formats.

### The Nature and Structure of Prompts

A prompt is natural language text that instructs an AI to perform a task. According to Wikipedia, a prompt can be "a query, a command, or a longer statement including context, instructions, and conversation history" [^1]. For text-based models, prompts may take various forms:

- Simple queries ("What is the capital of France?")
- Commands ("Write a poem about autumn")
- Contextual instructions with role assignment ("You are a helpful assistant specializing in marine biology...")
- Complex multi-part requests with examples and constraints

The structure and content of these prompts significantly influence how the LLM interprets the task and generates its response. Effective prompt engineering recognizes that while LLMs may appear to "understand" instructions, they are fundamentally responding to patterns in the input text and predicting appropriate continuations based on their training.

### The Iterative Refinement Paradigm

Successful prompt engineering rarely succeeds on the first attempt. Instead, it typically follows an iterative process:

1. Creating an initial prompt based on task requirements
2. Evaluating the model's output against desired criteria
3. Identifying gaps or weaknesses in the response
4. Refining the prompt to address these issues
5. Repeating until satisfactory results are achieved

This iterative refinement process represents the central methodology in prompt engineering practice and serves as a unifying theme across the various techniques we will examine.

## LLM Output Configuration

Beyond the prompt text itself, several configuration parameters influence how LLMs generate responses. Understanding these parameters is essential for effective prompt engineering, as they interact closely with prompting techniques to determine output quality.

### Temperature

Temperature controls the randomness or "creativity" of an LLM's output by modifying how the model samples from its predicted probability distribution:

- Low temperature (closer to 0): Produces more deterministic, focused outputs, strongly favoring high-probability tokens
- High temperature (closer to 1): Produces more diverse, creative outputs by giving more consideration to lower-probability tokens [^4]

From an iterative refinement perspective, adjusting temperature is often one of the first modifications made when initial prompting attempts yield unsatisfactory results. For tasks requiring factual accuracy or specific formatting, iterating toward lower temperature values often improves results. Conversely, for creative tasks, iterating toward higher temperatures may produce more interesting outputs.

### Top-K Sampling

Top-K sampling restricts the model to consider only the K most probable tokens when generating each new token in the sequence. This technique "helps to balance between diversity and coherence, making it suitable for applications where variation in generated text is desirable without deviating excessively from context" [^5].

The parameter K directly controls the diversity of generated text:

- Smaller K values lead to more focused, potentially repetitive outputs
- Larger K values produce more diverse, potentially less coherent outputs

In the iterative refinement process, adjusting K allows for fine-tuning the balance between creativity and coherence when initial outputs are either too predictable or too chaotic.

### Top-P (Nucleus) Sampling

Top-P sampling, also called nucleus sampling, dynamically adjusts the number of tokens considered by setting a probability threshold P. The model "restricts the sampling to the set of most probable tokens with cumulative probability more than p" [^6]. This approach offers an advantage over Top-K by adapting to the probability distribution's shape rather than using a fixed cutoff.

When iteratively refining prompts, Top-P can be particularly useful when the appropriate level of randomness varies throughout the generation process. It provides a more adaptive approach to controlling output diversity compared to fixed parameters like temperature and Top-K.

### Max Tokens

The max_tokens parameter "specifies the maximum number of tokens that can be generated in the chat completion" [^7]. This parameter is critical for controlling the length of responses and ensuring they fit within the model's context window constraints.

From an iterative refinement perspective, adjusting max_tokens often becomes necessary when:

- Initial responses are too verbose or too brief
- Complex prompting techniques like Chain-of-Thought require additional space for reasoning steps
- Multiple iterations or examples must fit within a single context window

Understanding the interplay between these configuration parameters and prompt design is essential for effective prompt engineering. Often, the optimal solution involves iterating not just the prompt text but also these configuration settings to achieve the desired balance of coherence, creativity, and constraint adherence.

## Core Prompting Techniques

The foundation of prompt engineering consists of several core techniques that vary in complexity and the amount of guidance provided to the model. Each technique offers different advantages and can be selected based on the specific task requirements.

### Zero-Shot Prompting

Zero-shot prompting involves asking the model to perform a task without providing any examples. This technique relies on the model's pre-trained knowledge and ability to understand instructions [^8].

Zero-shot prompting means that the prompt used to interact with the model won't contain examples or demonstrations. The zero-shot prompt directly instructs the model to perform a task without any additional examples to steer it [^8].

Example:

```
Classify the text into neutral, negative or positive.
Text: I think the vacation is okay.
Sentiment:
```

Expected output: `Neutral`

From an iterative refinement perspective, zero-shot prompting often serves as the initial baseline approach. If the results are satisfactory, no further iteration may be needed. However, if the model struggles with the task, the prompt engineer would typically iterate by:

1. Clarifying or expanding the instructions
2. Adding examples (moving to one-shot or few-shot prompting)
3. Incorporating more context about the task

Zero-shot prompting works best for simple, common tasks that the model has likely encountered during training. For more complex or specialized tasks, iteration toward more guided approaches is often necessary.

### One-Shot Prompting

One-shot prompting refers to "the method where a model is provided with a single example or prompt to perform a task" [^9]. This technique helps bridge the gap between abstract instructions and concrete execution by showing the model exactly what kind of output is expected.

Example:

```
Summarize this French text into English using the {Title}, {Key Points}, {Summary} API template.

Example:
French text: "La réunion s'est bien passée. Nous avons discuté des nouveaux projets et établi un calendrier."
Output:
{Title} Team Meeting Update
{Key Points} Meeting went well, Discussed new projects, Established timeline
{Summary} The team meeting was successful, with discussions focused on new projects and the creation of a schedule for upcoming work.

French text: "Les résultats financiers du premier trimestre montrent une augmentation de 15% des revenus par rapport à l'année précédente."
Output:
```

In the iterative refinement process, one-shot prompting represents a step up in guidance from zero-shot. The quality and relevance of the chosen example significantly impact results, making example selection itself an iterative process. Practitioners often refine the example to better match the target task or to emphasize particular aspects of the desired output.

### Few-Shot Prompting

Few-shot prompting extends the one-shot approach by providing multiple examples. This technique is "particularly useful in scenarios where extensive training data is unavailable" [^10]. It helps the model understand patterns and nuances in the desired output that might be difficult to explain through instructions alone.

Few-shot prompting exemplifies the iterative refinement approach, as each example can be seen as an iteration that helps the model better understand the task. As explained in research: "This method allows models to perform tasks with limited examples, distinguishing it from other prompting methods like zero-shot and one-shot prompting" [^10].

The prompt engineer often iteratively selects, refines, and reorganizes examples to optimize performance. This process may involve:

1. Starting with a diverse set of examples
2. Evaluating model performance
3. Identifying patterns in successful and unsuccessful cases
4. Refining the example set to emphasize successful patterns
5. Reorganizing examples from simple to complex or based on similarity to the target task

Few-shot prompting is particularly valuable for tasks requiring specific formats, specialized knowledge, or nuanced understanding. However, it consumes more of the available context window than simpler approaches, creating a trade-off between guidance and space for complex responses.

### Role/System/Context Prompting

This technique establishes a framework for the model's responses by:

- Assigning the model a specific role (e.g., "You are an expert physicist")
- Providing system-level instructions about how the model should behave
- Establishing relevant context for the interaction

As described by IBM, "A system prompt is a set of ground rules for the foundation model to follow as it drafts its response. For example, 'You are a helpful assistant that follows instructions.'" [^3]

Role and context prompting often involves multiple iterations to find the optimal framing. The prompt engineer might:

1. Start with a general role definition
2. Evaluate the resulting tone and approach
3. Refine the role with more specific expertise or characteristics
4. Add contextual elements to further guide the model's perspective
5. Adjust the balance between role guidance and task-specific instructions

This technique is particularly effective for controlling the tone, style, and perspective of responses, making it valuable for customer-facing applications or specialized domain tasks.

## Advanced Reasoning \& Refinement Techniques

As LLMs have evolved, more sophisticated prompting techniques have emerged to address complex reasoning tasks. These advanced techniques often build upon the core approaches while introducing structured reasoning processes.

### Chain of Thought (CoT)

Chain-of-Thought (CoT) prompting enables complex reasoning capabilities through intermediate reasoning steps [^11]. This technique significantly improves performance on complex reasoning tasks by making the model's thought process explicit and traceable.

Example:

```
Question: If John has 5 apples and gives 2 to Mary, then buys 3 more and gives half of all his apples to Tom, how many apples does John have left?

Let me think through this step by step:
1. John starts with 5 apples.
2. John gives 2 apples to Mary, so now John has 5 - 2 = 3 apples.
3. John buys 3 more apples, so now John has 3 + 3 = 6 apples.
4. John gives half of his apples to Tom, which is 6 ÷ 2 = 3 apples.
5. After giving apples to Tom, John has 6 - 3 = 3 apples left.

Therefore, John has 3 apples left.
```

CoT inherently embodies iterative refinement as it breaks down complex reasoning into discrete steps, each building on the previous one. The model iteratively refines its understanding of the problem as it works through the chain of reasoning.

When implementing CoT, prompt engineers often iterate on:

- The level of detail in the reasoning steps
- The structure and organization of the reasoning chain
- The explicit instructions for showing work
- The examples provided to demonstrate effective reasoning


### Self-Consistency

Self-Consistency Prompting is "a prompt engineering method that enhances the reasoning capabilities of Large Language Models (LLMs) by generating multiple outputs and selecting the most consistent answer among them" [^12]. This technique recognizes that a single reasoning attempt may contain errors or inconsistencies.

Key steps in the Self-Consistency approach:

1. Initiating with Chain-of-Thought prompting to demonstrate reasoning examples
2. Sampling diverse paths by generating a variety of outputs
3. Choosing the most popular answer from the final set of outputs [^12]

This approach epitomizes iterative refinement by generating multiple candidate solutions and evaluating them against each other to identify the most reliable one. It's essentially an ensemble learning approach applied to prompt engineering.

Self-consistency prompting is especially effective for:

- "Mathematical problem solving": By generating multiple outputs for a math problem
- "Commonsense reasoning": For tasks like answering commonsense questions
- "Symbolic Reasoning": Tasks similar to solving puzzles [^12]


### Step-Back Prompting

Step-Back prompting instructs the model to first extract high-level concepts and principles from given details, then use those concepts to guide its reasoning toward the solution [^14]. This technique helps the model avoid getting lost in irrelevant details.

The process involves two key steps:

1. "Prompting for Abstraction" - The model extracts high-level concepts and principles
2. "Utilizing Abstracted Knowledge" - The model uses these abstractions to guide reasoning [^14]

For example, when faced with a physics problem about pressure, temperature, and volume relationships, a Step-Back prompt would first ask the model to identify the relevant physical law (the Ideal Gas Law) before attempting to solve the specific problem [^14].

From an iterative refinement perspective, Step-Back prompting represents a meta-level iteration - stepping back from the immediate problem to consider the broader principles before diving back into the specifics. This approach often improves performance on knowledge-intensive tasks by ensuring the model grounds its reasoning in relevant principles.

### Tree of Thoughts (ToT)

Tree of Thoughts extends Chain of Thought by enabling the model to explore multiple reasoning paths simultaneously and evaluate them at intermediate steps [^13]. This technique allows for backtracking and exploration of alternative approaches when a particular path seems unpromising.

As explained in the research: "Tree of Thoughts (ToT) prompting enables models to explore and evaluate multiple reasoning paths, enhancing decision-making and solution accuracy. ToT mimics human problem-solving by using a tree structure where nodes represent partial solutions, allowing the model to backtrack when necessary." [^13]

The approach involves two key components:

1. "Propose prompts generate possible solutions"
2. "Value prompts evaluate and guide the model toward the best path"

ToT embodies iterative refinement at its core, as it explicitly structures the problem-solving process as an iterative exploration of a tree of possible reasoning paths. It has shown particular strength in "tasks like math reasoning, creative writing, and puzzles, with higher success rates and more coherent results" [^13].

### ReAct

ReAct is "a general paradigm that combines reasoning and acting with LLMs" [^15]. This framework allows models to generate both verbal reasoning traces and task-specific actions in an interleaved manner.

As described in research: "Generating reasoning traces allow the model to induce, track, and update action plans, and even handle exceptions. The action step allows to interface with and gather information from external sources such as knowledge bases or environments." [^15]

ReAct can allow LLMs to interact with external tools to retrieve additional information that leads to more reliable and factual responses. Results show that ReAct can outperform several state-of-the-art baselines on language and decision-making tasks [^15].

In terms of iterative refinement, ReAct represents a dynamic form of iteration where the model can decide to gather more information based on intermediate reasoning steps, refining its approach as new information becomes available. This creates a feedback loop between reasoning and information gathering that mirrors human problem-solving approaches.

## Specialized Techniques

As prompt engineering has matured, specialized techniques have emerged for particular domains and meta-level optimization of the prompting process itself.

### Automatic Prompt Engineering (APE)

Automatic Prompt Engineering (APE) is "a major tool for transforming prompt creation" [^16] that uses AI systems to generate and optimize prompts automatically. This meta-level approach can discover prompts that are more effective than those created by human engineers.

As described in research: "APE looks for potential solutions by using LLMs to generate instructions and refines the interactions between user commands and the AI systems. APE assures the streamlining of task execution process alongside discovering more effective prompts that are better than creatively designed human prompts." [^16]

Key frameworks for APE include:

- "Automatic Prompt Engineer or APE framework" - Uses one LLM to generate prompts that are tested with another LLM
- "OPRO" - Introduced by Google DeepMind researchers, allows "different LLMs to try different prompts before they find the suitable choice" [^16]

APE represents an automated form of iterative refinement, where the system generates, evaluates, and refines prompts without human intervention. This automation of the refinement loop can accelerate prompt optimization and potentially discover novel prompting strategies that human engineers might not consider.

### Code-Specific Techniques

While the search results didn't provide explicit information about code-specific prompting techniques, we can apply general principles of prompt engineering to the domain of code generation, explanation, and debugging.

Effective code-related prompts often benefit from:

- Clear specification of programming language and environment
- Examples of desired code structure and style
- Context about the larger system or application
- Specific requirements for error handling, performance, or compatibility

The iterative refinement approach is particularly valuable in code-related prompting, as generated code can be systematically tested and evaluated against functional requirements, leading to prompt refinements that address specific shortcomings in the initial outputs.

## Best Practices for Effective Prompting

Through examination of the various prompting techniques and their applications, several best practices emerge for effective prompt engineering.

### Clarity and Specificity

Clear, specific instructions typically yield better results than vague or ambiguous ones. As IBM advises: "Including background or contextual information in your prompt can nudge the model output in the right direction" [^3]. Be explicit about:

- The exact task to be performed
- The desired format and style of the output
- Any constraints or requirements
- The intended audience or purpose

In the iterative refinement process, vague instructions are often the first element to be improved, with each iteration adding more specific guidance.

### Strategic Use of Examples

Providing examples of desired outputs can significantly improve performance, especially for complex or unusual tasks. When including examples:

- Select examples that closely match the target task
- Provide diverse examples that cover different aspects of the task
- Consider the ordering of examples (simpler to more complex)
- Ensure examples demonstrate the exact format and style desired

The selection and refinement of examples is itself an iterative process, with examples being adjusted based on how well the model captures the intended patterns.

### Structured Instructions

Breaking down complex requests into clear, sequential steps often improves performance. IBM recommends: "An instruction is an imperative statement that tells the model what to do. For example, if you want the model to list ideas for a dog-walking business, your instruction could be: 'List ideas for starting a dog-walking business:'" [^3]

For complex tasks, consider:

- Numbering steps or using bullet points
- Separating different aspects of the task into distinct sections
- Using clear headers or markers to delineate different parts of the prompt
- Providing explicit transition statements between sections

Structured instructions support the iterative refinement process by making it easier to identify and modify specific components of the prompt without needing to rewrite the entire thing.

### Consistent Documentation

Maintaining documentation of effective prompts and their variations builds an organizational knowledge base of prompting strategies. Documentation should include:

- The full prompt text
- Configuration parameters (temperature, etc.)
- The specific use case or context
- Performance notes and iteration history
- Known limitations or edge cases

This documentation supports systematic iterative refinement by preserving knowledge about what has been tried and what has worked, preventing repetitive experimentation and enabling cumulative improvements.

## Tools and Frameworks

While the search results provided limited information about specific tools and frameworks for prompt engineering, several resources and approaches are worth noting.

### Prompt Libraries and Repositories

As mentioned in the Wikipedia article, "A repository for prompts reported that over 2,000 public prompts for around 170 datasets were available in February 2022" [^1]. These collections provide starting points and inspiration for prompt engineers, supporting the iterative refinement process by offering pre-tested alternatives.

### Evaluation Platforms

Tools for systematic evaluation of prompt performance help quantify improvements across iterations and compare different approaches. These platforms may support:

- Side-by-side comparison of outputs from different prompts
- Automated metrics for specific aspects of performance
- Human evaluation workflows for subjective quality assessment


### Integration Frameworks

As prompt engineering becomes more sophisticated, frameworks are emerging to support integration of prompting techniques with larger applications and workflows. These frameworks often provide:

- Standardized interfaces for prompt management
- Support for prompt versioning and iteration
- Integration with model-specific APIs and parameters
- Mechanisms for logging and analyzing performance

The development of these tools reflects the maturation of prompt engineering as a discipline and supports more systematic approaches to iterative refinement.

## Challenges and Limitations

Despite significant advances in prompt engineering techniques, several challenges and limitations remain.

### Prompt Sensitivity

Small changes in wording or structure can sometimes lead to significantly different outputs, making prompts sometimes brittle or unpredictable. This sensitivity complicates the iterative refinement process, as improvements in one aspect may unexpectedly affect other aspects of performance.

### Model Limitations

No prompt, no matter how well-crafted, can overcome fundamental limitations in the model's knowledge or capabilities. These limitations include:

- Knowledge cutoffs (information that postdates the model's training data)
- Reasoning capabilities (especially for complex mathematical or logical problems)
- Specialized domain knowledge
- Multilingual capabilities

Effective prompt engineers must recognize these boundaries and set appropriate expectations for what can be achieved through prompting alone.

### Evaluation Difficulty

It can be challenging to objectively evaluate and compare the quality of different prompting strategies, especially for open-ended tasks. This difficulty can slow the iterative refinement process by making it harder to determine which changes represent genuine improvements.

### Resource Implications

Some advanced prompting techniques, such as Self-Consistency and Tree of Thoughts, require significantly more computational resources than simpler approaches. As noted in the research on Tree of Thoughts: "Limitations include increased resource consumption and inefficiency for simpler tasks that don't require extensive reasoning" [^13]. These resource considerations may constrain the practical application of some iterative refinement approaches.

## Future Trends

The field of prompt engineering continues to evolve rapidly, with several emerging trends pointing to future directions.

### Increased Automation

Automatic Prompt Engineering techniques are likely to become more sophisticated and widely used. As described in the research: "APE can help in automatic generation of synthetic data thereby enabling easier and faster training of AI models on bigger datasets" [^16]. This trend represents a meta-level application of iterative refinement, where the refinement process itself is increasingly automated.

### Specialized Prompt Libraries

Development of standardized, task-specific prompt libraries that have been optimized for particular use cases will likely accelerate. These libraries will encapsulate proven prompting patterns and best practices, supporting more efficient application of existing knowledge rather than requiring each organization to iterate from scratch.

### Integration with Other Techniques

Prompt engineering will increasingly be combined with other AI enhancement methods such as:

- Retrieval-augmented generation for improved factuality
- Fine-tuning to enhance performance on specific tasks
- Tool use and function calling for expanded capabilities

These combinations will support more powerful hybrid approaches that leverage the strengths of prompting while addressing some of its limitations.

### Prompt Security and Safety

As LLMs become more widely deployed, there will be growing focus on ensuring prompts don't inadvertently lead to harmful, biased, or misleading outputs. This emphasis on safety will likely lead to new prompting techniques specifically designed to enhance model reliability and reduce risks.

## Conclusion

Prompt engineering has rapidly evolved from a simple art of instruction-giving to a sophisticated discipline combining elements of natural language processing, human-computer interaction, and experimental design. Throughout this evolution, the iterative refinement approach-systematically testing, evaluating, and improving prompts-has emerged as a central principle for effective prompt engineering practice.

The diverse techniques explored in this report, from basic zero-shot prompting to advanced methods like Tree of Thoughts and ReAct, represent different points on a spectrum of guidance and structure. Each technique offers distinct advantages for particular tasks and contexts, but all benefit from the application of iterative refinement principles.

As LLMs continue to advance in capabilities and deployment, prompt engineering will remain a crucial skill for harnessing their potential effectively and responsibly. The field will likely see increasing automation and standardization, but the core process of iterative refinement-whether conducted by humans or automated systems-will continue to drive improvements in prompt effectiveness.

Organizations and individuals investing in prompt engineering capabilities should emphasize not just specific techniques but also the development of systematic processes for iteration and improvement. By applying the iterative refinement mindset consistently, prompt engineers can unlock increasingly powerful and reliable performance from large language models across a wide range of applications.

<div style="text-align: center">⁂</div>

[^1]: https://en.wikipedia.org/wiki/Prompt_engineering

[^2]: https://cset.georgetown.edu/article/the-surprising-power-of-next-word-prediction-large-language-models-explained-part-1/

[^3]: https://www.ibm.com/docs/en/watsonx/saas?topic=lab-prompt-tips

[^4]: https://www.hopsworks.ai/dictionary/llm-temperature

[^5]: https://dataforest.ai/glossary/top-k-sampling

[^6]: https://en.wikipedia.org/wiki/Top-p_sampling

[^7]: https://www.vellum.ai/llm-parameters/max-tokens

[^8]: https://www.promptingguide.ai/techniques/zeroshot

[^9]: https://www.ibm.com/think/topics/one-shot-prompting

[^10]: https://www.ibm.com/think/topics/few-shot-prompting

[^11]: https://www.promptingguide.ai/techniques/cot

[^12]: https://www.prompthub.us/blog/self-consistency-and-universal-self-consistency-prompting

[^13]: https://learnprompting.org/docs/advanced/decomposition/tree_of_thoughts

[^14]: https://llmnanban.akmmusai.pro/Mastery/Step-Back-Prompting-explained/

[^15]: https://www.promptingguide.ai/techniques/react

[^16]: https://futureskillsacademy.com/blog/automatic-prompt-engineering-ape/

[^17]: https://www.mckinsey.com/featured-insights/mckinsey-explainers/what-is-prompt-engineering

[^18]: https://aws.amazon.com/what-is/prompt-engineering/

[^19]: https://www.coursera.org/articles/what-is-prompt-engineering

[^20]: https://www.sap.com/resources/what-is-prompt-engineering

[^21]: https://www.ikigailabs.io/blog/to-use-llm-or-not-to-llm-a-case-study-with-tabular-data

[^22]: https://www.linkedin.com/pulse/foundational-techniques-mastering-prompt-engineering-ranjit-nambisan-lp9zf

[^23]: https://genai.byu.edu/prompt-engineering

[^24]: https://codesignal.com/learn/courses/understanding-llms-and-basic-prompting-techniques/lessons/llms-are-next-word-prediction-machines

[^25]: https://www.promptingguide.ai

[^26]: https://www.ibm.com/think/topics/prompt-engineering

[^27]: https://pmc.ncbi.nlm.nih.gov/articles/PMC11623460/

[^28]: https://learn.microsoft.com/en-us/azure/ai-services/openai/concepts/prompt-engineering

[^29]: https://cloud.google.com/discover/what-is-prompt-engineering

[^30]: https://www.nature.com/articles/s41586-023-06160-y

[^31]: https://mailchimp.com/resources/prompt-engineering/

[^32]: https://www.datacamp.com/blog/what-is-prompt-engineering-the-future-of-ai-communication

[^33]: https://arxiv.org/pdf/2402.05201.pdf

[^34]: https://www.reddit.com/r/AIDungeon/comments/1eppgyq/can_someone_explain_what_top_k_and_top_p_are_and/

[^35]: https://www.vellum.ai/llm-parameters/top-p

[^36]: https://community.openai.com/t/how-the-max-tokens-are-considered/313514

[^37]: https://www.vellum.ai/llm-parameters/temperature

[^38]: https://www.ibm.com/docs/en/watsonx/saas?topic=prompts-model-parameters-prompting

[^39]: https://www.youtube.com/watch?v=_3DWwb96exY

[^40]: https://www.toolify.ai/ai-news/mastering-the-max-tokens-parameter-unlocking-the-power-of-gpt-1689255

[^41]: https://www.iguazio.com/glossary/llm-temperature/

[^42]: https://huyenchip.com/2024/01/16/sampling.html

[^43]: https://community.openai.com/t/a-better-explanation-of-top-p/2426

[^44]: https://community.openai.com/t/clarification-for-max-tokens/19576

[^45]: https://promptmetheus.com/resources/llm-knowledge-base/one-shot-prompt

[^46]: https://www.prompthub.us/blog/the-few-shot-prompting-guide

[^47]: https://labelbox.com/guides/zero-shot-learning-few-shot-learning-fine-tuning/

[^48]: https://www.digital-adoption.com/one-shot-prompting/

[^49]: https://www.datacamp.com/tutorial/few-shot-prompting

[^50]: https://www.machinelearningmastery.com/what-are-zero-shot-prompting-and-few-shot-prompting/

[^51]: https://promptsninja.com/few-one-zero-prompting/

[^52]: https://www.promptingguide.ai/techniques/fewshot

[^53]: https://arxiv.org/abs/2205.11916

[^54]: https://www.linkedin.com/pulse/zero-shot-one-few-learning-prompt-engineering-pathan

[^55]: https://www.reddit.com/r/PromptEngineering/comments/1cgzkdi/everything_you_need_to_know_about_few_shot/

[^56]: https://learnprompting.org/docs/basics/few_shot

[^57]: https://www.linkedin.com/pulse/ai-prompt-engineering-react-framework-rany-elhousieny-phdᴬᴮᴰ-ofhlc

[^58]: https://www.ibm.com/topics/chain-of-thoughts

[^59]: https://www.promptingguide.ai/techniques/consistency

[^60]: https://www.prompthub.us/blog/how-tree-of-thoughts-prompting-works

[^61]: https://www.prompthub.us/blog/a-step-forward-with-step-back-prompting

[^62]: https://docs.arize.com/phoenix/cookbook/prompt-engineering/react-prompting

[^63]: https://learnprompting.org/docs/intermediate/chain_of_thought

[^64]: https://learnprompting.org/docs/intermediate/self_consistency

[^65]: https://www.ibm.com/think/topics/tree-of-thoughts

[^66]: https://learnprompting.org/docs/advanced/thought_generation/step_back_prompting

[^67]: https://www.promptingguide.ai/techniques/react

[^68]: https://clickup.com/blog/chain-of-thought-prompting/

[^69]: https://sites.google.com/view/automatic-prompt-engineer

[^70]: https://dev.to/nagasuresh_dondapati_d5df/15-prompting-techniques-every-developer-should-know-for-code-generation-1go2

[^71]: https://blog.gopenai.com/mastering-react-prompting-a-crucial-step-in-langchain-implementation-a-guided-example-for-agents-efdf1b756105

[^72]: https://datascientest.com/en/all-about-automated-prompt-engineering

[^73]: https://www.pluralsight.com/resources/blog/software-development/prompt-engineering-for-developers

[^74]: https://www.youtube.com/watch?v=PB7hrp0mz54

[^75]: https://www.promptingguide.ai/techniques/ape

[^76]: https://arxiv.org/abs/2407.07064

[^77]: https://arxiv.org/abs/2211.01910

[^78]: https://github.com/potpie-ai/potpie/wiki/How-to-write-good-prompts-for-generating-code-from-LLMs

[^79]: https://docs.anthropic.com/en/docs/build-with-claude/prompt-engineering/prompt-generator

[^80]: https://www.promptingguide.ai/applications/coding

[^81]: https://uit.stanford.edu/service/techtraining/ai-demystified/prompt-engineering

[^82]: https://arxiv.org/html/2402.05201v1

[^83]: https://www.ibm.com/think/topics/llm-temperature

[^84]: https://mdrk.io/temperature-samplig-in-ai/

[^85]: https://aclanthology.org/2024.findings-emnlp.432.pdf

[^86]: https://www.ibm.com/think/topics/zero-shot-prompting

[^87]: https://www.datacamp.com/tutorial/zero-shot-prompting

[^88]: https://shelf.io/blog/zero-shot-and-few-shot-prompting/

[^89]: https://learnprompting.org/docs/advanced/zero_shot/introduction

[^90]: https://neptune.ai/blog/zero-shot-and-few-shot-learning-with-llms

[^91]: https://arxiv.org/abs/2201.11903

[^92]: https://www.ibm.com/think/topics/chain-of-thoughts

[^93]: https://www.prompthub.us/blog/chain-of-thought-prompting-guide

[^94]: https://www.techtarget.com/searchenterpriseai/definition/chain-of-thought-prompting

[^95]: https://www.width.ai/post/react-prompting

[^96]: https://react-lm.github.io

[^97]: https://learnprompting.org/docs/agents/react

[^98]: https://arxiv.org/html/2405.13966v1

[^99]: https://www.youtube.com/watch?v=n-dWSfvFQtk

[^100]: https://docs.arize.com/phoenix/prompt-engineering/use-cases-prompts/react-prompting

