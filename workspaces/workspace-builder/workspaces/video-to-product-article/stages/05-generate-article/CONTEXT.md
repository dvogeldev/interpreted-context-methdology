# Stage 05: Generate Article

## Inputs
| Source | File/Location | Section/Scope | Why |
|--------|---------------|---------------|-----|
| Previous stage (02) | `../02-process-video/output/transcript.txt` | Full file | Content source |
| Previous stage (03) | `../03-extract-metadata/output/metadata.json` | Full file | Product details |
| Previous stage (04) | `../04-gather-assets/output/asset-manifest.json` | Full file | Media references |
| Reference | `../../_config/brand-voice.md` | Full file | Tone and style |
| Reference | `../../_config/seo-rules.md` | Full file | SEO guidelines |
| Skill | `../../shared/skills/article-writer.md` | Full file | Structure and CTA placement |

## Process
1. Read all inputs.
2. Draft a markdown article following the article-writer skill:
   - Engaging title (includes product name)
   - Introduction that hooks the reader
   - Body sections: key features, benefits, use cases (derived from transcript and metadata)
   - Insert images at appropriate places using markdown `![alt](path)`
   - Conclude with a **clear CTA** – the label is provided in `_config/seo-rules.md` (e.g., “Shop Now”, “Learn More”).
3. Run **audit** to ensure SEO best practices:
   - Primary keyword appears in title, first 100 words, and one H2.
   - Meta description present (in frontmatter).
   - Images have alt text.
   - Article is scannable (short paragraphs, bullet points).
4. Save the final article as `output/article.md` with frontmatter containing title, meta description, and category.

## Outputs
| Artifact | Location | Format |
|----------|----------|--------|
| Article | `output/article.md` | Markdown with YAML frontmatter |