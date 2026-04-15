# Stage 02: Sample Data Seeding

Create 5 sample records maximum per collection for testing and development.

## Inputs

| Source | File/Location | Section/Scope | Why |
|--------|--------------|---------------|-----|
| Previous stage | `../01-backend-setup/output/` | Full file | Configured Payload CMS backend from Stage 1 |
| Universal coding rules | `../../../../shared/vibe-code-rules.md` | Full document | Enforce production-quality standards, git workflow, security, file size limits, and no-scope-creep rules |
| Reference | `../../../../shared/branding-guidelines.md` | Full file | Church branding guidelines for visual consistency in samples |
| Reference | `../../../../shared/content-policies.md` | Full file | Content policies and standards for appropriate sample data |

## Process

1. Create sample data templates for each collection type (Posts, Pages, Events, etc.)
2. Generate 5 sample records maximum per collection for testing
3. Import sample media files (images, PDFs under 50MB limit)
4. Import sample logo and favicon files for theme testing
5. Create sample global content (Header, Footer, ChurchInfo, TopBar)
6. Establish sample relationships between collections
7. Populate database with test data
8. Verify local admin panel is populated with visible sample content
9. Configure sample logos and favicons in the system
10. Set theme variables with sample values
11. Create test data for historical timeline and events features
12. Test import/export functionality with sample data
13. Test email notifications (Resend)
14. Verify R2 storage with sample media uploads

## Checkpoints

| After Step | Agent Presents | Human Decides |
|------------|---------------|---------------|
| 4 | Sample media and logo/favicon imports | Whether sample files were imported correctly |
| 8 | Database population status | Whether test data was populated successfully |
| 11 | Theme variables and sample logos configuration | Whether theme variables and sample logos are properly set |
| 13 | Email notifications test | Whether Resend email notifications work with sample data |
| 14 | R2 storage verification | Whether sample media uploads work correctly with R2 storage |

## Audit

| Check | Pass Condition |
|-------|---------------|
| Sample records limit | Maximum 5 sample records per collection |
| Sample media imports | Images and PDFs under 50MB limit imported successfully |
| Sample logo/favicon | Sample logo and favicon files imported and configured |
| Global content | Sample Header, Footer, ChurchInfo, TopBar content created |
| Relationships | Sample relationships between collections established |
| Database population | Test data successfully populated in database |
| Admin panel visibility | Local admin panel shows visible sample content |
| Logo/favicon configuration | Sample logos and favicons properly configured in system |
| Theme variables | Theme variables set with sample values |
| Historical timeline/test data | Test data created for historical timeline and events features |
| Import/export test | Import/export functionality tested successfully with sample data |
| Email notifications test | Resend email notifications tested and working |
| R2 storage verification | R2 storage verified with successful sample media uploads |

## Outputs

| Artifact | Location | Format |
|----------|----------|--------|
| Sample data seeded database | `stages/02-sample-data/output/` | Database populated with test data (5 records max per collection) |