---
epoch: 1750372645936
modelKey: o4-mini-high|3rd party (openai-format)


tags:
  - copilot-conversation

---

**user**: @vault Act as an expert prompt engineer specializing in prompts for AI coding.  Create a prompt that will take the documentation for my project and create a plan for the architecture.
[Timestamp: 2025/06/19 17:37:25]

**ai**: Here’s a ready-to-use prompt you can feed to an LLM to turn your project docs into a complete architecture plan:

```
You are an expert AI-driven software architect. Your goal is to read the supplied project documentation and produce a detailed, justified system architecture plan.

# INPUT
The project documentation (requirements, user stories, constraints, existing tech stack, etc.) will be provided under the placeholder `$DOCUMENTATION$`.

# TASKS
1. Extract and list:
   - Functional requirements
   - Non-functional requirements (performance, scalability, security, maintainability, compliance)
   - Architectural drivers and constraints (technology choices, budget, regulatory)
2. Select and justify one or more architectural styles/patterns (e.g. microservices, layered, event-driven, hexagonal).
3. Decompose the system into components/modules:
   - For each: name, responsibility, inputs/outputs
   - Define interfaces and communication protocols (REST, gRPC, message bus, etc.)
4. Propose a deployment & infrastructure model:
   - Cloud/on-premise choices
   - CI/CD pipeline outline
   - Monitoring, logging, and failover strategy
5. Address quality attributes:
   - Caching, load-balancing, autoscaling
   - Security (auth, encryption, RLS)
   - Observability (metrics, tracing, alerting)
6. Present deliverables in this structure:

## 1. Executive Summary  
A one-paragraph high-level overview.

## 2. Requirements & Constraints  
– Table: Type | Description

## 3. Architecture Overview  
– Mermaid diagram of major components and interactions

## 4. Component Breakdown  
| Component       | Responsibility                    | Interfaces/Protocols |
|-----------------|-----------------------------------|----------------------|
| e.g. API Layer  | Expose business endpoints         | REST/JSON            |
| e.g. Auth Module| User identity & access management | JWT/OAuth2           |

## 5. Deployment Model  
– Mermaid diagram showing environments (dev/stage/prod), cloud services, CI/CD flow

## 6. Quality & Non-Functional Considerations  
Bullet list of optimizations and trade-offs.

## 7. Justification & Trade-offs  
Explain why each major decision was made, including alternatives considered.

# REASONING
Think step-by-step: first parse `$DOCUMENTATION$`, then extract drivers, choose patterns, decompose modules, design deployment, and finally optimize for quality attributes.

# EXAMPLES
If given docs that specify “Next.js frontend, FastAPI backend, PostgreSQL DB, 100ms latency”, your plan might pick a microservices style with API Gateway, Redis cache for sub-100ms responses, and a GitHub Actions pipeline with blue/green deploys.

---

Now replace `$DOCUMENTATION$` with your actual project docs and submit this prompt. The model will return a full, structured architecture plan ready for review.
[Timestamp: 2025/06/19 17:37:59]

**user**: Now do the same but have it act as a product manager and create a prd
[Timestamp: 2025/06/19 17:56:35]

**ai**: Here’s a ready-to-use prompt you can feed to an LLM to turn your project docs into a full Product Requirements Document (PRD):

```
You are an expert AI-driven Product Manager. Your goal is to read the supplied project documentation and produce a comprehensive Product Requirements Document (PRD).

# INPUT  
The project documentation (market research, user stories, business goals, constraints, existing tech stack, etc.) will be provided under the placeholder `$DOCUMENTATION$`.

# TASKS  
1. Market & Business Context  
   - Summarize target market, key trends, competitors  
   - State business objectives and success criteria  
2. Stakeholders & User Personas  
   - Identify primary user segments and their needs  
   - Define 2–3 personas with goals, pain points, and use scenarios  
3. Problem Statement & Goals  
   - Clearly articulate the core problem(s) to solve  
   - List product goals (e.g., engagement, revenue, retention)  
4. Features & Functional Requirements  
   - For each major feature:  
     • Title and description  
     • Priority (Must/Should/Could/Won’t)  
     • User stories (As a… I want… so that…)  
5. UX/UI Flows & Wireframes  
   - Provide high-level user flows (Mermaid or bullet steps)  
   - Sketch wireframe ideas or screen outlines  
6. Technical & Non-Functional Requirements  
   - Platform constraints, performance SLAs, security & compliance  
   - Scalability, maintainability, localization, accessibility  
7. Success Metrics & KPIs  
   - Define measurable metrics (e.g., MAU, conversion rate, NPS)  
   - Set target values for launch and milestones  
8. Roadmap & Release Plan  
   - Timeline (quarters or sprints) with major milestones  
   - Dependencies and risk mitigation strategies  

# DELIVERABLE STRUCTURE  

## 1. Executive Summary  
One-paragraph overview of product vision and goals.

## 2. Market & Business Context  
– Table: Aspect | Details

## 3. Personas & Use Cases  
| Persona      | Goals                 | Pain Points        |
|--------------|-----------------------|--------------------|

## 4. Problem Statement & Goals  
Bullet list of core problems and product objectives.

## 5. Features & User Stories  
| Feature       | Priority | User Story                                |
|---------------|----------|-------------------------------------------|

## 6. User Flows & Wireframes  
– Mermaid diagram for main flows  
– ASCII-style wireframe sketches or descriptions

## 7. Technical & NFRs  
Bullet list grouped by category.

## 8. Success Metrics  
| Metric            | Definition                    | Target   |
|-------------------|-------------------------------|----------|

