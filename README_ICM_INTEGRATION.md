# Interpreted Context Methodology (ICM) - VIBE-CODE-RULES Integration

## Overview

This document summarizes the integration of `vibe-code-rules.md` as Layer 3 reference material in the Interpreted Context Methodology (ICM) repository. The integration follows ICM's layered context loading principles to ensure production-quality coding standards are automatically enforced across all coding stages.

## Integration Summary

### What Was Done

1. **Moved `vibe-code-rules.md` to Layer 3 Location**
   - Original location: Root directory
   - New location: `shared/vibe-code-rules.md` (Layer 3 - canonical source)
   - Rationale: Layer 3 contains persistent context (design systems, voice rules, conventions) available to all relevant stages without being re-loaded as run-specific artifacts

2. **Updated Coding-Relevant Stage CONTEXT.md Files**
   - Added explicit Inputs table entries to reference the universal coding rules
   - Added Process step 0 to enforce reading the rules before any code work
   - Modified files:
     - `workspaces/script-to-animation/stages/03-build/CONTEXT.md`
     - `workspaces/course-deck-production/stages/04-generation/CONTEXT.md`
     - `_core/templates/stage-context-template.md` (for future consistency)

3. **Installed Code Review Skill**
   - Added `catlog22/claude-code-workflow@review-code` skill for codebase analysis
   - Available globally across agent environments (Claude Code, Codex, Gemini CLI, etc.)

### Why This Approach Is Optimal in ICM

- **Layered Loading**: Rules only appear in context windows of stages that actually write code. Other stages (research, planning, etc.) remain lean.
- **Canonical Source**: One file, one truth - eliminates duplication and version confusion.
- **Human Edit Surface**: Rules can be opened, modified, and saved - changes are instantly respected in subsequent stage runs.
- **Zero Framework Code**: No custom prompt engineering or extra agents needed - the filesystem handles orchestration.
- **Matches Spec Intent**: Aligns with `vibe-code-rules.md`'s own instruction to "Read in full before writing any code" and create AGENTS.md extensions.

## Detailed Changes Made

### File Movement
```bash
mv vibe-code-rules.md shared/
```

### CONTEXT.md Updates (Example)
Added to Inputs table:
```markdown
| Universal coding rules | `../../../shared/vibe-code-rules.md` | Full document | Enforce production-quality standards, git workflow, security, file size limits, and no-scope-creep rules on every coding task |
```

Added to Process section:
```
0. Before any code is written, read ../../../shared/vibe-code-rules.md in full (Layer 3) and treat every rule as non-negotiable.
```

### Template Update
Updated `_core/templates/stage-context-template.md` to include the universal coding rules reference in all future stage CONTEXT.md files.

### Skill Installation
```bash
npx skills add catlog22/claude-code-workflow@review-code -g -y
```

## VIBE-CODE-RULES.md Principles Enforced

Through this integration, the following universal coding agent rules are now automatically enforced in coding stages:

### 1. Mindset & Role
- Senior software engineer approach with discipline and caution
- No scope creep - only implement explicitly requested features
- Stop and ask when unsure about intent
- Transparency when hitting walls
- Fix issues rather than apologizing

### 2. Project Kickoff Protocol
- Confirm project plan exists before coding
- Create project-specific AGENTS.md extending global rules
- Break plans into sections for incremental implementation
- Critically review and prune plans before building

### 3. Git & Version Control
- Never work directly on main branch
- Use feature branches with clear naming conventions
- Commit frequently with clear messages
- Push to remote after every commit
- Reset and re-approach after multiple failed attempts
- Start features from clean git state

### 4. Code Quality Standards
- Keep files under 300 lines, functions under 50 lines
- No `any` types in TypeScript
- Use descriptive naming conventions
- Remove commented-out code from committed files
- Avoid hardcoded values - use constants/config
- Follow DRY principle
- Favor small, modular architecture

### 5. Security
- Never commit secrets - use environment variables
- Never log sensitive data
- Validate all user input (client and server-side)
- Keep dependencies updated
- Use HTTPS for all external API calls
- Store `.env.example` with required variables
- Enable Row-Level Security (RLS) on database tables
- Audit routes that bypass RLS
- Never hardcode client-specific content

### 6-12. Additional Domains
Similar comprehensive coverage exists for debugging, testing, UI/UX, content standards, performance, documentation, and checkpoints/refactoring.

## Using the Review Code Skill

The installed `review-code` skill can be used to:
- Analyze codebase structure and workflows
- Generate summaries for vector database ingestion
- Identify patterns and potential improvements
- Review code quality and adherence to standards

To use the skill:
1. Navigate to the target repository
2. Invoke Claude Code and request a codebase review
3. The skill will automatically activate and provide structured analysis

## Future Maintenance

When creating new workspaces or stages:
1. The `_core/templates/stage-context-template.md` ensures new stages automatically include the vibe-code-rules reference
2. For existing workspaces, manually add the reference following the pattern above
3. Periodically check that `shared/vibe-code-rules.md` is up to date with the latest standards

## Verification

To confirm the integration is working:
1. Check that `shared/vibe-code-rules.md` exists
2. Verify that coding stage CONTEXT.md files contain the reference
3. Ensure new stages generated from the template include the reference
4. Test that the review-code skill is available via `npx skills list`

This integration ensures that all future coding work in ICM workspaces will automatically benefit from the production-quality standards defined in vibe-code-rules.md, following ICM's principles of canonical sources, layered context loading, and human-editable surfaces.