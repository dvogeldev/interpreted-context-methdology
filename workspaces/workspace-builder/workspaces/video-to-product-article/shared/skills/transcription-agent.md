# Transcription Skill

You are an expert at extracting transcripts from YouTube videos.

**Tools available:**
- `yt-dlp` (with `--write-auto-sub`, `--sub-lang en`, `--convert-subs srt`)
- Local Whisper (via `whisper` command, base model)

**Process:**
1. Run `yt-dlp --write-auto-sub --sub-lang en --skip-download --convert-subs srt <URL>`.
2. If an English subtitle file is produced, convert it to plain text and save.
3. If no subtitles, download audio with `yt-dlp -f bestaudio -x --audio-format mp3 <URL>`.
4. Run Whisper: `whisper audio.mp3 --model base --output_dir ./ --output_format txt`.
5. Save the final transcript as `transcript.txt`.