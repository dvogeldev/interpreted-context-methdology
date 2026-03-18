# Conversation Summary: Workspace-Builder Usage for PayloadCMS Project

## Goal
User wanted to understand how to use the workspace-builder for building a PayloadCMS project, specifically:
1. Whether the workspace-builder can be used standalone
2. Whether workflows built with workspace-builder are standalone
3. How to properly separate development phases when using workspace-builder
4. Whether to create multiple workspace-builder instances or one for all phases

## Instructions from User
- Initial question: "Can i use the @workspace-builder/ as a standalone?"
- Follow-up: "once a new workflow is built, is that standalone?"
- Process question: "what is the preferred use for the workflow builder? in other words, in web developement you first setup the backend then move to the frontend. In each phase are multiple steps ex. schema(collections) capture and output components. Would you also include the next phase and it's steps or keep them separate"
- Practical application: "So break down the phases of development for a payloadcms project from backend to frontend to deployed, polished website."
- Final clarification: "So to answer my initial question, would i create 5 individual @workspace-builder/ 's or one with all the phases?"

## Discoveries
1. **Workspace-Builder Dependencies**: The workspace-builder is not completely standalone as it depends on shared resources in the `_core/` directory (templates, placeholder syntax, conventions) during the workspace generation process.

2. **Generated Workspace Standalone Nature**: Once a workflow is built using workspace-builder, the generated workspace IS standalone for executing that specific workflow. It contains all necessary stage definitions, templates, and configuration within its own folder structure.

3. **Phase Separation Principle**: When building workflows, phases must be strictly separated:
   - Each stage should focus ONLY on its own inputs, process, and outputs
   - Do NOT load or include steps from future stages
   - Use selective section routing to minimize token usage
   - Output artifacts of one stage become inputs for the next stage via clean handoffs

4. **PayloadCMS Implementation Approach**: For a PayloadCMS project, the recommended 5-stage breakdown following MWP principles:
   - Stage 01: Discovery & Requirements (understanding content needs)
   - Stage 02: Backend Schema Design (PayloadCMS collections, fields, access control)
   - Stage 03: Backend Implementation (initializing PayloadCMS project, implementing collections)
   - Stage 04: Frontend Planning (component architecture, data fetching strategy)
   - Stage 05: Frontend Implementation & Deployment (building UI, deployment configuration)

5. **Single Workspace-Builder Usage**: Users should create ONE workspace-builder instance (use the existing one in the repository) to build a single workspace containing all phases. You do NOT create multiple workspace-builders for different phases.

## What Has Been Accomplished
- Clarified the standalone nature of both the workspace-builder tool and workspaces it generates
- Established clear guidelines for phase separation in MWP workflows
- Provided a concrete example of how to structure PayloadCMS development using the workspace-builder
- Confirmed proper usage pattern: one workspace-builder → one generated workspace with all phases
- Reinforced adherence to both MWP conventions and Vibe Code Rules

## Relevant Files
- `/workspaces/workspace-builder/CLAUDE.md` - Workspace-builder instructions and stage definitions
- `/workspaces/workspace-builder/AGENTS.md` - Agent guidelines incorporating Vibe Code Rules
- `/AGENTS.md` - Repository-wide guidelines for all workspaces
- `/_core/` - Shared conventions and templates directory (referenced during workspace generation)
- Example workspaces: `/workspaces/script-to-animation/` and `/workspaces/course-deck-production/`