## 9. Roadmap  
– Gantt-style or sprint list with dates and deliverables.

# REASONING  
Think step-by-step: first analyze market & docs, then define personas, articulate problems, map features, design flows, specify requirements, set KPIs, and plan releases.

# EXAMPLE  
If docs mention “B2C mobile app for fitness tracking, GDPR, iOS/Android, 50k users in year one,” your PRD might define personas (casual user, power athlete), list features (workout logging, social sharing), set performance targets (app start <2s), and propose a 4-sprint rollout roadmap.

---

Now replace `$DOCUMENTATION$` with your actual project docs and submit this prompt. The model will return a structured, ready-to-review PRD.
[Timestamp: 2025/06/19 17:56:47]

**user**: @vault Now have the AI act as an expert scrum master that will develop the PRD into user stories.  Each User story should be a separate file and they should be ordered by what order they should be implemented.  These should be saved to /ai-docs/stories/
[Timestamp: 2025/06/19 18:00:24]

**ai**: Here’s a ready-to-use system prompt to turn your PRD into sequenced user stories, each saved as its own markdown file in `/ai-docs/stories/`:

```
You are an expert Scrum Master and agile coach. Your task is to read the supplied Product Requirements Document (PRD) and generate a set of atomic user stories, ordered by implementation priority, each in its own markdown file.

# INPUT
– The full PRD content will be provided under `$PRD$`.

# TASKS
1. Analyze the PRD to extract all features, epics, and acceptance criteria.
2. For each feature or epic, break it down into 1–3 cohesive user stories:
   – Format:  
     Title: As a <role>, I want <feature> so that <benefit>.  
     Description: A brief elaboration.  
     Acceptance Criteria:  
     1. …  
     2. …
3. Order the user stories by implementation sequence, grouping by sprint if implied.
4. For each story, generate a separate markdown file path and content block:
   – File path: `/ai-docs/stories/<NN>-<story-slug>.md`  
     where `<NN>` is the two-digit story index (01, 02, …) and `<story-slug>` is a kebab-case short title.
   – File content must include YAML front matter:
     ```yaml
     ---
     title: "<story title>"
     sprint: <number>        # if sprints defined, else omit
     story_index: <NN>
     tags: [user-story, <related-feature-slug>]
     ---
     ```
     Then the story Title, Description, and Acceptance Criteria.

# OUTPUT
Return a JSON array `stories` where each element is an object:
```json
{
  "file": "/ai-docs/stories/01-user-login.md",
  "content": "```yaml\n---\ntitle: \"User Login\"\nsprint: 1\nstory_index: 01\ntags: [user-story, auth]\n---\n```\n\n# As a returning user, I want to log in with email and password so that I can access my account.\n\n**Description:** …\n\n**Acceptance Criteria:**\n1. …\n2. …"
}
```
No additional commentary. Just produce the JSON array of all story files in order.

# EXAMPLE
If PRD includes “Users must sign in,” you might output:
```json
[
  {
    "file": "/ai-docs/stories/01-user-login.md",
    "content": "```yaml\n---\ntitle: \"User Login\"\nsprint: 1\nstory_index: 01\ntags: [user-story, auth]\n---\n```\n\n# As a returning user, I want to log in with email and password so that I can access my account.\n\n**Description:** User enters email & password, clicks Login.\n\n**Acceptance Criteria:**\n1. Login form validates input.\n2. Correct credentials redirect to dashboard."
  },
  …
]
```

Now replace `$PRD$` with your actual PRD and submit this prompt to generate all user stories.
[Timestamp: 2025/06/19 18:01:00]

**user**: Now I need a prompt that will have the AI act as a senior expert software development manager and break all of the user stories down into todo lists the todo lists should be stored in a new directories in /ai-docs/stories/ named after the user story it came from.
[Timestamp: 2025/06/19 18:05:06]

**ai**: Here’s a ready-to-use prompt to feed your LLM. It will read the user‐story files under `/ai-docs/stories/`, break each into a prioritized TODO list, and write each list to a subfolder named after its story:

```
You are a Senior Software Development Manager. Your task is to take each user-story file under `/ai-docs/stories/` (with filenames like NN-story-slug.md), analyze its content (title, description, acceptance criteria), and produce an ordered TODO checklist for implementation.

# INPUT  
– A directory listing of `/ai-docs/stories/` with markdown files, each containing:
  ```yaml
  ---
  title: "Story Title"
  sprint: X            # optional
  story_index: NN
  tags: [...]
  ---
  ```
  followed by the user-story text.

# TASKS  
1. For each story file:
   a. Parse its title, user-story statement, description, and acceptance criteria.  
   b. Decompose the work into an ordered list of implementation tasks (TODOs), each as a concise action item. Include setup, development, test, and review steps.  
2. Assign each TODO a logical sequence number.  
3. Output a new markdown file in `/ai-docs/stories/<story-slug>/todos.md` containing:
   ```markdown
   # TODOs for: Story Title

   1. [ ] Task 1
   2. [ ] Task 2
   3. [ ] Task 3
   ```
4. Produce a JSON summary array `todos` where each element has:
   ```json
   {
     "story": "NN-story-slug",
     "output_file": "/ai-docs/stories/<story-slug>/todos.md",
     "tasks": [
       "Task 1",
       "Task 2",
       "Task 3"
     ]
   }
   ```
5. Do NOT modify the original user-story files.  

# OUTPUT  
Return only the JSON array. The system integrating this LLM will write out each `/ai-docs/stories/<story-slug>/todos.md` file accordingly.
```
[Timestamp: 2025/06/19 18:05:17]