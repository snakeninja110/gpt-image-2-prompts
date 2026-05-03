---
name: gpt-image-2-prompts
description: Create director-style GPT-Image-2 prompts and reusable prompt systems from curated visual patterns. Use when Codex needs to plan, write, revise, or critique prompts for image generation, product ads, e-commerce images, poster illustrations, information graphics, character sheets, UI or social media mockups, multi-panel storyboards, visual slide images, or image series that need consistent style locks.
---

# GPT-Image-2 Prompts

Use this skill to turn a visual request into a precise image-generation brief. The working model is: GPT-Image-2 responds best to directed scenes, not loose keyword piles.

Source pattern library: `EvoLinkAI/awesome-gpt-image-2-API-and-Prompts`.

## Operating Rules

- Write prompts as visual direction: task, subject, composition, camera, lighting, materials, color, text, style lock, constraints.
- Prefer concrete spatial and production language over vague style adjectives.
- Preserve user-provided references deliberately: state what must stay the same and what should change.
- For a series, deck, campaign, or storyboard, define one shared `Style Lock` before writing per-image prompts.
- Keep visible text exact, short, and language-specific. If text must be readable, say so explicitly.
- Include avoid rules for common failures: malformed text, random logos, watermark, distorted anatomy, product drift, cluttered layout, wrong panel count, fake UI, or inconsistent style.
- Do not copy large prompt examples verbatim from the source repository. Extract the pattern and adapt it to the user's subject.

## Workflow

1. Classify the task:
   - Product or e-commerce image
   - Advertising creative
   - Portrait or photography
   - Poster, illustration, or information graphic
   - Character design
   - UI or social media mockup
   - Multi-panel storyboard or image series
2. Gather only missing production parameters that materially affect the image:
   - aspect ratio, output count, language of visible text, reference-image preservation, product/brand constraints, and whether the result is a single image or a series.
3. Read the matching reference file:
   - General prompt structure: `references/prompt-architecture.md`
   - Category-specific patterns: `references/category-patterns.md`
   - Multi-image consistency and storyboards: `references/series-workflow.md`
4. Produce a prompt plan before generation when the task has multiple images, slides, panels, or brand variants.
5. Write the final prompt in a structured block with:
   - `Goal`
   - `Subject`
   - `Composition`
   - `Scene and action`
   - `Lighting and camera`
   - `Visual style`
   - `Text`
   - `Constraints`

## Output Format

For a single image, return one polished prompt plus a short note describing the main control choices.

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
