# Comparing Deep Research products

**Source URL**: https://southbridge-research.notion.site/Comparing-Deep-Research-products-1e95fec70db18041894ed0a644376153
**Capture Date**: 2025-06-20T18:53:15.366Z
**Content Type**: Comparative Analysis / Research

---

## Overview

- o3 DR (12 minutes)
- Gemini 2.5 DR (9 minutes)
- Claude 3.7 DR (54 minutes)

## 1. Task-following

### Aspect requested in the prompt

| Feature | o3-DR | Gemini-2.5-DR | Sonnet-3.7-DR |
|---------|-------|---------------|---------------|
| Provider coverage (OpenAI, Anthropic, Gemini) | ✓ – but invents extra fictitious model names. | ✓ – sticks to doc-backed names. | ✓ – sticks to doc-backed names. |
| Model list & pricing table | ✓ – huge, but many figures wrong. | ✓ – broadly correct, cites tiers & caching. | ✓ – covers core prices but fewer variants. |
| "How to access" in TypeScript | Partial – OpenAI/Anthropic only; Gemini SDK never actually imported. | ✓ | ✓ |
| Reasoning vs non-reasoning models explained | ✓ – but relies on invented "o3/o4" taxonomy. | ✓ – explains chain-of-thought visibility vs hidden. | ◑ – mentions but shorter. |
| Thinking tokens / chain-of-thought | Mentions for Gemini & Claude but conflates with OpenAI. | ✓ – flags uncertainty. | ✓ – demonstrates Claude thinking, notes not exposed on OpenAI. |
| Idiosyncrasies / known issues from forums | Sparse. | ✓ – has dedicated section. | Minimal. |
| Streaming, JSON mode, schema, multimodal | Talks about all, few concrete examples. | ✓ – many TS examples. | ✓ – code for each. |
| Cost-calculation formula | Qualitative only. | ✓ – shows formulas & pitfalls. | ✓ – includes helper fn. |
| Contradictions or "what we could not find" | Rare. | ✓ – calls out thin docs & tokeniser gaps. | Few. |

**Winner on task-adherence: Gemini-2.5-DR**

## 2. Detail depth

Rank order: o3-DR (highest volume) → Gemini-2.5-DR (high but curated) → Sonnet-3.7-DR (concise).

o3-DR is ~2× longer than the others but much is repetition or imagined specs; Gemini-2.5-DR's detail is better targeted.

## 3. Wasted space

- **o3-DR**: repeats marketing claims and cites the same URL dozens of times; long paragraphs inflate length.
- **Gemini-2.5-DR**: has modest boiler-plate but generally on-topic.
- **Sonnet-3.7-DR**: is code-dense; almost no irrelevant prose – best score here.

## 4. Correctness check (places they disagree)

| Topic | o3-DR says | Gemini-2.5-DR says | Sonnet-3.7-DR says | Action / which is plausible |
|-------|------------|-------------------|-------------------|---------------------------|
| GPT-4. context window* | 4.1 = 1 M tokens | 4 Turbo = 128 K, no claim of 1 M | 4o = 128 K | Only GPT-4o-128k preview hits 128 K; 1 M not public ⇒ verify. |
| Existence of "GPT-4.1 mini / nano" | Declares them | Not mentioned | Not mentioned | Likely invented by o3-DR. |
| Claude 3.7 vs 3.5 pricing | Same price | $3 vs $0.8 | $3 vs $0.8 | Anthropic sheet shows Haiku cheaper → o3-DR wrong. |
| Gemini 2.0 Flash image generation | Says yes | Says use Imagen | Shows text-only code | Gemini Flash cannot yet emit images → o3-DR wrong. |
| Thinking-token budget for Gemini 2.5 Flash | Mentions vaguely | Mentions distinct price | Gives thinkingBudget param | Param only in Studio demos – treat cautiously. |
| OpenAI cached input fee | Lists $1.25/MTok | Mentions half-price rule | Not covered | Need to verify: docs say 50 % discount, not fixed fee. |

## 5. Missing elements per report

| Report | What it failed to cover that the others did |
|--------|-------------------------------------------|
| o3-DR | No Gemini TS sample; no unified interface pattern; lacks token-counting libs for Anthropic/Gemini; no SDK migration advice. |
| Gemini-2.5-DR | Omits Whisper/TTS & DALL·E image pricing; no Gemini audio/video code; fewer streaming snippets than Sonnet-3.7-DR. |
| Sonnet-3.7-DR | Skims OpenAI Assistants / Responses APIs; light on caching/grounding; no forum-issue section. |

## Overall recommendation

- **Use Gemini-2.5-DR as your primary reference** – it follows the brief most closely, provides accurate SDK code, and explicitly flags uncertainties.
- **Borrow code patterns from Sonnet-3.7-DR** – its unified provider interface and retry/result helpers are production-ready and compact.
- **Treat o3-DR with caution** – it can inspire comparison tables, but many model names, context sizes, and prices are not corroborated; double-check before relying on it.