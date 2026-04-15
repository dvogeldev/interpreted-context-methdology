# Onboarding Questionnaire: St. Nicholas Orthodox Church Website

Answer all questions in a single message. These answers will configure your generated workspace.

### Q1: What is the name of the church/organization?
- Examples: "St. Nicholas Orthodox Church", "Holy Trinity Cathedral"
- Type: free text
- Purpose: Sets the {{CHURCH_NAME}} placeholder used throughout the website
- Default: St. Nicholas Orthodox Church

### Q2: What is the physical address of the church?
- Examples: "123 Main Street, Anytown, USA 12345"
- Type: free text
- Purpose: Sets the {{CHURCH_LOCATION}} placeholder for events and ministry listings
- Default: [Please enter your church address]

### Q3: What are the regular worship service times and liturgical calendar details?
- Examples: "Sundays at 9:00 AM and 5:00 PM, Divine Liturgy on feast days"
- Type: free text
- Purpose: Sets the {{SERVICE_SCHEDULE}} placeholder for events and ministry information
- Default: [Please enter your service schedule]

### Q4: Who are the key leadership figures (clergy, staff, volunteers)?
- Examples: "Fr. John Smith (Pastor), Jane Doe (Parish Administrator)"
- Type: free text
- Purpose: Sets the {{LEADERSHIP_NAMES}} placeholder for leadership displays
- Default: [Please enter leadership names]

### Q5: What are the main contact details for the church?
- Examples: "Phone: (555) 123-4567, Email: info@stnicholas.org"
- Type: free text
- Purpose: Sets the {{CONTACT_INFO}} placeholder for contact information
- Default: [Please enter contact details]

### Q6: What is the production domain name for the website?
- Examples: "stnicholasorthodox.org", "holytrinitycathedral.com"
- Type: free text
- Purpose: Sets the {{DOMAIN}} placeholder for production deployment
- Default: [Please enter your domain name]

### Q7: Which deployment platform will you use?
- Options: 
  - DigitalOcean (Recommended for full control)
  - Vercel (Recommended for frontend performance)
  - Cloudflare Pages (Recommended for global CDN)
- Purpose: Sets the {{DEPLOYMENT_TARGET}} placeholder for deployment configuration
- Default: DigitalOcean

### Q8: Which database type will you use?
- Options:
  - PostgreSQL (Recommended for production)
  - MongoDB (For flexible document storage)
  - SQLite (For development/testing only)
- Purpose: Sets the {{DATABASE_TYPE}} placeholder for database configuration
- Default: PostgreSQL

### Q9: Which media storage solution will you use?
- Options:
  - Cloudflare R2 (Recommended for performance and cost)
  - AWS S3 (For established AWS users)
  - Local storage (For development/testing only)
- Purpose: Sets the {{MEDIA_STORAGE}} placeholder for media storage configuration
- Default: Cloudflare R2

### Q10: What is your Resend API key for email notifications?
- Examples: "re_1234567890abcdef1234567890abcdef"
- Type: free text
- Purpose: Sets the {{RESEND_API_KEY}} placeholder for email functionality
- Default: [Please enter your Resend API key - get from resend.com]

### Q11: What is your Cloudflare R2 bucket name for media storage?
- Examples: "stnicholas-media", "church-assets-2026"
- Type: free text
- Purpose: Sets the {{R2_BUCKET_NAME}} placeholder for R2 storage
- Default: [Please enter your R2 bucket name]

### Q12: What is your Cloudflare R2 access key ID?
- Examples: "1234567890abcdef1234"
- Type: free text
- Purpose: Sets the {{R2_ACCESS_KEY_ID}} placeholder for R2 authentication
- Default: [Please enter your R2 access key ID]

### Q13: What is your Cloudflare R2 secret access key?
- Examples: "abcdef1234567890abcdef1234567890abcdef1234"
- Type: free text
- Purpose: Sets the {{R2_SECRET_ACCESS_KEY}} placeholder for R2 authentication
- Default: [Please enter your R2 secret access key]

### Q14: What is the URL/path to your church logo image?
- Examples: "/logo.png", "https://example.com/logo.svg"
- Type: free text
- Purpose: Sets the {{LOGO_URL}} placeholder for header display
- Default: /logo.png

### Q15: What is the URL/path to your favicon?
- Examples: "/favicon.ico", "/favicon.svg"
- Type: free text
- Purpose: Sets the {{FAVICON_URL}} placeholder for browser tab
- Default: /favicon.ico

### Q16: What is your primary brand color for the theme?
- Examples: "#722F37" (Burgundy from "Regal & Traditional" palette)
- Type: free text
- Purpose: Sets the {{THEME_PRIMARY_COLOR}} placeholder for theme configuration
- Default: #722F37

### Q17: What is your secondary brand color for the theme?
- Examples: "#D4AF37" (Gold from "Regal & Traditional" palette)
- Type: free text
- Purpose: Sets the {{THEME_SECONDARY_COLOR}} placeholder for theme configuration
- Default: #D4AF37

### Q18: Should the historical timeline feature be enabled?
- Options:
  - Yes (Show historical timeline of church events)
  - No (Hide historical timeline feature)
- Purpose: Sets the {{HISTORICAL_TIMELINE_ENABLED}} placeholder
- Default: Yes

### Q19: What is the preferred format for displaying events?
- Options:
  - Calendar view (Monthly calendar with event dots)
  - List view (Chronological list of upcoming events)
  - Map view (Geographical display of event locations)
  - Multiple formats (Allow users to switch between views)
- Purpose: Sets the {{EVENTS_DISPLAY_FORMAT}} placeholder
- Default: Calendar view

### Q20: Should live streaming functionality be enabled?
- Options:
  - Yes (Integrate with YouTube/Livestream for services)
  - No (Hide live streaming features)
- Purpose: Sets the {{ENABLE_LIVE_STREAMING}} placeholder
- Default: Yes

### Q21: Should search functionality be enabled?
- Options:
  - Yes (Allow users to search content)
  - No (Disable search, rely on navigation only)
- Purpose: Sets the {{ENABLE_SEARCH}} placeholder
- Default: Yes

### Q22: Should newsletter integration be enabled?
- Options:
  - Yes (Integrate with email newsletter system)
  - No (Hide newsletter signup features)
- Purpose: Sets the {{ENABLE_NEWSLETTER}} placeholder
- Default: Yes

### Q23: Should the ministries directory be enabled?
- Options:
  - Yes (Show filterable directory of church ministries)
  - No (Hide ministries directory)
- Purpose: Sets the {{ENABLE_MINISTRIES}} placeholder
- Default: Yes

### Q24: Should the document library be enabled?
- Options:
  - Yes (Show library of PDFs and documents)
  - No (Hide document library)
- Purpose: Sets the {{ENABLE_DOCUMENT_LIBRARY}} placeholder
- Default: Yes

### Q25: Should the video library be enabled?
- Options:
  - Yes (Show library of sermons and events)
  - No (Hide video library)
- Purpose: Sets the {{ENABLE_VIDEO_LIBRARY}} placeholder
- Default: Yes

---
## After Onboarding

Got it. When you are ready, start with Stage 01 -- Backend Setup. I will walk you through configuring the Payload CMS backend for your church website.

Then point them to `stages/01-backend-setup/CONTEXT.md`.