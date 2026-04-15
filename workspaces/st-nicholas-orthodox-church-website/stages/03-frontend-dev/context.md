# Stage 03: Frontend Development

Build frontend components, pages, and theme support.

## Inputs

| Source | File/Location | Section/Scope | Why |
|--------|--------------|---------------|-----|
| Previous stage | `../02-sample-data/output/` | Full file | Backend with sample data |
| Universal coding rules | `../../../../shared/vibe-code-rules.md` | Full document | Enforce production-quality standards |
| Reference | `../../../../shared/branding-guidelines.md` | Full file | Church branding guidelines |
| Reference | `../../../../shared/content-policies.md` | Full file | Content policies for components |
| Reference | `../../../../skills/frontend-design/SKILL.md` | Full file | Frontend design principles |

## Process

1. Implement frontend components matching church branding
2. Develop Layout Blocks (Content, CallToAction, MediaBlock, etc.)
3. Create feature components (Live Streaming, Video Library, Document Library, Events, Ministries, Historical Timeline)
4. Build page templates for all required routes
5. Implement Header (logo/favicon), Footer, TopBar
6. Create Theme toggle (light/dark mode)
7. Integrate SEO meta tags and Search
8. Develop Responsive design and Dark mode toggle
9. Ensure Accessibility (WCAG 2.2 AA)
10. Develop Historical timeline visualization
11. Create Events display (calendar, list, map)
12. Build Video library (YouTube/Vimeo)
13. Develop Document library (PDFs/files)
14. Create Ministries directory with filtering
15. Implement Live streaming with status indicators
16. Build Import/export interface in admin panel
17. Add Email notification UI (if applicable)
18. Implement R2-optimized image loading
19. Apply Tailwind CSS for brand colors
20. Follow Next.js App Router principles
21. Implement Payload CMS frontend data fetching
22. Apply SEO best practices for React/Next.js
23. Implement Accessibility (WCAG 2.2 AA)
24. Apply Responsive design principles
25. Apply Next.js image optimization
26. Handle Client-side and server-side data fetching
27. Implement Error handling and loading states
28. Implement Preview mode
29. Integrate Resend plugin for email
30. Implement Import/export plugin usage
31. Configure R2 storage for media handling
32. Implement Logo/favicon in header/footer
33. Implement Theme switching (CSS variables/context)
34. Design Historical timeline component
35. Create Events display (calendar, list, maps)
36. Implement Video embedding/playback
37. Develop Document viewing/downloading
38. Address Accessibility for theme switching
39. Implement Internationalization (if needed)
40. Apply Performance optimization for media-heavy sites

## Checkpoints

| After Step | Agent Presents | Human Decides |
|------------|---------------|---------------|
| 11 | Theme toggle and responsive design | Whether theme switching and responsive design work |
| 19 | Live streaming and import/export UI | Whether live streaming and import/export UI work |
| 26 | SEO and accessibility | Whether SEO and WCAG 2.2 AA are implemented |
| 33 | Resend and R2 handling | Whether email and media loading work |
| 41 | Document library and ministries | Whether document library and ministries filtering work |
| 44 | Performance optimization | Whether performance techniques are applied |

## Audit

| Check | Pass Condition |
|-------|---------------|
| Frontend components | Match church branding |
| Layout Blocks | All required implemented |
| Feature components | All six feature components created |
| Page templates | Templates for all routes |
| Header/Footer | Header shows logo/favicon, Footer has nav/contact |
| Theme toggle | Light/dark mode switching works |
| TopBar | Announcements functional |
| SEO meta tags | Proper SEO implementation |
| Search functionality | Integrated search works |
| Responsive design | Adapts to screen sizes |
| Dark mode toggle | Functional toggle |
| Accessibility | WCAG 2.2 AA verified |
| Historical timeline | Visualization works |
| Events display | Calendar, list, map embeds work |
| Video library | YouTube/Vimeo integration |
| Document library | PDF/file viewing/downloading |
| Ministries directory | Filtering/search work |
| Live streaming | Status indicators work |
| Import/export interface | Admin panel works |
| Email notifications | UI functional (if applicable) |
| R2-optimized media | Optimized loading/display |
| Tailwind CSS | Customized for brand colors |
| Next.js principles | App Router followed |
| Payload CMS fetching | Data fetching patterns |
| SEO best practices | Applied for React/Next.js |
| Accessibility implementation | WCAG 2.2 AA |
| Responsive design principles | Applied |
| Next.js image optimization | Implemented |
| Data fetching | Client/server patterns handled |
| Error handling | Proper states |
| Preview mode | Working |
| Resend integration | Email works |
| Import/export usage | Data migration works |
| R2 storage handling | Media handling works |
| Logo/favicon | Header/footer implementation |
| Theme switching | Light/dark mode works |
| Historical timeline | Component works |
| Events display | Components work |
| Video embedding | Playback works |
| Document viewing | Downloading works |
| Accessibility considerations | Addressed |
| Internationalization | Implemented if needed |
| Performance optimization | Techniques applied |

## Outputs

| Artifact | Location | Format |
|----------|----------|--------|
| Customized frontend components | `stages/03-frontend-dev/output/` | Frontend code with components, pages, theme support, features |