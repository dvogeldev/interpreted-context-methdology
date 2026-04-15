# Stage 01: Backend Setup and Configuration

Configure Payload CMS backend with church-specific collections, fields, access control, and required plugins.

## Inputs

| Source | File/Location | Section/Scope | Why |
|--------|--------------|---------------|-----|
| Previous stage | (none) | Full file | Initial stage - no previous output |
| Universal coding rules | `../../../../shared/vibe-code-rules.md` | Full document | Enforce production-quality standards, git workflow, security, file size limits, and no-scope-creep rules |
| Reference | `../../../../shared/branding-guidelines.md` | Full file | Church branding guidelines for visual consistency |
| Reference | `../../../../shared/content-policies.md` | Full file | Rules about appropriate content types and formatting |
| Reference | `../../../../skills/payload-cms/SKILL.md` | Full file | Payload CMS architecture and customization patterns |

## Process

1. Initialize Payload CMS project using the base template
2. Customize payload.config.ts with church-specific collections and fields
3. Configure access control rules for user roles (SuperAdmin, Editor, Author)
4. Register layout blocks and components
5. Configure globals (Header, Footer, ChurchInfo, TopBar)
6. Install and configure required plugins (SEO, resend, import-export, cloud storage)
7. Set up Media Collection for R2 storage integration
8. Configure email notification system with Resend
9. Set up import/export functionality
10. Apply database schema migrations
11. Create public assets directory structure for logos, favicons
12. Configure theme support (CSS variables, dark/light mode toggles)
13. Verify local development environment is running correctly

## Checkpoints

| After Step | Agent Presents | Human Decides |
|------------|---------------|---------------|
| 6 | Plugin installation and configuration status | Whether all required plugins are properly installed and configured |
| 10 | Database schema migrations status | Whether migrations applied successfully without errors |
| 12 | Local development environment status | Whether the environment is running correctly and accessible |

## Audit

| Check | Pass Condition |
|-------|---------------|
| Backend configuration | Payload CMS backend starts without errors |
| Collections and fields | All church-specific collections and fields are properly defined |
| Access control | Role-based access rules are correctly implemented for SuperAdmin, Editor, Author |
| Plugin integration | All specified plugins (SEO, resend, import-export, R2) are installed and configured |
| Media storage | Media Collection is properly configured for R2 storage |
| Email system | Resend email notification system is configured and functional |
| Import/export | Import/export functionality is enabled and tested |
| Public assets | Directory structure for logos, favicons is created |
| Theme support | CSS variables and dark/light mode toggles are configured |

## Outputs

| Artifact | Location | Format |
|----------|----------|--------|
| Configured Payload CMS backend | `stages/01-backend-setup/output/` | Functional backend code with custom collections, fields, access control, and plugins |