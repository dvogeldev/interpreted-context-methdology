# St. Nicholas Orthodox Church Website Workspace

This workspace implements a six-stage development process for building and launching the St. Nicholas Orthodox Church website using Payload CMS.

## What to Load

When working in this workspace, load the minimum context needed for your current task:

### For All Tasks
- Load the workspace CONTEXT.md for general orientation
- Load the specific stage CONTEXT.md for your current stage

### Stage-Specific Loading

#### Stage 1: Backend Setup
Load from previous stage outputs: None (initial stage)
Load references: 
- Payload CMS documentation
- Plugin documentation for resend, import-export, R2 cloud storage
- Branding guidelines file

#### Stage 2: Sample Data Seeding
Load from Stage 1 output: Configured Payload CMS backend
Load references: 
- Data seeding best practices
- Sample data templates

#### Stage 3: Frontend Development
Load from Stage 2 output: Backend with sample data
Load references: 
- Frontend specifications
- Design system requirements
- Component library requirements

#### Stage 4: Real Data Import
Load from Stage 3 output: Fully functional website with sample data
Load references: 
- Existing website data
- Data mapping documentation
- Logo and favicon files
- Theme configuration
- Historical timeline data
- Events data

#### Stage 5: Testing and Launch Preparation
Load from Stage 4 output: Website with real data
Load references: 
- Test plans and test cases
- Performance benchmarks
- Security audit checklist
- Accessibility testing guidelines
- SEO validation requirements

#### Stage 6: Deployment/Launch
Load from Stage 5 output: Tested and validated website
Load references: 
- Deployment target configurations
- Environment variables for production
- Domain configuration and DNS settings
- SSL/TLS certificate configuration

## Folder Structure

```
st-nicholas-orthodox-church-website/
├── CLAUDE.md
├── CONTEXT.md
├── setup/
│   └── questionnaire.md
├── shared/
│   ├── branding-guidelines.md
│   ├── content-policies.md
│   └── accessibility-requirements.md
├── skills/
│   ├── payload-cms/
│   ├── frontend-design/
│   ├── web-accessibility/
│   └── seo-audit/
├── stages/
│   ├── 01-backend-setup/
│   │   ├── CONTEXT.md
│   │   ├── output/
│   │   │   └── .gitkeep
│   │   └── references/
│   │       ├── plugin-documentation.md
│   │       └── collections-specs.md
│   ├── 02-sample-data/
│   │   ├── CONTEXT.md
│   │   ├── output/
│   │   │   └── .gitkeep
│   │   └── references/
│   │       ├── sample-data-templates.md
│   │       └── media-samples.md
│   ├── 03-frontend-dev/
│   │   ├── CONTEXT.md
│   │   ├── output/
│   │   │   └── .gitkeep
│   │   └── references/
│   │       ├── frontend-specs.md
│   │       └── component-library.md
│   ├── 04-real-data-import/
│   │   ├── CONTEXT.md
│   │   ├── output/
│   │   │   └── .gitkeep
│   │   └── references/
│   │       ├── data-mapping.md
│   │       └── validation-rules.md
│   ├── 05-testing-launch/
│   │   ├── CONTEXT.md
│   │   ├── output/
│   │   │   └── .gitkeep
│   │   └── references/
│   │       ├── test-plans.md
│   │       └── performance-benchmarks.md
│   └── 06-deployment/
│       ├── CONTEXT.md
│       ├── output/
│       │   └── .gitkeep
│       └── references/
│           ├── deployment-configs.md
│           └── environment-vars.md
└── .gitkeep
```

## Triggers

Recognizes the following commands:
- `setup` - Starts the onboarding questionnaire
- `status` - Shows pipeline completion for all six stages

## When to Re-run Stages

After making changes to:
- Stage 1: Re-run stages 2-6
- Stage 2: Re-run stages 3-6
- Stage 3: Re-run stages 4-6
- Stage 4: Re-run stages 5-6
- Stage 5: Re-run stage 6
- Stage 6: No further stages needed