# Essential Obsidian Plugins for Research Vault

> **Installation Guide**: Go to Settings → Community Plugins → Browse → Search for plugin name → Install → Enable

## 🚀 Core Productivity Plugins

### 1. Templater
**Plugin ID**: `templater-obsidian`
**Purpose**: Advanced template system with dynamic content

**Why Essential for Research**:
- Create consistent research note formats
- Auto-populate metadata (dates, tags, etc.)
- Dynamic content based on conditions

**Key Features**:
- Template variables and functions
- File creation automation
- Dynamic date/time insertion
- Conditional logic

**Recommended Settings**:
```
Template folder: 00-System/Templates
Automatic jump to cursor: ON
Trigger Templater on new file creation: ON
```

### 2. Dataview
**Plugin ID**: `dataview`
**Purpose**: Database-like queries for your notes

**Why Essential for Research**:
- Create dynamic indexes of research topics
- Track progress across projects
- Generate automatic bibliographies
- Filter notes by tags, dates, or metadata

**Example Queries**:
```javascript
// List all AI research notes
TABLE file.ctime as "Created", tags
FROM "01-AI-and-LLMs"
WHERE contains(tags, "#research")
SORT file.ctime DESC

// Show incomplete tasks
TASK
FROM "00-System"
WHERE !completed
```

### 3. Tag Wrangler
**Plugin ID**: `tag-wrangler`
**Purpose**: Advanced tag management

**Why Essential for Research**:
- Rename tags across entire vault
- Merge similar tags
- Create tag hierarchies
- Bulk tag operations

### 4. QuickAdd
**Plugin ID**: `quickadd`
**Purpose**: Rapid note creation and actions

**Why Essential for Research**:
- Quick capture of research ideas
- Automated note creation workflows
- Macro actions for repetitive tasks

**Recommended Macros**:
- Research Note Creator
- Literature Review Entry
- Daily Research Log
- Meeting Notes

## 📊 Visual and Navigation Plugins

### 5. Mind Map
**Plugin ID**: `obsidian-mind-map`
**Purpose**: Visual mind mapping

**Research Applications**:
- Concept mapping
- Research methodology visualization
- Literature review structures
- Project planning

### 6. Kanban
**Plugin ID**: `obsidian-kanban`
**Purpose**: Project management boards

**Research Applications**:
- Track research progress
- Manage literature review status
- Project milestone tracking
- Task organization

### 7. Calendar
**Plugin ID**: `calendar`
**Purpose**: Calendar view for daily notes

**Research Applications**:
- Research timeline tracking
- Daily research logs
- Meeting scheduling
- Deadline management

### 8. Excalidraw
**Plugin ID**: `obsidian-excalidraw-plugin`
**Purpose**: Drawing and diagramming

**Research Applications**:
- System architecture diagrams
- Process flows
- Concept sketches
- Research frameworks

## 🔧 Workflow Enhancement Plugins

### 9. Advanced Tables
**Plugin ID**: `advanced-tables`
**Purpose**: Enhanced table editing

**Research Applications**:
- Data comparison tables
- Literature review matrices
- Research findings summaries
- Structured data entry

### 10. Outliner
**Plugin ID**: `obsidian-outliner`
**Purpose**: Improved list and outline handling

**Research Applications**:
- Hierarchical note structures
- Research outline organization
- Nested concept development
- Structured thinking

### 11. Sliding Panes
**Plugin ID**: `sliding-panes-obsidian`
**Purpose**: Multiple pane navigation

**Research Applications**:
- Compare multiple sources
- Cross-reference documents
- Multi-document workflows
- Research synthesis

## 🔄 Sync and Backup Plugins

### 12. Obsidian Git
**Plugin ID**: `obsidian-git`
**Purpose**: Git integration for version control

**Research Applications**:
- Version control for research notes
- Collaborate with team members
- Backup to GitHub/GitLab
- Track research evolution

**Recommended Settings**:
```
Vault backup interval: 10 minutes
Auto pull: ON
Auto push: ON
Commit message: "vault backup: {{date}}"
```

### 13. System Dark Mode
**Plugin ID**: `obsidian-system-dark-mode`
**Purpose**: Follow system theme

**Benefits**:
- Automatic theme switching
- Eye strain reduction
- Consistent with OS appearance

## 🎯 Research-Specific Plugin Configurations

### Templater Templates for Research

Create these templates in `00-System/Templates/`:

#### Research Note Template
```markdown
---
title: <% tp.file.title %>
date: <% tp.date.now("YYYY-MM-DD") %>
tags: [#research, #<% tp.system.prompt("Topic tag") %>]
status: draft
source: 
author: 
---

# <% tp.file.title %>

## Summary

## Key Findings

## Methodology

## Related Research
- [[<% tp.system.suggester(["Link to related note"], [""]) %>]]

## Questions for Further Research

## References
```

#### Literature Review Template
```markdown
---
title: <% tp.file.title %>
date: <% tp.date.now("YYYY-MM-DD") %>
tags: [#literature-review, #<% tp.system.prompt("Subject area") %>]
rating: 
relevance: 
---

# <% tp.file.title %>

**Author(s)**: 
**Publication Date**: 
**Source**: 
**DOI/URL**: 

## Abstract

## Key Points

## Methodology

## Findings

## Relevance to Research

## Critical Assessment

## Related Literature

## Citations
```

### Dataview Queries for Research

Add these to your MOC files:

#### Recent Research Notes
```javascript
```dataview
TABLE file.ctime as "Created", tags, status
FROM "01-AI-and-LLMs" OR "02-Software-Development" OR "03-Business-Analysis"
WHERE contains(tags, "#research")
SORT file.ctime DESC
LIMIT 10
```

#### Literature by Rating
```javascript
```dataview
TABLE author, rating, relevance
FROM #literature-review
WHERE rating
SORT rating DESC
```

#### Incomplete Research Tasks
```javascript
```dataview
TASK
FROM "01-AI-and-LLMs" OR "02-Software-Development" OR "03-Business-Analysis"
WHERE !completed AND contains(text, "research")
GROUP BY file.folder
```

## 🚀 Quick Installation Script

For experienced users, here are the plugin IDs for bulk installation:

```
templater-obsidian
dataview
tag-wrangler
quickadd
obsidian-mind-map
obsidian-kanban
calendar
obsidian-excalidraw-plugin
advanced-tables
obsidian-outliner
sliding-panes-obsidian
obsidian-git
obsidian-system-dark-mode
```

## 📋 Post-Installation Checklist

- [ ] Configure Templater with template folder
- [ ] Set up Obsidian Git with your repository
- [ ] Create essential templates (Research Note, Literature Review)
- [ ] Configure QuickAdd macros for common workflows
- [ ] Test Dataview queries in your MOC files
- [ ] Set up Kanban boards for project tracking
- [ ] Configure calendar for daily research logs
- [ ] Enable CSS snippets for enhanced styling

## 🔧 Troubleshooting

### Common Issues:

1. **Plugin not appearing**: Restart Obsidian after installation
2. **Templater not working**: Check template folder path in settings
3. **Git sync issues**: Verify repository credentials and network
4. **Dataview queries failing**: Check syntax and folder paths
5. **Performance issues**: Disable unnecessary plugins, reduce auto-save frequency

### Performance Tips:

- Start with core plugins, add others gradually
- Disable plugins you don't actively use
- Use Dataview sparingly on large vaults
- Regular vault maintenance and cleanup

---

*Last updated: <% tp.date.now("YYYY-MM-DD") %>*