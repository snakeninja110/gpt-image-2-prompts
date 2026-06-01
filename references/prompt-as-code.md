# Prompt-as-Code

Use this file when the user wants reusable prompts, batch generation, agent workflows, templated visual systems, or strict layout control.

## Core Idea

Turn a loose request into a structured protocol before writing the final prompt. Keep the schema small enough to be filled by a user, script, or agent.

Do not duplicate category guidance already in `category-patterns.md`. Use this file for structure, variables, validation, and anti-failure rules.

## Minimal Schema

```json
{
  "type": "[output category]",
  "objective": "[what the image must accomplish]",
  "case_pattern": {
    "name": "[selected pattern from case-playbook.md]",
    "transfer": "[how the pattern is adapted to this subject]"
  },
  "inputs": {
    "subject": "[main subject]",
    "audience": "[target viewer]",
    "aspect_ratio": "[e.g. 16:9, 9:16, 1:1]",
    "language": "[visible text language]",
    "required_text": ["[exact title]", "[exact subtitle]"],
    "source_identity": {
      "logo_or_brand_reference": "[supplied logo, mark, or brand cue]",
      "product_reference": "[supplied product or packaging reference]"
    },
    "reference_handling": {
      "preserve": ["[identity-critical details]"],
      "change": ["[style or scene changes]"],
      "do_not_change": ["[details that must remain untouched]"]
    }
  },
  "structure": {
    "layout": "[grid, poster, card set, research board, split view]",
    "modules": ["[module 1]", "[module 2]"],
    "hierarchy": "[primary visual first, secondary information second]",
    "panel_count": "[exact count when relevant]",
    "scale_sequence": ["[smallest scale]", "[largest scale]"],
    "report_flow": ["[summary]", "[evidence]", "[recommendation]"],
    "worldbuilding_assets": ["[architecture]", "[characters]", "[vehicles]", "[map]"],
    "physical_ui_layout": "[post card, story frame, feed tile, comment band, CTA strip]"
  },
  "style": {
    "medium": "[photo, CGI, editorial, vector, illustration]",
    "palette": "[dominant and accent colors]",
    "lighting": "[lighting system]",
    "materials": ["[texture/material requirements]"],
    "typography_behavior": "[how exact text behaves as a visual object]",
    "brand_world": "[palette, material language, mood, lighting, and repeatable signature motifs]",
    "collage_system": "[paper layers, cutouts, stickers, tape, doodles, shadows]",
    "signature_system": "[stroke rhythm, pressure, baseline, ligatures, practice or exploration mode]"
  },
  "interaction_layers": {
    "platform_chrome": "[status bar, comments, tabs, product cards, live overlays]",
    "subject_overlays": ["[mini versions, doodles, stickers, callouts]"],
    "occlusion_rules": ["[what must not be covered]"]
  },
  "constraints": ["[avoid rule]", "[quality rule]"]
}
```

## Schema To Prompt

After filling the schema, write the natural-language prompt in this order:

1. State the output type and objective.
2. State the case pattern being applied and what is being transferred.
3. Lock the layout and module count.
4. Describe the subject and identity-critical traits.
5. Define composition, camera, lighting, materials, and palette.
6. Add exact text requirements, including spelling and typography behavior when text is the hero.
7. Add interaction layers or overlays only when they improve the output.
8. Add constraints and failure prevention.

## Validation Checklist

Before finalizing, check:

- The output type is unambiguous.
- The selected case pattern fits the user's goal and has been adapted, not copied.
- Required text is hard-coded or explicitly omitted.
- Source identity is protected when the user supplies a logo, product, person, or brand reference.
- Module count, panel count, or card count is specified when relevant.
- The main visual is not competing with too many secondary elements.
- Brand, product, or character identity rules are repeated where consistency matters.
- The prompt says whether the output is a single final image, a board, a series, or alternatives.
- Avoid rules target the likely failure mode for the category.

## Anti-Failure Rules

- For posters: specify `single final poster only` if you do not want a moodboard or multiple options.
- For concept typography: make the exact word the main visual and require correct spelling.
- For title-led posters: specify how the letters are constructed and ban extra dominant text.
- For data or information graphics: lock module count, chart type, labels, and hierarchy before style.
- For scientific scale diagrams: define the scale order, unit cues, and 6-8 distinct windows before styling.
- For product images: keep copy to 1-2 short claims and make materials plus lighting explicit.
- For brand-envelope product ads: define the brand world before placing the product, and preserve product identity.
- For brand guideline boards: analyze the supplied logo first and derive palette, typography, touchpoints, and do/don't rules from it.
- For beauty recommendation or analysis images: require analysis first, then recommendation mapping; keep the same face if comparing variants.
- For live screenshots: lock platform chrome, comments, product cards, and face/hero-product occlusion rules.
- For physical social screenshots: lock the platform layout before translating it into physical props or tabletop staging.
- For brand systems: define strategy, audience, and emotional target before logo or touchpoint visuals.
- For sports campaigns: lock sport, equipment, pose/action, grid count, and campaign typography system.
- For architecture: use eye-level or controlled camera angles when perspective accuracy matters.
- For photography: use concrete lens/aperture/film language instead of generic realism.
- For identity-preserving photo remixes: separate Preserve, Change, and Do not change before adding style.
- For scrapbook collage posters: specify paper layers, cutout edges, tape, stickers, and one clear hierarchy before style.
- For worldbuilding kits: define world rules before listing assets, and keep material, silhouette, and palette consistent across the kit.
- For Apple-style natural science posters: keep the subject as a single product-like hero with sparse labels and white-space discipline.
- For signature typography: lock exact spelling, decide exploration versus practice, and avoid generic calligraphy or tiny unreadable forms.
- For motion/expression grids: lock panel count, per-panel label, identity, outfit, camera, and lighting.
- For illustration: specify brushwork, line behavior, or rendering technique; avoid relying only on artist names.
- For historical scenes: name the period and ban modern elements.
- For editorial layouts: use simulated body text unless exact copy is short enough to control.
