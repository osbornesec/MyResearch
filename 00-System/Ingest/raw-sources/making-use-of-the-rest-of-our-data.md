# Making use of the rest of our data

---
**Source Metadata:**
- **URL**: https://southbridge-research.notion.site/Making-use-of-the-rest-of-our-data-11a5fec70db180c28342f41922baca70
- **Capture Date**: 2025-06-20
- **Content Type**: Technical Article / Data Architecture
- **Author**: Southbridge.ai
---

## Overview

Semistructured data has been the bane of my life, both as a person and as a CTO. Without hundreds of man-hours spent labelling, transforming, connecting, flattening and ingesting, it's near-useless, but it's everywhere. It's almost all data.

## What is Semistructured Data?

What do I mean by semistructured? Anything that's structured enough to want to be treated respectfully, searched reliably and ingested without mistakes, but isn't structured enough to make any of those things easy.

This is almost all data I encounter. Large corporate excel sheets that run entire departments? Semistructured. PDFs with separate, important tables? Semistructured. Receipts from thousands of vendors? Semistructured.

JSON/CSV output from unwilling (legacy) products that don't really want you to export their data? Semistructured.

## The Cost of Semistructured Data

50% of all engineering hours spent at Greywing were spent getting this data to a properly structured form - well typed, well named, normalized and foreign-key connected formats ingested into a modern database.

40% of all of my time spent coding for myself has been doing the same - to get my information back out of bank statements, health analytics, git logs, and so on.

## Why Structured Data Matters

Structured data is wonderful. Most of the problems of AI retrieval systems go away with well structured data. The last 20 years has had us get better and better at storing, indexing, retrieving and moving structured information around.

Here are just some of the benefits in the AI space:

- **It's scalable**: You can store terabytes or petabytes of information without a problem.
- **It's fast**: Structured search can easily outperform vector search, both in speed and complexity.
- **No more hallucinations**: Structured transformations and queries move the AI from a middleman that needs to regurgitate information to a 'manager', eliminating hallucinations entirely.
- **Inspectability**: Queries and transformations are inspectable, instead of vector spaces that work, or don't.
- **Privacy**: Compliance becomes easier when you can hide the underlying data entirely from the AI.

## The Solution

The good news is that we can completely automate this process. AI models today are more than capable of understanding, labelling, transforming, and ingesting all kinds of information.

The bad news is that this is still complex because of heterogeneity, and edge cases. To have systems that are resilient, data becomes the primary objective and the key moat.

Also scalability - how do we build systems that can process terabytes of information at gigbytes a second?

## How to Build an Automated Ingest System

Building a completely automated ingest system involves succeeding at multiple (still open) problems.

### 1. An AI Spread Operator

Building an efficient in-transport way to split large data, recombine and recursively extract/summarise/transform information is crucial to operating on large datasets scalably.

You want to be able to say "Take this large X, split it this way, extract this from each, combine this way, and give me the final output."

### 2. Superschema

A way to merge large quantities of heterogenous schema: Applicable to structures extracted from PDFs, receipts, claims, images, etc. You want to be able to plug in a Dropbox and say "give me a table with this information (and in this format)." Large scale XLSX files are going to be a tough challenge to tackle here, but one worth solving.

The big difference with competition is that we can process large diverse structures (many hundreds-to-1), rather than do 1-to-1.

### 3. Transformations

The ability to transform large structured datasets into other large structured datasets. Stream processing, compliance all come in here. Can we handle GBs of data being transformed, with the right evals, checks and balances?

## Products That Can Be Built on Top

- Generate ERP interfaces quickly for data collection
- Constrained codegen based search over structured information (similar to wishful search, with the expressivity of codegen without the safety issues)
- Automated connectors to extract and ingest information from Enterprise ERP systems

Our primary intent is to get everything to strongly structured data, and add new layers on top.

## Ancillary Pieces

### Processing Multi-Modal Input

You want something that can accept PDFs, Excels, CSVs, Images, folders of images, etc. and do some grouping, storage and management, and pass them to an LLM. Based on the capabilities of the LLM, you want to add any additional labelling (gridlines, etc) to then be passed in with a prompt. If you can do this you can simplify your actual AI pipelines.

### A DSL to Express Transformations and Queries

Ideally a subset or superset of an existing language.