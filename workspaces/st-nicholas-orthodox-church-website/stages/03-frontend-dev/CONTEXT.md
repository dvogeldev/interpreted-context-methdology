# Stage 03: Frontend Development

Build frontend components, pages, and theme support for the church website.

## Inputs

| Source | File/Location | Section/Scope | Why |
|--------|--------------|---------------|-----|
| Previous stage | `../02-sample-data/output/` | Full file | Backend with sample data from Stage 2 |
| Universal coding rules | `../../../../shared/vibe-code-rules.md` | Full document | Enforce production-quality standards |
| Reference | `../../../../shared/branding-guidelines.md` | Full file | Church branding guidelines for visual design |
| Reference | `../../../../shared/content-policies.md` | Full file | Content policies for appropriate component design |
| Reference | `../../../../skills/frontend-design/SKILL.md` | Full file | Frontend design principles and implementation patterns |

## Process

1. Implement customized frontend components matching church branding
2. Develop Layout Blocks implementation (Content, CallToAction, MediaBlock, Archive, FAQBlock, SectionBlock, etc.)
3. Create feature components (Live Streaming, Video Library, Document Library, Events, Ministries, Historical Timeline)
4. Build page templates for all required routes (/, /videos, /search, /our-faith/*, /our-community/*, /our-church/*)
5. Implement Header component displaying church logo and favicon
6. Develop Footer component with navigation and contact information
7. Implement TopBar for announcements
8. Create Theme toggle component for light/dark mode switching
9. Integrate SEO meta tag implementation
10. Implement Search functionality integration
11. Develop Responsive design implementation
12. Implement Dark mode toggle functionality
13. Ensure Accessibility compliance (WCAG 2.2 AA)
14. Develop Historical timeline visualization component
15. Create Events display components (calendar views, lists, map embeds)
16. Build Video library component with YouTube/Vimeo integration
17. Develop Document library component for PDFs and other files
18. Create Ministries directory with filtering and search
19. Implement Live streaming integration with status indicators
20. Build Import/export interface components in admin panel
21. Add Email notification UI elements (if applicable)
22. Implement R2-optimized image loading and display components
23. Apply Tailwind CSS customization for brand colors
24. Ensure Next.js App Router principles are followed
25. Implement Payload CMS frontend data fetching patterns
26. Apply SEO best practices for React/Next.js applications
27. Implement Accessibility implementation (WCAG 2.2 AA)
28. Apply Responsive design principles
29. Apply Next.js image optimization
30. Handle Client-side and server-side data fetching
31. Implement Error handling and loading states
32. Implement Preview mode implementation
33. Integrate Resend plugin for email functionality
34. Implement Import/export plugin usage patterns for data migration features
35. Configure R2 storage for media handling in frontend
36. Implement Logo and favicon implementation in header/footer components
37. Implement Theme switching (light/dark mode) using CSS variables or context API
38. Design Historical timeline component
39. Create Events display components (calendar views, lists, maps)
40. Implement Video embedding and playback components
41. Develop Document viewing and downloading components
42. Address Accessibility considerations for theme switching and visual elements
43. Implement Internationalization and localization patterns (if needed)
44. Apply Performance optimization techniques for media-heavy sites

## Checkpoints

| After Step | Agent Presents | Human Decides |
|------------|---------------|---------------|
| 11 | Theme toggle and responsive design implementation | Whether theme switching and responsive design work correctly |
| 19 | Live streaming and import/export interface components | Whether live streaming integration and import/export UI are properly implemented |
| 26 | SEO best practices and accessibility implementation | Whether SEO and WCAG 2.2 AA compliance are properly implemented |
| 33 | Resend plugin integration and R2 storage handling | Whether email functionality and media loading work correctly |
| 41 | Document viewing/download and ministries directory | Whether document library and ministries filtering work properly |
| 44 | Performance optimization for media-heavy sites | Whether performance techniques are properly applied |

## Audit

| Check | Pass Condition |
|-------|---------------|
| Frontend components | Customized components match church branding guidelines |
| Layout Blocks | All required Layout Blocks implemented correctly |
| Feature components | Live Streaming, Video Library, Document Library, Events, Ministries, Historical Timeline components created |
| Page templates | Templates built for all required routes |
| Header/Footer components | Header displays logo/favicon, Footer has navigation/contact info |
| Theme toggle | Light/dark mode switching works correctly |
| TopBar | Announcements implementation functional |
| SEO meta tags | Proper implementation for search engine optimization |
| Search functionality | Integrated search working correctly |
| Responsive design | Website adapts correctly to different screen sizes |
| Dark mode toggle | Functional dark/light mode switching |
| Accessibility | WCAG 2.2 AA compliance verified |
| Historical timeline | Visualization component working correctly |
| Events display | Calendar views, lists, and map embeds functioning |
| Video library | YouTube/Vimeo integration working |
| Document library | PDF and file viewing/downloading working |
| Ministries directory | Filtering and search functionality working |
| Live streaming | Integration with status indicators working |
| Import/export interface | Admin panel components working |
| Email notifications | UI elements functional (if applicable) |
| R2-optimized media | Optimized loading and display working |
| Tailwind CSS | Customized for brand colors |
| Next.js principles | App Router patterns followed correctly |
| Payload CMS fetching | Frontend data fetching patterns implemented |
| SEO best practices | Applied for React/Next.js applications |
| Accessibility implementation | WCAG 2.2 AA properly implemented |
| Responsive design principles | Correctly applied |
| Next.js image optimization | Implemented correctly |
| Data fetching | Client-side and server-side patterns handled |
| Error handling | Proper error handling and loading states |
| Preview mode | Implementation working correctly |
| Resend integration | Email functionality working |
| Import/export usage | Data migration features working |
| R2 storage handling | Media handling in frontend working |
| Logo/favicon | Implementation in header/footer working |
| Theme switching | Light/dark mode using CSS/variables working |
| Historical timeline | Component design and implementation working |
| Events display | Calendar, list, map components working |
| Video embedding | Playback components working |
| Document viewing | Downloading components working |
| Accessibility considerations | Addressed for theme switching and visual elements |
| Internationalization | Patterns implemented if needed |
| Performance optimization | Techniques applied for media-heavy sites |

## Outputs

| Artifact | Location | Format |
|----------|----------|--------|
| Customized frontend components | `stages/03-frontend-dev/output/` | Frontend code with components, pages, theme support, and features |