# Stage 01: Capture Inputs

## Inputs
| Source | File/Location | Section/Scope | Why |
|--------|---------------|---------------|-----|
| User prompt | (no file) | n/a | The user provides three pieces of information interactively. |

## Process
1. Ask the user for:
   - YouTube video URL
   - Manufacturer's product page URL
   - Category (choose from: `new product`, `howto`, `company`, `manufacturer`)
2. Validate that the URLs are reachable (optional HEAD request).
3. Save the information to `output/input_manifest.json`.

## Outputs
| Artifact | Location | Format |
|----------|----------|--------|
| Input manifest | `output/input_manifest.json` | JSON |