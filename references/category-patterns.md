# Category Patterns

Load this file after classifying the image task.

## E-commerce Product Images

Use for marketplace hero images, product main images, feature visuals, and product ad storyboards.

Prompt ingredients:

- Product identity, exact shape, color, scale, material, label, and packaging
- Product as the visual hero
- Clean commercial staging or lifestyle use context
- Feature metaphor when useful, such as miniature workers, exploded parts, or process scenes
- Soft studio light, premium reflections, realistic contact shadows
- No random logos or brand drift

Useful structures:

- Single product hero
- Product plus use-case scene
- Feature breakdown
- 9-panel TVC storyboard
- Before/after product benefit image

## Advertising Creative

Use for campaign images, brand launches, luxury ads, cinematic posters, and premium concept visuals.

Prompt ingredients:

- Campaign concept and brand mood
- Hero object placement and supporting props
- Premium lighting language
- Reflection, motion streaks, oversized headline, architectural staging, or editorial set design
- Tight palette and intentional typography

Style directions:

- Ultra-polished commercial product photography
- Luxury editorial campaign
- Cinematic lighting
- Controlled reflections
- Sharp product focus
- High-end material finish

## Portrait And Photography

Use photographic direction rather than generic beauty keywords.

Prompt ingredients:

- Camera feel: 35mm film, editorial portrait, direct flash, golden hour, telephoto lens, shallow depth of field
- Light behavior: fluorescent, neon, backlight, rim light, flash highlights, volumetric rays
- Pose, expression, wardrobe, and setting
- Skin, hair, and fabric texture
- Film grain, color grading, bokeh, bloom, lens flare

Avoid rules:

- No plastic skin
- No over-sharpening
- No distorted anatomy
- No fake blur on the subject
- No airbrushed face unless explicitly requested

For identity-preserving photo remixes:

- Write `Preserve`, `Change`, and `Do not change` controls before the final prompt.
- Preserve identity-critical facial features, skin tone, expression logic, pose, product shape, or composition only when the user needs them.
- Add playful overlays, mini versions, doodles, stickers, character companions, or mirror-selfie elements only when they physically interact with the base image.
- Avoid changing identity, overpainting the face, or leaving unrelated decorations floating around the subject.

For motion or expression grids:

- Define panel count, grid layout, labels, and the action or expression in each panel.
- Keep identity, outfit, camera distance, and lighting consistent.
- Use arrows, numbering, color coding, and short labels where they improve reference value.

## Poster, Illustration, And Information Graphics

Use for city posters, cultural posters, map illustrations, editorial illustrations, educational visual pages, charts, technical explainers, and data visualization.

Prompt ingredients:

- Poster type and cultural or editorial context
- Fixed page architecture, module count, and information hierarchy
- Main visual anchor
- Typography hierarchy
- Palette, paper texture, print method, illustration medium
- Readable language requirements

Information graphic layout:

- Top: title, subtitle, intro
- Center: main subject, map, diagram, or figure
- Sides: annotations, callouts, detail samples
- Bottom: process, timeline, legend, or summary

For data or technical diagrams:

- Define chart or diagram type before styling.
- Use concise labels and a small number of modules.
- Keep labels readable and aligned to the visual hierarchy.
- Separate explanation blocks from the central diagram.
- Avoid dense dashboards unless the user asks for a report-style artifact.

For scientific scale diagrams:

- Define the scale progression before styling, such as nano to macro, cell to organism, room to city, or component to system.
- Use 6-8 scale windows with one unit or magnification cue per window.
- Keep every label short and make the size relationship visible.
- Avoid generic magnifying-glass metaphors and panels that all appear the same scale.

For concept typography posters:

- Use the exact title, name, or word as the main visual structure.
- Describe how the letterforms behave: scale, weight, spacing, overlap, texture, distortion, negative space, and interaction with figures or objects.
- Request `single final poster only` unless the user explicitly wants alternatives.
- Avoid extra large readable text, misspellings, generic word art, and default-font lettering.

For sports campaign posters:

- Lock sport, athlete or product, body action, equipment, terrain, and campaign headline.
- Use dynamic motion, diagonal composition, controlled graphic marks, and brand-level color systems.
- Keep equipment accurate and do not mix unrelated sport cues.

## Character Design

Use for character sheets, game/anime reference cards, chibi refs, and official-style character pages.

Prompt ingredients:

- Character identity, role, personality, age range, silhouette
- Full-body pose and expression
- Outfit, accessories, color palette, materials
- Front/side/back views or detail panels if needed
- Reference-card layout, labels, and consistent rendering style

For action reference sheets:

- Lock the grid count, such as 4x4 or 3x3.
- Keep the same character, outfit, proportions, and face in every panel.
- Add short action labels, numbering, and motion arrows only where useful.
- Use a clean background so the poses remain readable.

