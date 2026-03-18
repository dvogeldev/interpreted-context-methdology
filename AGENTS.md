# Agent Guidelines for Interpreted Context Methodology (ICM) Repository

This file provides instructions for agentic coding agents working in this repository. It covers build/lint/test commands, code style guidelines, and repository-specific conventions.

## Repository Overview

This repository implements the Model Workspace Protocol (MWP) - a framework for building structured, multi-stage AI workflows using markdown files and folder conventions. Each workspace provides agents with the right context at each stage of a task.

Key directories:
- `_core/` - Shared conventions and templates
- `workspaces/` - Individual workflow implementations:
  - `script-to-animation/` - Content idea -> animated video
  - `course-deck-production/` -> Course PowerPoints from source material
  - `workspace-builder/` - Builds new MWP workspaces

## Incorporating Vibe Code Rules

For all coding projects generated from this repository (particularly from the workspace-builder), you MUST incorporate the VIBE-CODE-RULES.md guidelines:

1. **Read the full VIBE-CODE-RULES.md** before writing any code in generated workspaces
2. **Create a project-specific AGENTS.md** in each generated workspace that extends these global rules with project-specific context
3. **Apply all rules** from VIBE-CODE-RULES.md unless explicitly overridden by a project's AGENTS.md

Key principles from VIBE-CODE-RULES.md that apply to all generated coding projects:
- Mindset: You are a senior software engineer writing production-quality code
- No scope creep: Don't add features, files, or changes not explicitly requested
- Git hygiene: Work on feature branches, commit frequently with clear messages
- Code quality: Keep files under 300 lines, functions under 50 lines, no `any` types
- Security: Never commit secrets, validate all input, use HTTPS
- Testing: Write integration tests, test happy and failure paths
- UI/UX: No emojis in UI, consistent spacing, proper loading/error states
- Performance: No unnecessary dependencies, lazy load heavy components
- Documentation: Keep docs updated, store API docs locally

## Build/Lint/Test Commands

This repository is primarily documentation and configuration-based. There are no traditional build steps, but there are validation and setup processes.

### Setup Commands

To initialize a workspace:
```bash
# Navigate to a workspace and run setup
cd workspaces/script-to-animation
# Then in Claude Code, type: setup
```

### Status Commands

To check pipeline progress:
```bash
# Navigate to a workspace and run status
cd workspaces/script-to-animation
# Then in Claude Code, type: status
```

### Validation Commands

Workspaces can be validated by running through the complete pipeline:
1. Run `setup` to configure the workspace
2. Execute each stage in order (01, 02, 03, etc.)
3. Verify outputs are generated correctly
4. Check that all placeholders are resolved

### Testing Approach

Since this is a protocol/documentation repository, testing involves:
- Manual verification of workspace functionality
- Checking that all CONTEXT.md files follow the required format
- Ensuring stage handoffs work correctly
- Verifying that setup questionnaires populate all placeholders

There are no automated test frameworks configured in this repository.

## Code Style Guidelines

### General Principles

Following the MWP Conventions documented in `_core/CONVENTIONS.md`:

1. **Plain text as interface** - All communication through markdown files
2. **Layered context loading** - Agents load only what they need for current stage
3. **Every output is an edit surface** - Intermediate outputs are human-editable
4. **Configure the factory, not the product** - One-time setup configures the system

### File Organization

#### Folder Naming Conventions
- Folders and files: `lowercase-with-hyphens`
- Stage folders: zero-padded numbers prefix: `01-`, `02-`, `03-`
- No spaces in file or folder names
- Placeholders: `{{SCREAMING_SNAKE_CASE}}`
- Output artifacts: `[topic-slug]-[artifact-type].md`

#### CONTACT.md Files
All CONTEXT.md files follow this exact three-section structure:

```markdown
## Inputs
| Source | File/Location | Section/Scope | Why |
|--------|--------------|---------------|-----|

## Process
1. Step one
2. Step two
3. Step three

## Outputs
| Artifact | Location | Format |
|----------|----------|--------|
```

Constraints:
- CONTEXT.md files: under 80 lines
- Reference files: under 200 lines (split if longer)
- Use plain English, avoid jargon
- No em dashes anywhere in the repo

### Stage Contracts

Each stage defines a contract with:
1. **Inputs** - Explicitly scoped using selective section routing
2. **Process** - Numbered steps the agent follows
3. **Outputs** - Artifacts produced and their locations

#### Selective Section Routing
In Inputs tables, specify exact sections to load:
```
| File | Section to Load | Why |
|------|----------------|-----|
| voice-rules.md | "Voice Rules" through "What the Voice Is NOT" | Tone guidance |
```

When a full file is needed, write "Full file" in the Section/Scope column.

#### Stage Handoffs
- Every stage has an `output/` subfolder
- Stage N writes to: `stages/0N-name/output/artifact-name.md`
- Stage N+1 reads from: `../0N-name/output/artifact-name.md`
- File naming: `[topic-slug]-[stage-artifact].md`

### Quality Guidelines

1. **Canonical Sources** - Every piece of information has ONE home
2. **Docs Over Outputs** - Reference docs are authoritative, not previous outputs
3. **Shared Constants** - For code workspaces, configurable values live in shared imports
4. **Checkpoints** - Creative stages pause for human steering between steps
5. **Stage Audits** - Quality checklists run before writing output
6. **Value Validation** - Define what types of value output should deliver

### Prohibited Patterns
- Circular dependencies between stages (A references B, B references A)
- Duplicating information across files (violates canonical sources)
- CONTEXT.md files containing actual reference material (should only route)
- Loading full files when only sections are needed (wastes tokens)

### Workspace-Specific Guidelines

#### Script-to-Animation Workspace
- Uses Remotion for video generation
- Bundled skills: `remotion-best-practices`, `frontend-design`
- Brand configuration in `brand-vault/`
- Platform specs in `shared/platform-specs.md`

#### Course Deck Production Workspace
- Generates PowerPoint decks via html2pptx
- Bundled skills: `pptx`, `frontend-design`
- Design system in `design-system/`
- Producer identity in `shared/producer-identity.md`

#### Workspace Builder Workspace
- Creates new MWP-compliant workspaces
- Follows all MCP conventions automatically
- Outputs validated workspaces to `workspaces/[name]/`

### Agent Behavior Guidelines

When working in this repository:
1. Always read the relevant CLAUDE.md for the workspace you're in
2. Follow the exact folder structure and naming conventions
3. Respect the layered context loading principle - only load what's needed
4. Treat every intermediate output as a human-edit surface
5. When creating new workspaces, use the workspace-builder
6. Never commit output folders (they should only contain `.gitkeep`)
7. Keep CONTEXT.md files under 80 lines
8. Keep reference files under 200 lines
9. Use selective section routing to minimize token usage
10. Follow the one-way reference principle (no circular dependencies)

### Trigger Keywords

All workspaces recognize:
- `setup` - Starts onboarding questionnaire
- `status` - Shows pipeline completion diagram

Workspaces may define additional triggers in their CLAUDE.md files.

## Summary

This repository implements a file-based AI workflow system where folder structure replaces traditional orchestration code. Agents work by reading markdown files in a specific order, with each stage producing human-editable outputs. The system emphasizes simplicity, transparency, and human-in-the-loop validation over complex automation.

When working in this repository, focus on maintaining the clean separation of concerns, following the exact formatting conventions, and preserving the editability of all intermediate artifacts.