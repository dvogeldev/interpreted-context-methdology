#!/bin/bash

# Setup script for video-to-product-article workspace
# This script guides the user through configuring the workspace

echo "=== Video to Product Article Workspace Setup ==="
echo "This setup will configure your workspace for generating product articles from YouTube videos."
echo ""

# Get brand voice configuration
echo "1. Brand Voice Configuration"
echo "Please provide your brand voice guidelines. You can either:"
echo "   a) Provide a path to an existing brand-voice.md file"
echo "   b) Paste the content directly"
echo -n "Enter your choice (a/b): "
read choice

if [ "$choice" = "a" ]; then
    echo -n "Enter path to your brand-voice.md file: "
    read brand_voice_path
    if [ -f "$brand_voice_path" ]; then
        cp "$brand_voice_path" ../_config/brand-voice.md
        echo "Brand voice configuration copied from $brand_voice_path"
    else
        echo "File not found. Creating placeholder configuration."
        echo "# Brand Voice

[TO BE CONFIGURED DURING SETUP]
- Tone: [to be defined]
- Style guidelines: [to be defined]
- Example phrases: [to be defined]" > ../_config/brand-voice.md
    fi
else
    echo "Please paste your brand voice guidelines (Ctrl+D to finish):"
    cat > ../_config/brand-voice.md
fi

echo ""

# Get default CTA label
echo -n "2. Default CTA Label (e.g., 'Shop Now', 'Learn More', 'Get a Quote'): "
read cta_label
if [ -z "$cta_label" ]; then
    cta_label="Shop Now"
fi

# Get SEO keyword strategy
echo -n "3. SEO Primary Keyword Strategy (e.g., 'product name + category', 'problem-solving phrase'): "
read keyword_strategy
if [ -z "$keyword_strategy" ]; then
    keyword_strategy="product name + category"
fi

# Get local Whisper model path
echo -n "4. Local Whisper Model Path (leave empty if using default 'whisper' command): "
read whisper_path
if [ -z "$whisper_path" ]; then
    whisper_path="whisper"
fi

# Get preferred image count
echo -n "5. Preferred Image Count (default: 3): "
read image_count
if [ -z "$image_count" ] || ! [[ "$image_count" =~ ^[0-9]+$ ]]; then
    image_count=3
fi

# Get preference for downloading PDF resources
echo -n "6. Automatically download linked PDF spec sheets? (yes/no, default: yes): "
read download_pdfs
if [ -z "$download_pdfs" ]; then
    download_pdfs="yes"
fi
download_pdfs=$(echo "$download_pdfs" | tr '[:upper:]' '[:lower:]')
if [ "$download_pdfs" != "yes" ] && [ "$download_pdfs" != "no" ]; then
    download_pdfs="yes"
fi

# Write SEO rules configuration
cat > ../_config/seo-rules.md << EOF
# SEO Best Practices

- Primary keyword: [determined per product using strategy: $keyword_strategy]
- Use H2 for main sections.
- Include at least one image with alt text.
- Meta description: 150-160 characters, include keyword and CTA.
- CTA label: $cta_label (default, can be overridden)
- Target word count: 600-1000 words.
EOF

echo ""
echo "=== Setup Complete ==="
echo "Configuration files have been created in _config/:"
echo "  - brand-voice.md"
echo "  - seo-rules.md"
echo ""
echo "You can now run the workspace stages:"
echo "  1. Run stage 01-capture-inputs to provide YouTube URL, manufacturer URL, and category"
echo "  2. Run stage 02-process-video to download thumbnail and transcript"
echo "  3. Run stage 03-extract-metadata to extract product information"
echo "  4. Run stage 04-gather-assets to download product images and resources"
echo "  5. Run stage 05-generate-article to create the final markdown article"
echo ""
echo "Each stage will pause for human review where necessary."
echo ""