## UI And Social Media Mockups

Use for app screens, social posts, notebook pages, presentation snapshots, platform screenshots, or fake-but-realistic interfaces.

Prompt ingredients:

- Device, platform, or medium
- Layout hierarchy and key screen regions
- Exact visible text when important
- Typography, spacing, and icon style
- Capture context if needed, such as desk photo, amateur phone shot, or clean product mockup
- No fake unreadable microcopy unless text is intentionally decorative

For live interface screenshots:

- Specify platform, live-room type, aspect ratio, and overlay stack.
- Include host area, comments, viewer count, like/gift effects, product card or CTA, and bottom input/action bar when relevant.
- Keep overlays away from faces and hero products.
- Use short readable comments in the requested language.

For analysis or recommendation reports:

- Structure the layout as summary, evidence, and recommendations.
- Use cards, badges, ratings, profile anchors, before/after slots, and product or action cards.
- Avoid medical claims unless the user explicitly asks and provides suitable context.
- Keep recommendation logic simple enough to read visually.

## Cultural Or Museum-Style Information Pages

Use when the user wants historical, cultural, artifact, clothing, food, or regional knowledge visualized.

Prompt ingredients:

- Museum board, atlas plate, field guide, or archival editorial tone
- Restrained professional layout
- Paper, silk, parchment, or catalog texture
- Central artifact or full-body figure
- Callouts for structure, material, craft, color, symbolism, and process
- Simplified Chinese when the user is Chinese-speaking unless otherwise requested

Avoid:

- Cosplay feel
- E-commerce detail page feel
- Generic fantasy poster
- Anime drift
- Over-decoration
- Unreadable labels

## Brand Identity And Logo Systems

Use for brand direction boards, logo concepts, identity systems, touchpoint boards, packaging systems, and visual manuals.

Prompt ingredients:

- Brand name, industry, audience, personality, competitors, and emotional target
- 3-5 distinct logo or identity directions when exploring
- Color system with primary, secondary, accent, and neutral roles
- Typography direction and hierarchy
- Touchpoints such as app icon, business card, packaging, website, social post, menu, label, or signage
- Rules for what must stay consistent across touchpoints

Avoid:

- Treating a logo as a complex illustration
- Random brand marks or unreadable wordmarks
- Showing only one logo when the request is for a system
- Letting packaging, menu, cards, and social assets use unrelated styles

## Architecture And Spatial Rendering

Use for interiors, exteriors, event spaces, retail layouts, concept spaces, and architectural visualization.

Prompt ingredients:

- Space type, function, user flow, zones, and scale
- Materials such as timber, stone, glass, metal, concrete, fabric, plants, or water
- Camera position, usually eye-level or controlled wide-angle when accuracy matters
- Natural and artificial lighting, with warm/cool contrast when useful
- Time of day, weather, exterior context, and visible view corridors

Avoid:

- Impossible perspective
- Warped walls or furniture
- Unclear circulation
- Decorative style words without material and lighting rules

## Editorial Documents And Publications

Use for menus, magazine spreads, newspapers, reports, catalogs, zines, and publication mockups.

Prompt ingredients:

- Document type and page count or spread type
- Column grid, margins, title hierarchy, image placement, footnotes, captions, and pull quotes
- Exact headline and short readable copy
- Simulated body text for long paragraphs unless exact text is essential
- Serif or sans-serif direction, palette, and print texture

Avoid:

- Asking for a full page of exact body copy
- Undefined columns or margins
- Mixing too many font styles
- Letting decorative images overpower the editorial structure

## Narrative, Historical, And Cultural Scenes

Use for cinematic scenes, story moments, historical images, poetry visuals, ancient settings, and culturally specific compositions.

Prompt ingredients:

- Exact moment or action, not just a location
- Time, place, conflict, protagonist, and visual stakes
- Camera language such as establishing shot, low angle, close-up, or Dutch angle
- Historical period, clothing structure, architecture, ritual objects, and cultural details
- Atmosphere, color temperature, and light source

Avoid:

- Period mashups
- Modern objects in historical scenes
- Generic scenery without an event
- Costume drift from unrelated cultures

## Concept Product Research And Teardown Boards

Use for industrial design boards, product teardown visuals, product research boards, exploded diagrams, and concept development sheets.

Prompt ingredients:

- Product or object type and design inspiration
- Central hero render of the final concept
- Shape analysis, silhouette extraction, structure lines, or force-flow annotations
- 3-5 evolution steps from inspiration to final form
- Ergonomic, usage, or scale validation
- Layered structure, material stack, components, and key specifications

Avoid:

- Only drawing a pretty final product
- Overloading the board with paragraphs
- Losing the inspiration's recognizable traits
- Making a concept that looks impossible to manufacture or use
