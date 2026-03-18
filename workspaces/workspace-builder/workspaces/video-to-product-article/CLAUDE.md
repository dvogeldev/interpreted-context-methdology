# Video to Product Article

This workspace transforms a YouTube URL, manufacturer URL, and category into a markdown article with embedded media, following the Model Workspace Protocol (MWP).

## Folder Map

```
video-to-product-article/
├── CLAUDE.md              (you are here)
├── CONTEXT.md             (start here for task routing)
├── setup/
│   ├── questionnaire.md   (onboarding -- run with "setup")
│   └── setup              (setup script)
├── shared/                (shared skills and resources)
│   └── skills/
│       ├── transcription-agent.md   # Instructions for YouTube transcript extraction
│       ├── image-scraper.md         # How to scrape and select product images
│       └── article-writer.md        # How to structure the article, insert media, and add CTA
├── _config/               (factory configuration)
│   ├── brand-voice.md     (your definitive brand voice)
│   └── seo-rules.md       (SEO best practices)
├── stages/                (five-stage workflow)
│   ├── 01-capture-inputs/     (YouTube URL, manufacturer URL, category)
│   │   ├── CONTEXT.md
│   │   └── output/              (input_manifest.json)
│   ├── 02-process-video/      (download thumbnail, transcribe audio)
│   │   ├── CONTEXT.md
│   │   └── output/              (thumbnail.jpg, transcript.txt)
│   ├── 03-extract-metadata/   (extract product name, part#, manufacturer, category)
│   │   ├── CONTEXT.md
│   │   └── output/              (metadata.json)
│   ├── 04-gather-assets/      (download product images and resources)
│   │   ├── CONTEXT.md
│   │   └── output/              (media/, asset-manifest.json)
│   └── 05-generate-article/   (write article in markdown with CTA)
│       ├── CONTEXT.md
│       └── output/              (article.md)
```

## Triggers

| Keyword | Action |
|---------|--------|
| `setup` | Run onboarding questionnaire -- configures brand voice, SEO rules, and other preferences |
| `status` | Show pipeline completion for all five stages |

### How `status` works

Scan `stages/*/output/` folders. For each stage, if the output folder contains files (other than .gitkeep), the stage is COMPLETE. Otherwise it is PENDING. Render:

```
Pipeline Status: video-to-product-article

  [01-capture-inputs]  ------>  [02-process-video]  ------>  [03-extract-metadata]  ------>  [04-gather-assets]  ------>  [05-generate-article]
     STATUS                    STATUS                    STATUS                    STATUS                    STATUS
   (files...)                (files...)                  (files...)                (files...)                (files...)
```

## Routing

| Task | Go To |
|------|-------|
| Capture inputs (YouTube URL, manufacturer URL, category) | `stages/01-capture-inputs/CONTEXT.md` |
| Process video (download thumbnail, transcribe audio) | `stages/02-process-video/CONTEXT.md` |
| Extract metadata (product name, part#, manufacturer, category) | `stages/03-extract-metadata/CONTEXT.md` |
| Gather assets (download product images and resources) | `stages/04-gather-assets/CONTEXT.md` |
| Generate article (write markdown article with CTA) | `stages/05-generate-article/CONTEXT.md` |
| Configure this workspace | `setup/questionnaire.md` |

## What to Load

| Task | Load These | Do NOT Load |
|------|-----------|-------------|
| Capture inputs | (none - interactive) | All stage references |
| Process video | `shared/skills/transcription-agent.md` | Other stage references |
| Extract metadata | `../02-process-video/output/transcript.txt`, `../01-capture-inputs/output/input_manifest.json`, `_config/brand-voice.md` | Other stage references |
| Gather assets | `../01-capture-inputs/output/input_manifest.json`, `../03-extract-metadata/output/metadata.json`, `shared/skills/image-scraper.md` | Other stage references |
| Generate article | `../02-process-video/output/transcript.txt`, `../03-extract-metadata/output/metadata.json`, `../04-gather-assets/output/asset-manifest.json`, `_config/brand-voice.md`, `_config/seo-rules.md`, `shared/skills/article-writer.md` | Other stage references |

## Stage Handoffs

Each stage writes its output to its own `output/` folder. The next stage reads from there. If you edit an output file between stages, the next stage picks up your edits. This is the primary way to steer the pipeline.

## Important Notes

- All intermediate outputs are human-editable plain text files (JSON, markdown, images, etc.)
- Stage 03 includes a checkpoint where you must verify and correct extracted metadata
- This workspace incorporates VIBE-CODE-RULES.md guidelines for production-quality outputs
- Never assume values for placeholders - all configurable options remain as `{{PLACEHOLDER}}` patterns to be set via setup