# Something weird is happening in AI

---
**Source URL**: https://southbridge-research.notion.site/something-weird-is-happening-in-ai
**Capture Date**: 2025-06-20
**Content Type**: Research Article / Model Comparison Analysis
**Publisher**: Southbridge Research

---

It's possible I'm wrong about this. If I'm not - there are big things happening with large implications - soon. It's worth reading the next section, but skip it if you just want the answer ​

It's weird when something happens just as you write things up. I want to emphasize something here - and it makes all the difference - THIS IS NOT THE w/thinking model. This is just a straight up comparison between o1 and two non-thinking models, one of them a (likely) tiny one!

## Take the time

Before we start, I'd like you to compare three outputs, on two tasks.

### Comprehension + Writing

The first is writing a README. This is a harder task than it looks like - a good README has to be instructive, simple to get, steadily increasing in complexity, and cover how something can be used, where, and how it works in a way that makes sense. For an open-source project, the README has to speak a large audience, and do it well.

One of my favorite tasks for LLM testing has been to provide all of the code in a project (20k+ tokens), an example README, and some instructions how to write. In our case, we're generating a README for the as-yet-unreleased zodsheriff (I guess you'll hear about it here first)

You can see the prompt here:
Prompt

Here are three outputs from three different models and providers. Which one do you like best?
- 1.pdf (328.1KB)
- 2.pdf (449.0KB)
- 3.pdf (495.0KB)

(You don't have to read the whole thing, just skim and have an opinion before you proceed)

To me, 1 loses points immediately because it doesn't cover the options and switches provided by the package. 3 loses fewer points for not actually explaining the features before launching into code. 2 seems like the one I'd pick.

### Code review

Let's stick with zodsheriff. We'll give the code to three models and ask them to critique it, using this prompt:
Prompt

- codereview-1.pdf (68.8KB)
- codereview-2.pdf (78.2KB)
- codereview-3.pdf (45.0KB)

Same as before, 1 is eliminated from consideration (for me) due to this line:

This is something the code already does - it's even pointed out in the codebase!

The analysis is also pretty generic. There are known vulnerabilities in the code (like the use of refine and transform functions in zod) that I'm looking for, which aren't really present.

3 is really quite short, but I appreciate the sass at the beginning (even though this is from a test file used to specifically test the kind of unsafe code we want to be removed!):

Outside of this however, it fails to catch some of the bigger problems and improvements in its attempt to be terse. It wrongly points out that zod should be a peer dependency, despite the fact that Zod isn't actually used or necessary to be present for using this package.

Number 2 to me seems to be the best of the three. It points out a number of things I hadn't thought about:

It makes some of the usual mistakes (like missing that testSchema1.ts is a test schema and not actually part of the codebase), but the overall analysis and recommendations are ones that I got the most value from. It's also easier to read, verbose without being superfluous, and follows the instructions better. We asked for a clean document at the end, and 3 is the one that did the thinking first and then provided a doc at the end.

## Model reveal

These outputs haven't been exceptional in my experience over the past few days. I'm consistantly getting good outputs from 2, with 3 and 1 following close behind in different ways. Why it took me this long to verify and write something is because of what these models are:

1. **o1-pro** ($200/month or $60/1M tokens, ~5 minutes per answer)
2. **gemini-flash-2.0-exp** (free, 30 seconds per answer) (not the w/thinking model, the prompts are way too big for that one at the moment)
3. **claude-sonnet-3.5 new** ($15/1M tokens, 20-30 seconds per answer)

What is actually happening here? It could simply be that my prompting approaches have been wrong and not tuned for o1. However, a few things have been consistently true in my testing:

- o1-pro makes more basic mistakes than either model (sometimes even more than llama 405!)
- (Subjective) I prefer either the terseness of sonnet or the type of verbosity that flash has. o1 tends to repeat itself or add superfluous sentences (like 'This is the most important thing in the document that needs to be considered carefully) - a lot.
- o1 is more expensive and takes longer - placing a higher load on it being right the first time around. Steering o1 is a multi-hour process.

It could also be that my tasks (code generation, review, working through complex problems) are not the right domain for the model. Some of the benchmarks I've seen hold true to this belief, but I can also believe that the experience for many is different.

It still leaves the big question:

## How in the world is gemini-flash so good?

Regardless of whether I'm right in the general sense, a (presumably) small model with no CoT tuning should not be punching this close to a flagship model that gets as many thinking tokens it would like to have.

Still boggles my mind that this is possible - and my preconceptions are to blame for not catching on to this sooner. Given it's naming and pricing position so far, I'd relegated flash to flash-y tasks, not really giving it anything of substance.

At the same time, QwQ has been doing really well on long analyses - and I continue to be impressed by how good Qwen0.5b and llama1b are.

Hopefully I'm starting to convince you to actually give gemini-flash your sonnet-level prompts. If anyone's got tips/ideas/thoughts (and you've made it this far), let me know!