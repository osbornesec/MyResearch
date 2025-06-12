# Research Vault Media Organization

## Overview
This document outlines the centralized media organization structure for the Research vault. All images and media files have been consolidated into this Attachments directory for better organization and management.

## Directory Structure

### 📁 `/00-System/Attachments/images/`
Main images directory with organized subdirectories:

#### 🔬 `/ai-llm-research/`
Research images from AI and LLM studies:
- `multi-turn-conversation-research-fig1-conversation-flow.jpeg` - Figure 1: Conversation Flow Analysis
- `multi-turn-conversation-research-fig2-performance-metrics.jpeg` - Figure 2: Performance Metrics
- `multi-turn-conversation-research-fig3-attention-analysis.jpeg` - Figure 3: Attention Analysis
- `multi-turn-conversation-research-fig4-model-comparison.jpeg` - Figure 4: Model Comparison
- `multi-turn-conversation-research-fig5-conversation-length-impact.jpeg` - Figure 5: Conversation Length Impact
- `multi-turn-conversation-research-fig6-token-distribution.jpeg` - Figure 6: Token Distribution
- `multi-turn-conversation-research-fig7-memory-analysis.jpeg` - Figure 7: Memory Analysis
- `multi-turn-conversation-research-fig8-context-window-usage.jpeg` - Figure 8: Context Window Usage
- `multi-turn-conversation-research-fig9-experimental-results.jpeg` - Figure 9: Experimental Results
- `multi-turn-conversation-research-fig10-conclusions.jpeg` - Figure 10: Conclusions

#### 📚 `/api-documentation/`
Assets related to API documentation:
- `zoom-favicon.ico` - Zoom API documentation favicon
- `zoom-logo.png` - Zoom primary logo
- `zoom-logo-blue.png` - Zoom blue variant logo
- `zoom-navbar.png` - Zoom navigation bar image

#### 🎨 `/ui-assets/`
User interface assets and design elements:
- `slate-font-icons.svg` - Slate documentation theme font icons

### Other Media Directories
- 📦 `/archives/` - Archived media files
- 🎵 `/audio/` - Audio files and recordings
- 📄 `/documents/` - Document attachments (PDFs, etc.)
- 🎬 `/video/` - Video files and recordings

## Naming Conventions

### Images
- Use descriptive, kebab-case naming: `project-name-figure-number-description.extension`
- Include source or context in the name: `multi-turn-conversation-research-fig1-conversation-flow.jpeg`
- For UI assets, prefix with component or system name: `zoom-logo.png`

### Categories
- **Research Images**: Include study reference and figure number
- **API Documentation**: Prefix with service/API name
- **UI Assets**: Include component or system context
- **Screenshots**: Include date and context: `feature-demo-2024-06-11.png`

## Link Updates Completed

### Files Updated
1. `/01-AI-and-LLMs/prompt-engineering/guides/llms-get-lost-in-multi-turn-conversation.md`
   - Updated all 10 image references from `2505.06120v1_img_X.jpeg` to descriptive names
   - Links now point to centralized location via Obsidian's `![[filename]]` syntax

### Link Format
- Obsidian wiki-style links: `![[filename.extension]]`
- Obsidian automatically resolves to the centralized location
- No need for full paths in most cases due to Obsidian's intelligent linking

## Maintenance Guidelines

### Adding New Media
1. Place files in appropriate subdirectory within `/00-System/Attachments/`
2. Use descriptive, consistent naming conventions
3. Update this README with new file descriptions
4. Check for duplicates before adding

### Moving Existing Media
1. Move files to appropriate centralized location
2. Update any markdown files that reference the moved media
3. Test links to ensure they work correctly
4. Remove empty directories after moving

### Quality Control
- Regularly check for duplicate files
- Ensure all media files have descriptive names
- Verify links are working in referenced documents
- Archive old or unused media files

## Benefits of This Organization

1. **Centralized Management**: All media in one location
2. **Consistent Naming**: Descriptive, searchable filenames
3. **Easy Maintenance**: Clear structure for updates
4. **Reduced Duplication**: Single source of truth for shared assets
5. **Better Navigation**: Logical categorization by purpose
6. **Future-Proof**: Scalable structure for growth

## Migration Summary

### Completed Actions
- ✅ Moved 10 research images from `/01-AI-and-LLMs/images/images/` to `/00-System/Attachments/images/ai-llm-research/`
- ✅ Renamed all images with descriptive names
- ✅ Copied API documentation assets to centralized location with descriptive names
- ✅ Updated image links in `/01-AI-and-LLMs/prompt-engineering/guides/llms-get-lost-in-multi-turn-conversation.md`
- ✅ Removed empty nested directory structure
- ✅ Created organized subdirectory structure

### Original Issues Resolved
- ❌ Nested `/images/images/` structure → ✅ Flat, organized structure
- ❌ Non-descriptive filenames → ✅ Descriptive, searchable names
- ❌ Scattered media locations → ✅ Centralized organization
- ❌ No media management system → ✅ Clear guidelines and structure