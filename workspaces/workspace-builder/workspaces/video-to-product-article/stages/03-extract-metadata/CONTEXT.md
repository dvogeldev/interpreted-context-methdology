# Stage 03: Extract Metadata

## Inputs
| Source | File/Location | Section/Scope | Why |
|--------|---------------|---------------|-----|
| Previous stage (02) | `../02-process-video/output/transcript.txt` | Full file | Source for product name, part number, manufacturer |
| Previous stage (01) | `../01-capture-inputs/output/input_manifest.json` | Full file | Contains provided category |
| Reference | `../../_config/brand-voice.md` | Full file | Understand brand terms |

## Process
1. Read the transcript and the input manifest.
2. **Extract** the following fields, **never guessing**:
   - Product name
   - Part number (if any)
   - Manufacturer name
   - Category (must match one of the four; if unclear, use checkpoint)
3. If any field is missing or ambiguous, **pause at checkpoint**.

## Checkpoint
- Present the extracted metadata to the user.
- Ask the user to confirm or correct each field.
- Wait for user to edit `output/metadata.json` directly before proceeding.

## Outputs
| Artifact | Location | Format |
|----------|----------|--------|
| Metadata | `output/metadata.json` | JSON |