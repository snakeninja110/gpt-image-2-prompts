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
    "reference_handling": {
      "preserve": ["[identity-critical details]"],
      "change": ["[style or scene changes]"]
    }
  },
  "structure": {
    "layout": "[grid, poster, card set, research board, split view]",
    "modules": ["[module 1]", "[module 2]"],
    "hierarchy": "[primary visual first, secondary information second]"
  },
  "style": {
    "medium": "[photo, CGI, editorial, vector, illustration]",
    "palette": "[dominant and accent colors]",
    "lighting": "[lighting system]",
    "materials": ["[texture/material requirements]"]
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
6. Add exact text requirements.
7. Add constraints and failure prevention.

## Validation Checklist

Before finalizing, check:

- The output type is unambiguous.
- The selected case pattern fits the user's goal and has been adapted, not copied.
- Required text is hard-coded or explicitly omitted.
- Module count, panel count, or card count is specified when relevant.
- The main visual is not competing with too many secondary elements.
- Brand, product, or character identity rules are repeated where consistency matters.
- The prompt says whether the output is a single final image, a board, a series, or alternatives.
- Avoid rules target the likely failure mode for the category.

## Anti-Failure Rules

- For posters: specify `single final poster only` if you do not want a moodboard or multiple options.
- For concept typography: make the exact word the main visual and require correct spelling.
- For data or information graphics: lock module count, chart type, labels, and hierarchy before style.
- For product images: keep copy to 1-2 short claims and make materials plus lighting explicit.
- For beauty recommendation or analysis images: require analysis first, then recommendation mapping; keep the same face if comparing variants.
- For brand systems: define strategy, audience, and emotional target before logo or touchpoint visuals.
- For architecture: use eye-level or controlled camera angles when perspective accuracy matters.
- For photography: use concrete lens/aperture/film language instead of generic realism.
- For illustration: specify brushwork, line behavior, or rendering technique; avoid relying only on artist names.
- For historical scenes: name the period and ban modern elements.
- For editorial layouts: use simulated body text unless exact copy is short enough to control.
