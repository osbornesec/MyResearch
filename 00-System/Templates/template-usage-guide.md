# 📝 Template Usage Guide

This guide explains when and how to use each template in your research vault.

## Template Selection Matrix

| Content Type | Template | When to Use |
|--------------|----------|-------------|
| Daily work tracking | **Daily Note** | Every day for planning and reflection |
| Meeting documentation | **Meeting Note** | Any meeting, interview, or discussion |
| Academic/technical research | **Research Note** | Deep research on specific topics |
| Work initiatives | **Project Note** | Multi-step projects with clear objectives |
| Content analysis | **Book Article Review** | Books, papers, articles, videos |
| Knowledge organization | **MOC** | Creating topic overviews and navigation |
| Progress tracking | **Weekly Review** | Weekly reflection and planning |

## Quick Start Workflows

### Starting a New Research Topic
1. Create initial note using **Research Note** template
2. As you gather sources, use **Book Article Review** template for each source
3. When you have enough content, create a **MOC** to organize everything
4. Link the MOC to your domain-specific MOC (01-05 folders)

### Managing a Project
1. Start with **Project Note** template
2. Use **Meeting Note** template for project discussions
3. Create **Research Note** entries for background research
4. Update project note weekly during **Weekly Review**
5. Create final summary when project completes

### Daily Knowledge Work
1. Start day with **Daily Note** template
2. Capture quick ideas in **Inbox** folder
3. Use appropriate templates to process inbox items
4. End day by updating daily note with insights
5. Weekly, use **Weekly Review** to assess progress

## Template Customization Tips

### Adapting Templates
- Remove sections you don't need
- Add domain-specific fields
- Adjust tag structures for your workflow
- Modify YAML frontmatter for your plugins

### Common Customizations
- **Research Note**: Add confidence ratings, methodology details
- **Project Note**: Include budget tracking, stakeholder communications
- **Meeting Note**: Add pre-meeting preparation section
- **Book Review**: Include recommendation matrix, reading time

## YAML Frontmatter Guide

### Standard Fields
```yaml
title: "Note Title"
date: 2024-11-06
type: [research|project|meeting|review|moc]
status: [active|completed|on-hold|archived]
tags: [domain-specific-tags]
```

### Advanced Fields
```yaml
domain: [ai-llms|software-dev|business-analysis|api-docs|methodology]
priority: [high|medium|low]
confidence: [high|medium|low]
related_projects: []
stakeholders: []
```

## Linking Strategies

### Internal Linking Best Practices
- Link to related notes as you write
- Use descriptive link text: `[[Note Title|descriptive text]]`
- Create bidirectional links when appropriate
- Link to relevant MOCs for context

### Cross-Domain Connections
- Always consider connections to other domains
- Use tags to create thematic connections
- Link to Master MOC when appropriate
- Create cross-references in MOCs

## Template Maintenance

### Regular Updates
- Review templates monthly for improvements
- Update based on actual usage patterns
- Gather feedback from your own experience
- Simplify sections that aren't being used

### Version Control
- Keep template change log
- Test changes on copy before updating originals
- Consider seasonal variations (quarterly reviews, etc.)
- Backup templates before major changes

## Hotkeys and Shortcuts

### Recommended Obsidian Hotkeys
- **Ctrl+Shift+D**: Create Daily Note
- **Ctrl+Shift+M**: Create Meeting Note
- **Ctrl+Shift+R**: Create Research Note
- **Ctrl+Shift+P**: Create Project Note
- **Ctrl+Shift+I**: Quick capture to Inbox

### Template Variables
- `{{date}}`: Current date
- `{{time}}`: Current time
- `{{title}}`: Prompt for title
- `{{date:YYYY-MM-DD}}`: Formatted date

## Troubleshooting

### Common Issues
- **Template not appearing**: Check file location and naming
- **Variables not working**: Ensure Templater plugin is installed
- **Links breaking**: Use consistent naming conventions
- **Frontmatter errors**: Validate YAML syntax

### Performance Tips
- Keep templates concise but comprehensive
- Use folding for long sections
- Consider template inheritance for variations
- Regular cleanup of unused sections

---
**Related:** [[00-System/Templates/]] | [[00-System/Scripts/vault-maintenance]] | [[Master MOC]]