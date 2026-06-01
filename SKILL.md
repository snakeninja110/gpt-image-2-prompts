---
name: gpt-image-2-prompts
description: Create director-style GPT-Image-2 prompts, Prompt-as-Code schemas, and reusable prompt systems from curated visual patterns and case-derived playbooks. Use when Codex needs to plan, write, revise, or critique prompts for image generation, product ads, e-commerce images, brand identity boards, architecture or space renders, poster illustrations, concept typography posters, information graphics, scientific scale diagrams, analysis report interfaces, data visualization, character sheets, UI, live, or social media mockups, identity-preserving photo remixes, editorial layouts, historical scenes, product teardown boards, multi-panel storyboards, visual slide images, or image series that need consistent style locks.
---

# GPT-Image-2 Prompts

Use this skill to turn a visual request into a precise image-generation brief. The working model is: GPT-Image-2 responds best to directed scenes, not loose keyword piles.

This skill is not only a writing guide. It must actively apply reusable case patterns distilled from strong public GPT-Image-2 examples when producing the user's final prompt.

Source pattern libraries:

- `EvoLinkAI/awesome-gpt-image-2-API-and-Prompts`
- `freestylefly/awesome-gpt-image-2`

## Operating Rules

- Write prompts as visual direction: task, subject, composition, camera, lighting, materials, color, text, style lock, constraints.
- Prefer concrete spatial and production language over vague style adjectives.
- Preserve user-provided references deliberately: state what must stay the same and what should change.
- For a series, deck, campaign, or storyboard, define one shared `Style Lock` before writing per-image prompts.
- For repeatable or agent-facing work, convert the request into a small Prompt-as-Code schema before writing prose.
- Keep visible text exact, short, and language-specific. If text must be readable, say so explicitly.
- Include avoid rules for common failures: malformed text, random logos, watermark, distorted anatomy, product drift, cluttered layout, wrong panel count, fake UI, or inconsistent style.
- Before writing the final prompt, select one or more case-derived patterns from `references/case-playbook.md` and migrate them to the user's actual subject, product, brand, or scene.
- Do not stop at generic advice. The final output must contain a production-ready prompt that embodies the selected case pattern.
- Do not copy large prompt examples verbatim from the source repositories. Extract the pattern, rename every concrete product/brand/scene unless the user supplied it, and adapt the structure to the user's use case.

## Default Assumptions

Use sensible defaults instead of asking follow-up questions when the missing detail is low risk:

- Aspect ratio: default to `1:1` for product, e-commerce, and social posts; `16:9` for presentations, dashboards, landscapes, and web hero images; `9:16` for vertical stories, reels, and mobile-first scenes.
- Visible language: default to Chinese when the user's request is Chinese, English when the user's request is English, and no visible text when text is not needed.
- Output count: default to one final image unless the user asks for options, a series, a storyboard, or multiple slides.
- Use case: if unspecified, infer a practical display use such as social post, product listing, concept presentation, or cover image from the subject.
- Detail level: when the user gives a short request, produce a complete prompt with clearly labeled assumptions instead of asking them to fill a long form.

Ask a follow-up only when the missing information changes the core identity or could cause a bad result: exact product or brand identity, reference-image preservation, legally or commercially sensitive visible text, required panel/page count, or whether a person/product must remain unchanged.

## Workflow

1. Classify the task:
   - Product or e-commerce image
   - Advertising creative
   - Portrait or photography
   - Poster, illustration, or information graphic
   - Concept typography poster or title-led visual
   - Character design
   - UI, social media mockup, live interface, or analysis report
   - Brand identity, logo system, brand guideline board, or brand-envelope product ad
   - Architecture, interior, or spatial rendering
   - Editorial document or publication layout
   - Historical, cultural, or narrative scene
   - Identity-preserving photo remix or style transfer
   - Concept product teardown or research board
   - Worldbuilding kit, physical social screenshot, scrapbook collage poster, natural science poster, or signature typography system
   - Multi-panel storyboard or image series
2. Gather only missing production parameters that materially affect the image:
   - aspect ratio, output count, language of visible text, reference-image preservation, product/brand constraints, and whether the result is a single image or a series.
3. Read the matching reference file:
   - General prompt structure: `references/prompt-architecture.md`
   - Prompt-as-Code schemas and anti-failure rules: `references/prompt-as-code.md`
   - Category-specific patterns: `references/category-patterns.md`
   - Case-derived playbooks and transfer patterns: `references/case-playbook.md`
   - Multi-image consistency and storyboards: `references/series-workflow.md`
4. Choose a case transfer:
   - Name the selected pattern internally, such as miniature product theater, 9-panel TVC board, luxury hero ad, typography-as-hero poster, analysis report interface, identity-preserving photo remix, technical teardown board, UI/social screenshot, museum information plate, brand touchpoint board, or series card grid.
   - Also consider newer specialized transfers: brand guideline board from logo, brand envelope product ad, physical social screenshot, scrapbook collage poster, worldbuilding kit, Apple-style natural science poster, or signature typography system.
   - Map the pattern's reusable moves to the user's subject: visual anchor, layout system, scene logic, text hierarchy, camera or rendering language, and avoid rules.
   - Combine two compatible patterns only when it improves the output, such as product teardown plus brand board.
5. Produce a prompt plan before generation when the task has multiple images, slides, panels, or brand variants.
6. Write the final prompt in a structured block with:
   - `Goal`
   - `Inputs` when variables need to stay reusable
   - `Case pattern applied`
   - `Subject`
   - `Composition`
   - `Scene and action`
   - `Lighting and camera`
   - `Visual style`
   - `Text`
   - `Constraints`

## Output Format

For a single image, return one polished prompt plus a short note describing the selected case pattern and the main control choices.

For an agent-facing or reusable request, return a compact schema first, then the final prompt.

For a series, return:

1. Shared `Style Lock`
2. Image-by-image prompt list
3. Shared avoid rules
4. Optional generation order when references or consistency matter

For a storyboard, specify exact panel count, panel order, shot type, action, text labels, and continuity rules.

## Quality Bar

A good prompt should answer:

- What is the image for?
- What is the subject and what must remain consistent?
- Where is everything placed?
- What camera or visual medium is implied?
- What lighting and material behavior should appear?
- What text appears, where, and in what language?
- What should the model avoid?
