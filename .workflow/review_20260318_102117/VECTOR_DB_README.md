# VIBE-CODE-RULES Integration in ICM Repository

## Document Purpose
This document summarizes the integration of vibe-code-rules.md as Layer 3 reference material in the Interpreted Context Methodology (ICM) repository for ingestion into vector databases. It captures the key changes, motivations, and technical details of integrating universal coding standards into an MWP (Model Workspace Protocol) system.

## Core Integration Achievement

Successfully integrated vibe-code-rules.md as canonical Layer 3 reference material in the ICM repository following these principles:
- Moved to shared/vibe-code-rules.md (Layer 3 - persistent context)
- Referenced in coding stage CONTEXT.md files via Inputs tables
- Added mandatory Process step 0 for rule enforcement
- Updated stage-context-template.md for future consistency
- Installed review-code skill for ongoing codebase analysis

## Technical Implementation Details

### File System Changes
1. **Moved vibe-code-rules.md to Layer 3 location**
   - Before: Root directory (ephemeral/run-specific)
   - After: `shared/vibe-code-rules.md` (Layer 3 - canonical source)
   - Rationale: Layer 3 contains persistent context available to all stages without reload

2. **Updated Coding Stage CONTEXT.md Files**
   - Modified: `workspaces/script-to-animation/stages/03-build/CONTEXT.md`
   - Modified: `workspaces/course-deck-production/stages/04-generation/CONTEXT.md`
   - Changes made:
     - Added Inputs table entry:
       ```
       | Universal coding rules | `../../../shared/vibe-code-rules.md` | Full document | Enforce production-quality standards, git workflow, security, file size limits, and no-scope-creep rules on every coding task |
       ```
     - Added Process step 0:
       ```
       0. Before any code is written, read ../../../shared/vibe-code-rules.md in full (Layer 3) and treat every rule as non-negotiable.
       ```

3. **Updated Stage Template**
   - Modified: `_core/templates/stage-context-template.md`
   - Ensures all future generated stages automatically include the reference

### ICM Principles Applied
- **Layered Context Loading**: Rules only load in stages that write code
- **Canonical Source**: One file, one truth - eliminates duplication
- **Human Editable Surface**: Rules can be modified and instantly respected
- **Zero Framework Overhead**: Filesystem handles orchestration
- **Docs Over Outputs**: Reference docs are authoritative, not previous outputs

## VIBE-CODE-RULES Principles Now Enforced

Through this integration, the following universal coding standards are automatically enforced in ICM coding stages:

### Mindset & Role
- Senior software engineer discipline
- Zero scope creep - only implement explicitly requested features
- Stop and ask when uncertain about intent
- Transparent problem-solving (explain attempts and suggest paths forward)
- Fix issues directly rather than apologizing

### Project Protocol
- Confirm project plan exists before coding
- Create project-specific AGENTS.md extending global rules
- Implement in sections with frequent commits
- Critically review and prune plans before building

### Git & Version Control
- Never work directly on main branch
- Feature branch naming: `feature/short-description`, `fix/short-description`
- Commit after every working change with clear messages
- Push to remote after every commit
- Reset to last good commit after 3+ failed attempts
- Start features from clean git state

### Code Quality Standards
- Files under 300 lines, functions under 50 lines
- No `any` types in TypeScript
- Descriptive naming: `getUserSalesMetrics()` not `getData()`
- No commented-out code in committed files
- No hardcoded values - use constants/config/environment variables
- DRY principle - extract duplicated logic
- Favor small, modular architecture

### Security Practices
- Never commit API keys/secrets - use .env files
- Never log sensitive data
- Validate all user input (client and server-side)
- Keep dependencies updated with npm audit
- Use HTTPS for all external API calls
- Store .env.example with required variables (no values)
- Enable Row-Level Security (RLS) on all database tables
- Audit routes that bypass RLS for ownership validation
- Never hardcode client-specific content - store in database

### Testing Requirements
- Write integration tests per feature (happy AND failure paths)
- Test error conditions: API failures, empty forms, network issues
- Test in standalone prototype first for complex features
- Use reference implementations when available as baseline

### UI/UX Standards
- Zero emojis in UI components
- Consistent spacing scale (e.g., 4/8/12/16/24/32/48px)
- One font family maximum (two at most: heading + body)
- Sufficient contrast for readability (test light/dark themes)
- Required loading states for async operations
- Required error states that users can see and act on

### Content & Copy Standards
- No placeholder text in committed code (no Lorem ipsum/TODOs)
- Every word must earn its place - cut if meaning unchanged
- Avoid AI-sounding phrases: "leverage," "streamline," "empower," etc.
- No fake social proof (testimonials, user counts, case studies)
- Specific CTAs: "Start Free Trial" not "Get Started"
- Maximum one em-dash per page

### Performance Guidelines
- No unnecessary dependencies - build simple features in <50 lines
- Lazy load heavy components and routes
- All async operations need loading AND error states
- Debounce search inputs and expensive operations
- Optimize images: compress, WebP format, lazy load below-fold

### Documentation Rules
- Keep project docs updated as you build (not "later")
- Store API documentation locally in /docs/api/
- Every project needs README.md with setup/run/deploy instructions
- Document non-obvious decisions with one-line explanations

## Installed Supporting Skill

Added `catlog22/claude-code-workflow@review-code` skill for ongoing codebase analysis:
- Multi-dimensional review across correctness, readability, performance, security, testing, architecture
- Generates structured reports with severity levels ([C]ritical to [I]nfo)
- Follows phased execution: collect context → quick scan → deep review → generate report
- Available globally across agent environments (Claude Code, Codex, Gemini CLI, etc.)

## Usage Instructions for Vector Database

To ingest this information into a vector database:

1. **Text Preparation**: Use the content of this document as the primary text for embedding
2. **Metadata Tags**: Consider adding these metadata fields:
   - `document_type`: "technical_integration"
   - `repository`: "interpreted-context-methdology"
   - `integration_date`: "2026-03-18"
   - `topics`: ["vibe-code-rules", "ICM", "MWP", "code-standards", "layered-context"]
   - `skill_installed`: "review-code"
   - `files_modified`: ["shared/vibe-code-rules.md", "workspaces/*/stages/*/CONTEXT.md", "_core/templates/stage-context-template.md"]

3. **Chunking Strategy**: For larger vector stores, consider chunking by:
   - Integration overview
   - Technical implementation details
   - Each major section of VIBE-CODE-RULES principles
   - Installed skill information

## Verification of Integration

To confirm successful integration:
```bash
# Check file location
ls -la shared/vibe-code-rules.md

# Check stage references
grep -r "vibe-code-rules" workspaces/*/stages/*/CONTEXT.md

# Check template
grep -r "vibe-code-rules" _core/templates/

# Check skill installation
npx skills list | grep review-code
```

## Future Maintenance

When creating new workspaces or stages:
- New stages from template will automatically include vibe-code-rules reference
- For existing workspaces, manually add reference following the pattern above
- Periodically verify shared/vibe-code-rules.md is current with latest standards
- Use the review-code skill periodically to assess codebase health

## Benefits Achieved

1. **Automatic Standards Enforcement**: All coding stages now enforce vibe-code-rules without manual prompting
2. **Reduced Token Usage**: Selective section loading means rules only load when needed
3. **Consistent Quality**: Universal standards apply across all ICM workspaces
4. **Maintainable Updates**: Single source of truth for coding standards
5. **Skill Enhancement**: Added automated code review capability for ongoing quality assurance

This integration exemplifies ICM's core principle: "Configure the factory, not the product" - establishing foundational standards that automatically benefit all derived work without reconfiguration.