# Prompt Architecture

Use this architecture for most GPT-Image-2 prompts.

For reusable workflows, read `prompt-as-code.md` first and turn the request into a compact schema before writing prose.

## Director Brief Order

1. **Goal**: Define the image's job, such as product main image, luxury campaign ad, editorial poster, UI screenshot, or character reference card.
2. **Inputs**: Capture reusable variables: subject, audience, aspect ratio, language, required text, reference images, brand constraints, module count, and output use.
3. **Subject**: Specify the exact product, person, object, character, environment, or interface.
4. **Composition**: Define canvas ratio, viewpoint, crop, layout grid, module count, focal hierarchy, negative space, and foreground/midground/background.
5. **Scene and action**: Describe the moment, interaction, gesture, product use, sequence, or narrative.
6. **Camera and rendering**: Use medium-specific language: 35mm film, direct flash, telephoto editorial portrait, photorealistic CGI, architectural visualization, engraved ink drawing, printed poster, isometric miniature, app screenshot.
7. **Lighting**: Name source, direction, intensity, color, contrast, shadows, reflections, rim light, bloom, bokeh, or volumetric effects.
8. **Materials and texture**: Specify surfaces such as matte packaging, brushed steel, glass, paper fiber, skin texture, fabric weave, food gloss, UI glassmorphism, ceramic glaze.
9. **Color system**: State dominant palette, accent colors, temperature, contrast, and brand-color limits.
10. **Text**: Give exact visible text, language, placement, hierarchy, and readability requirements. If no text, say no text.
11. **Constraints**: Add avoid rules for common failure modes.

## Reusable Prompt Skeleton

```text
Create [output type] for [goal/audience].

Goal:
[What the image must accomplish.]

Inputs:
[Reusable variables: audience, aspect ratio, language, reference image handling, required modules, exact text.]

Subject:
[Main subject, exact identity, attributes, materials, brand/product constraints.]

Composition:
[Aspect ratio, viewpoint, crop, layout, focal hierarchy, spacing, foreground/midground/background.]

Scene and action:
[Environment, action, interaction, story moment, sequence state.]

Lighting and camera:
[Light source, direction, contrast, lens/camera feel, depth of field, rendering style.]

Visual style:
[Palette, typography, texture, medium, repeated design DNA.]

Text:
[Exact visible text, language, placement, readability, or no text.]

Constraints:
[No watermark, no random logos, no malformed text, no product drift, no clutter, no distorted anatomy, no incorrect count.]
```

## Prompt Strengthening Moves

- Replace "beautiful" with observable production details.
- Replace "high quality" with rendering, lens, material, and lighting requirements.
- For text-heavy outputs, specify fewer words and larger type.
- For product consistency, repeat identity-critical traits: shape, color, material, label, proportions.
- For reference images, explicitly separate `preserve` from `change`.
- For complex images, state exact counts and positions when they matter.
- For structured designs, lock module count, grid, titles, label language, and hierarchy before style.
- For posters, first define whether it is a single poster, multi-option board, contact sheet, or research board.

## Common Avoid Rules

Use only the relevant constraints.

```text
Avoid watermark, stock-photo logo, random brand marks, misspelled text, fake UI labels, cluttered layout, inconsistent product identity, distorted hands, extra limbs, plastic skin, oversharpening, muddy materials, unreadable small text, wrong panel count, cropped subject, and full-canvas border.
```
