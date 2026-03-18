# Stage 04: Gather Assets

## Inputs
| Source | File/Location | Section/Scope | Why |
|--------|---------------|---------------|-----|
| Previous stage (01) | `../01-capture-inputs/output/input_manifest.json` | Full file | Contains manufacturer URL |
| Previous stage (03) | `../03-extract-metadata/output/metadata.json` | Full file | Contains product name for alt text |
| Skill | `../../shared/skills/image-scraper.md` | Full file | Instructions for scraping and selecting images |

## Process
1. Read the manufacturer URL from the manifest.
2. Scrape the page for all images.
3. Use AI to select the **most relevant product images** (typically 2‑4). Criteria:
   - Shows the product clearly
   - Avoids logos, navigation icons, low‑resolution placeholders
4. Download selected images into `output/media/`.
   - Rename files: `product-name-description.jpg` (lowercase, dashes for spaces).
   - Generate industry‑best‑practice `alt` attributes (descriptive, includes product name).
5. Check for additional resources (PDF spec sheets, flyers) linked on the page. If found, download them into `output/media/`.
6. Create `output/asset-manifest.json` listing all downloaded files with their paths and alt texts.

## Outputs
| Artifact | Location | Format |
|----------|----------|--------|
| Media folder | `output/media/` | Images & PDFs |
| Asset manifest | `output/asset-manifest.json` | JSON |