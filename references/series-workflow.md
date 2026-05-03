# Series And Storyboard Workflow

Use this file for decks, campaigns, image series, multi-panel boards, and storyboards.

## Style Lock

Before per-image prompts, write one shared `Style Lock` that all images must follow.

Include:

- Visual medium
- Palette
- Typography behavior
- Layout grid
- Lighting system
- Texture and material rules
- Repeated components
- Avoid rules

Example structure:

```text
Style Lock:
Use [medium/style]. Palette is [colors]. Layout uses [grid/system]. Lighting is [lighting]. Typography is [type behavior]. Repeated elements include [frames/dividers/callouts/footer]. Avoid [style failures].
```

## Multi-Image Planning

For any series, produce a short plan before final prompts:

1. Series goal
2. Shared style lock
3. Image list with role for each image
4. Per-image visible text
5. Generation order

Use one visual DNA across the whole set. Vary composition, emphasis, and visual anchor instead of changing style every time.

For brand systems, campaign grids, card sets, and touchpoint boards, lock:

- Shared brand strategy and emotional target
- Repeated color, typography, line, and spacing rules
- Which assets are variants and which identity details must stay fixed
- Whether the output is a single board, multiple final images, or both

## Storyboard Pattern

Use for video ad boards, product TVC concepts, tutorials, motion sequences, or campaign keyframes.

```text
Create a polished [category] storyboard in [aspect ratio], presented as a [panel count]-panel grid.
Keep [product/subject] consistent across all panels.
Use [shared visual style, lighting, palette].

Include exactly [N] panels:
1. [shot type] - [action] - [visible title/time]
2. [shot type] - [action] - [visible title/time]
...

Add [language] panel titles, timestamps, and concise notes.
Avoid wrong panel count, inconsistent subject identity, unreadable labels, random logos, and watermark.
```

## Alternative Boards

When the user asks for exploration, generate a board with a main direction plus 1-2 alternatives only when useful. If the user wants a final asset, explicitly say `single final image only` to avoid unwanted moodboards.

## Slide Or PPT Image Series

For image-only presentation pages:

- Keep each page as one complete image.
- Use sparse text: one title, one subtitle or takeaway, and at most 2-3 short points.
- Make each slide independently usable.
- Keep repeated headers, footers, dividers, and annotation style consistent.
- Do not overpack text. If the content is dense, split it into more pages.

## Reference Image Handling

When a user provides a reference image:

```text
Preserve:
[Identity, pose, product shape, layout, color, or composition to keep.]

Change:
[Style, lighting, environment, mood, format, or layout to transform.]

Do not change:
[Brand-critical or identity-critical details.]
```

For a series based on one reference, keep the reference-critical traits in every per-image prompt.
