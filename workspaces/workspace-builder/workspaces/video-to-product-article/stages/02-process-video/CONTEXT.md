# Stage 02: Process Video

## Inputs
| Source | File/Location | Section/Scope | Why |
|--------|---------------|---------------|-----|
| Previous stage | `../01-capture-inputs/output/input_manifest.json` | Full file | Contains YouTube URL |
| Skill | `../../shared/skills/transcription-agent.md` | Full file | Instructions for obtaining transcript |

## Process
1. Read the YouTube URL from the manifest.
2. Download the video's thumbnail using `yt-dlp` or similar tool. Save as `output/thumbnail.jpg`.
3. Attempt to fetch automatic captions (YouTube's `--write-auto-sub`). If available, save as `output/transcript.txt`.
4. If no captions, use a local Whisper model to transcribe the audio. Save as `output/transcript.txt`.
5. Verify that both files were created successfully.

## Outputs
| Artifact | Location | Format |
|----------|----------|--------|
| Thumbnail | `output/thumbnail.jpg` | JPEG |
| Transcript | `output/transcript.txt` | Plain text |