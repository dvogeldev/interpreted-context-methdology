# Accessibility Requirements - WCAG 2.2 AA Compliance

## Perceivable
- Text alternatives: Alt text for all meaningful images, captions for videos
- Time-based media: Captions, audio descriptions, transcripts
- Adaptable: Semantic heading structure, logical reading order
- Distinguishable: Color contrast ratios (4.5:1 normal text, 3:1 large text), resizable text, audio control

## Operable
- Keyboard accessible: All functionality available via keyboard
- Enough time: Adjustable time limits, ability to pause/stop/hide moving content
- Seizure prevention: No flashing content more than 3 times per second
- Navigable: Clear navigation, meaningful sequence, multiple ways to find content

## Understandable
- Readable: Clear language, abbreviations defined, predictable behavior
- Input assistance: Error identification, labels/instructions, error prevention

## Robust
- Compatible: Maximize compatibility with current and future user agents
- Valid HTML: Properly nested elements, unique IDs, valid attributes

## Specific Implementation Requirements
- Proper alt text for all media (MediaCollection includes alt field)
- Semantic heading structure (h1-h6 in logical order)
- Sufficient color contrast using the "Regal & Traditional" palette
- Accessible navigation (keyboard navigable menus, skip links)
- Accessible forms (labels, error handling, focus management)
- Live region updates for dynamic content
- Focus visible indicator for keyboard users
- ARIA labels where native HTML insufficient
- Responsive design that maintains accessibility at all breakpoints