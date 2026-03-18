# Workspace: video-to-product-article

## Inputs
| Source | File/Location | Section/Scope | Why |
|--------|---------------|---------------|-----|
| User | (no file) | n/a | The user provides three pieces of information interactively: YouTube URL, manufacturer URL, and category. |

## Process
1. Execute stage 01-capture-inputs to capture the three required inputs
2. Execute stage 02-process-video to download thumbnail and transcribe audio
3. Execute stage 03-extract-metadata to extract product information from transcript
4. Execute stage 04-gather-assets to download product images and resources
5. Execute stage 05-generate-article to create the final markdown article

## Outputs
| Artifact | Location | Format |
|----------|----------|--------|
| Final article | `stages/05-generate-article/output/article.md` | Markdown with YAML frontmatter |