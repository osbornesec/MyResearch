# Flash vs O1pro long context understanding

---
**Source URL**: https://southbridge-research.notion.site/Flash-vs-O1pro-long-context-understanding-1655fec70db1806296e1d6405b1115d5
**Capture Date**: 2025-06-20
**Content Type**: Model Comparison / Technical Analysis
**Publisher**: Southbridge Research

---

We're trying to answer MMoE related questions about this paper:
ACM Other conferences - Recommending what video to watch next | Proceedings of the 1…​

## Prompt

[The prompt asked about understanding Multi-gate Mixture-of-Experts (MMoE) architecture and specifically about adding experts on top of a shared hidden layer]

## Flash 2.0

Okay, let's break down how MMoE (Multi-gate Mixture-of-Experts) works in this paper and what the authors mean by adding experts on top of a shared hidden layer.

### Understanding Multi-gate Mixture-of-Experts (MMoE)

At its core, MMoE is a neural network architecture designed for multi-task learning. This means it's built to handle scenarios where you have multiple related, but potentially conflicting, objectives to optimize for simultaneously. In the context of this paper, those objectives are things like predicting user clicks (engagement), and predicting user ratings (satisfaction).

Here's how MMoE works:

1. **Shared Bottom Layer**: The input features are first processed by a shared hidden layer. This layer learns a common representation of the input that's useful for all the different tasks. This is similar to how traditional multi-task learning often works, where parameters are shared between tasks.

2. **Experts**: Instead of directly passing the output of the shared layer to each task's prediction layer, MMoE introduces "experts." Each expert is a separate neural network (in this case, a multilayer perceptron). These experts are designed to learn different aspects of the data. Think of them as specialists that focus on different patterns or relationships in the input.

3. **Gating Networks**: For each task, there's a separate gating network. These gating networks take the output of the shared hidden layer as input and output a weight vector. The size of the vector is equal to the number of experts. This weight vector determines how much each expert contributes to the prediction for that specific task.

4. **Weighted Combination of Experts**: The output of the experts is combined using the weights provided by the gating network for each task. So, for a particular task, some experts might have a higher weight (contributing more to the final prediction), while others might have a lower weight (contributing less).

5. **Task-Specific Prediction Layers**: Finally, the weighted output of the experts is passed through a task-specific prediction layer (e.g., a softmax layer for classification or a linear layer for regression).

**Key Idea**: The crucial aspect of MMoE is that each task has its own gating network, allowing the model to dynamically choose which experts are most relevant for that specific task. This "soft parameter sharing" allows tasks to leverage shared knowledge while also specializing on their own unique needs. This is unlike the "hard parameter sharing" of a shared bottom, where all tasks must use the same representation.

### The Sentence Explained: "For our ranking system, we propose to add experts on top of a shared hidden layer, as shown in Figure 2b..."

Let's break this down piece by piece:

**"For our ranking system, we propose to add experts on top of a shared hidden layer..."**

This directly refers to the architecture described above. Instead of directly putting the experts right after the input layer (the raw features), they are placing them after a shared hidden layer.

Think of it like this: The shared hidden layer first does a general processing of the input, creating a more abstract representation. Then, the experts, combined with their gating networks, focus on specializing for the different tasks based on the abstract representation.

**"...as shown in Figure 2b."**

Figure 2b in the paper visually demonstrates this architecture.

**"This is because a Mixture-of-Experts layer can help to learn modularized information from its input [21]."**

This is a reference to the original Mixture-of-Experts paper [21]. The authors are stating the reasoning behind their choice. The MoE structure (experts + gating network) helps break down complex inputs into more manageable pieces. Each expert focuses on learning specific aspects of the input and the gating network decides which expert is relevant for which task.

**"It can better model multimodal feature space when being used directly on top of input layer or lower hidden layers."**

The authors are explaining why MoE is good for their problem. They have a multimodal feature space (features from text, images, user data, etc.). MoE can help model this complexity because experts are specialized for different feature types.

**"However, directly applying MoE layer on input layer will significantly increase model training and serving cost."**

This is a practical consideration. The input layer, especially in a real-world system like YouTube, is very high-dimensional (it contains a large number of features). Using experts directly on the input would mean that each expert would need a very large number of parameters, leading to huge computational and memory costs.

**"This is because usually the dimensionality of input layer is much higher than those of hidden layers."**

This is the explanation for the previous point. Shared hidden layers reduce dimensionality of the input into a more compact representation. By adding MoE after the shared hidden layer, the number of parameters in the experts and gating networks can be reduced.

### In Summary

The paper uses MMoE to handle multiple ranking objectives in a better way than a simple shared-bottom approach. Instead of directly putting experts on the input layer, the authors put them on top of a shared hidden layer. This is because the shared hidden layer helps reduce the dimensionality of the input, which leads to decreased computational cost. The MoE structure allows the model to learn more modularized representations and better model multimodal feature spaces.

