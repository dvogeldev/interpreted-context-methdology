# Stage 04: Real Data Import

Migrate existing website data from the current St. Nicholas Orthodox Church website to Payload CMS.

## Inputs

| Source | File/Location | Section/Scope | Why |
|--------|--------------|---------------|-----|
| Previous stage | `../03-frontend-dev/output/` | Full file | Fully functional website with sample data from Stage 3 |
| Universal coding rules | `../../../../shared/vibe-code-rules.md` | Full document | Enforce production-quality standards, git workflow, security, file size limits, and no-scope-creep rules |
| Reference | `../../../../shared/branding-guidelines.md` | Full file | Logo and favicon files from existing branding |
| Reference | `../../../../shared/content-policies.md` | Full file | Content policies for data appropriateness review |
| Reference | `../../../../skills/data-migration/SKILL.md` | Full file | Data migration strategies and tools |

## Process

1. Map existing website data fields to Payload CMS collections and fields
2. Validate and cleanse existing data according to data validation rules
3. Import content from existing website into Payload CMS collections
4. Migrate media files from existing website to Payload Media Collection (R2 storage)
5. Update relationships between imported content
6. Preserve URLs and SEO metadata where applicable
7. Archive or redirect legacy content as needed
8. Generate data validation report showing import success/failure rates
9. Establish content review workflow for imported items
10. Create backup of original existing website data
11. Import logo and favicon from existing branding and configure in Header component
12. Import and apply theme settings from existing site
13. Import historical timeline data from archives and configure for display
14. Import events data from current calendar systems and configure for display
15. Validate import/export functionality with real data
16. Configure email notification templates (Resend)
17. Optimize imported media files for web delivery
18. Verify accessibility of imported content

## Checkpoints

| After Step | Agent Presents | Human Decides |
|------------|---------------|---------------|
| 4 | Media files migration to R2 storage | Whether media files migrated correctly to R2 storage |
| 8 | Data validation report status | Whether import success/failure rates are acceptable |
| 11 | Logo/favicon and theme configuration | Whether imported branding elements work correctly |
| 14 | Events data import and display | Whether events data imports and displays properly |
| 16 | Email notification templates | Whether Resend templates are configured correctly |
| 18 | Accessibility verification | Whether imported content meets accessibility standards |

## Audit

| Check | Pass Condition |
|-------|---------------|
| Data mapping | Existing website data fields correctly mapped to Payload CMS collections |
| Data validation | Data cleansed according to validation rules before import |
| Content import | Content successfully imported into Payload CMS collections |
| Media migration | Media files migrated to Payload Media Collection (R2 storage) |
| Relationship preservation | Relationships between imported content maintained |
| URL/SEO preservation | URLs and SEO metadata preserved where applicable |
| Legacy handling | Legacy content properly archived or redirected |
| Validation report | Data validation report shows acceptable import success rates |
| Review workflow | Content review workflow established for imported items |
| Backup created | Backup of original existing website data created |
| Branding import | Logo and favicon from existing branding configured in Header |
| Theme import | Theme settings from existing site imported and applied |
| Historical timeline | Data imported from archives and configured for display |
| Events import | Data imported from calendar systems and configured for display |
| Import/export validation | Functionality validated with real data |
| Email templates | Resend notification templates configured |
| Media optimization | Imported media files optimized for web delivery |
| Accessibility verification | Imported content verified for accessibility compliance |

## Outputs

| Artifact | Location | Format |
|----------|----------|--------|
| Website with real data | `stages/04-real-data-import/output/` | Payload CMS website with migrated content and media |