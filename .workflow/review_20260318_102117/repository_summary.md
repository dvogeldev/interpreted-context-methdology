# Interpreted Context Methodology (ICM) Repository Summary

## Repository Overview
- Name: interpreted-context-methdology
- Purpose: Implements the Model Workspace Protocol (MWP) - a framework for building structured, multi-stage AI workflows using markdown files and folder conventions
- Key directories: 
  - _core/ - Shared conventions and templates
  - workspaces/ - Individual workflow implementations:
    - script-to-animation/ - Content idea -> animated video
    - course-deck-production/ -> Course PowerPoints from source material
    - workspace-builder/ - Builds new MWP workspaces

## Key Files
- README.md: Exists (length: 1000 chars)
- AGENTS.md: Exists
- icm-thesis.pdf: Exists
- shared/vibe-code-rules.md: Exists

## Workspace Structure

### course-deck-production/
- Has CONTEXT.md (workspace routing)
- Stages: 01-extraction, 02-curriculum, 03-outline, 04-generation, 05-qa-delivery

### script-to-animation/
- Has CONTEXT.md (workspace routing)
- Stages: 01-script, 02-spec, 03-build

### workspace-builder/
- Has CONTEXT.md (workspace routing)
- Stages: 01-discovery, 02-mapping, 03-scaffolding, 04-questionnaire-design, 05-validation

## VIBE-CODE-RULES Integration
The vibe-code-rules.md file has been integrated as Layer 3 reference material:
- Location: shared/vibe-code-rules.md
- Referenced in coding stages:
  - script-to-animation/stages/03-build/CONTEXT.md
  - course-deck-production/stages/04-generation/CONTEXT.md
- Template updated: _core/templates/stage-context-template.md
- Provides universal coding standards including:
  - Mindset: Senior software engineer approach
  - Git hygiene: Feature branches, frequent commits
  - Code quality: File/function size limits, no 'any' types
  - Security: No secrets, input validation, HTTPS
  - Testing: Integration tests, happy/failure paths
  - UI/UX: No emojis, consistent spacing, proper states
  - Performance: No unnecessary deps, lazy loading
  - Documentation: Keep docs updated, store API docs locally

## MCP Principles Followed
- Plain text as interface - all communication through markdown files
- Layered context loading - agents load only what they need
- Every output is an edit surface - intermediate outputs human-editable
- Configure the factory, not the product - one-time setup configures system

## Recent Activity
- Vibe-code-rules.md integration completed
- Review-code skill installed for codebase analysis
- README_ICM_INTEGRATION.md created for vector DB ingestion

Generated at: 2026-03-18T10:21:17.754263