Let me know if you have any more questions!

## O1 pro

First, let's do a quick recap of Mixture-of-Experts (MoE) and then explain how Multi-gate Mixture-of-Experts (MMoE) extends it. Finally, we'll clarify why in this paper they choose to apply the MMoE layer on top of a shared hidden layer rather than directly on the input.

### 1. Mixture-of-Experts (MoE) — The Basic Idea

Mixture-of-Experts is a method for modularizing a neural network into multiple "expert" subnetworks (often small MLPs). These subnetworks can specialize in different portions of the feature space (or different aspects of a problem). A separate "gating network" then learns to produce a set of weights (a distribution over the experts) for each input, telling the model:

"Which expert(s) are most relevant for this particular input?"

Formally, if you have n experts {fi(·)}ᵢ₌₁ⁿ, and a gating network g(·) that outputs a probability distribution αᵢ(x) over those n experts for a given input x, the overall output is often taken as:

Output(x) = Σᵢ₌₁ⁿ αᵢ(x) fᵢ(x)   where αᵢ(x) ≥ 0, Σᵢ₌₁ⁿ αᵢ(x) = 1.

The gating network usually has a softmax at the top layer so that it learns how to blend each expert's output, depending on the input.

### 2. Multi-gate Mixture-of-Experts (MMoE) — Extending MoE to Multiple Tasks

In MMoE, we have multiple tasks (e.g., predicting click vs. predicting watch-time vs. predicting user likes, etc.). Instead of having a single gating network, MMoE uses a separate gating network per task. That means:

- We still have a shared set of experts {fᵢ(·)}ᵢ₌₁ⁿ.
- But for each task k, there is a task-specific gating network gₖ(·).

So if you have K tasks, you will have K different gating networks {gₖ(·)}ₖ₌₁ᴷ. Each gating network outputs a probability distribution over the n experts, specialized to that task. Therefore, for a given input x, task k produces its own mixture of the experts:

fᵏ(x) = Σᵢ₌₁ⁿ αₖ,ᵢ(x) fᵢ(x),

where αₖ(x) = gₖ(x) (the gating distribution for task k).

This setup is called "soft-parameter sharing" because each expert can be shared across tasks, but how much it is shared depends on the gating networks. MMoE solves a big limitation of simple "shared-bottom" models:

- In a shared-bottom approach, all tasks share the same bottom hidden layers, so it is a one-size-fits-all representation.
- In MMoE, each task can adaptively choose to what extent it relies on each expert (and hence each representation learned by different experts).

Thus, MMoE can better handle tasks that have conflicting objectives, because each gating network can "pull" from whichever combination of experts works best for that task.

### 3. Why Put MMoE on Top of a Shared Hidden Layer, Instead of Directly on the Input?

In the excerpt, the authors state:

> "For our ranking system, we propose to add experts on top of a shared hidden layer, as shown in Figure 2b. … However, directly applying MoE layer on input layer will significantly increase model training and serving cost. This is because usually the dimensionality of input layer is much higher than those of hidden layers."

In many large-scale recommender systems, the raw input layer can be extremely high-dimensional—especially with categorical embeddings for user IDs, item IDs, features for text, images, context, etc. If we place the MoE (or MMoE) layer directly at the input:

**Memory & Compute Explosion:**
Each expert is a subnetwork. If the input dimension is huge, each expert's first layer becomes large. With n experts, you multiply that by n. Serving such a large model in real-time can be prohibitively expensive.

**Training Instability & Bandwidth:**
Extremely large embeddings or raw feature vectors can exacerbate training difficulties. If you replicate that across multiple experts immediately from the input, you also increase the bandwidth and memory usage during distributed training.

Instead, the authors add a shared hidden layer before the MMoE. That shared hidden layer can compress or encode the high-dimensional input into a more manageable intermediate representation. Then the experts in the MMoE each operate on that (lower-dimensional) compressed representation. This yields:

- Lower computational cost (fewer weights per expert).
- Less memory usage (since each expert is smaller).
- Still captures multimodal signals because the shared hidden layer has already "seen" all the raw features and hopefully learned an effective representation.

Hence, this design is a practical balance:
- Use a shared hidden layer (less expensive, universal "feature extractor").
- Then feed that into the MMoE architecture so each task has flexibility to specialize.

### In Summary

- **MoE**: A set of experts + a gating network to blend them for a single task.
- **MMoE**: Multiple tasks, each with its own gating network, sharing the same pool of experts.
- **Placement of MMoE in the Architecture**:
  - Putting MMoE at the very bottom would be too big (too many parameters, slow to serve).
  - Putting MMoE on top of a shared hidden layer means we can keep the model size in check and still let each task "soft-share" experts.

Thus, MMoE is a powerful way to split and share representation capacity among tasks, and situating it after a shared layer makes it computationally tractable for large-scale ranking systems (like YouTube recommendations).