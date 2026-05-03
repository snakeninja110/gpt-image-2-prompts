# GPT Image 2 Prompts Skill

A Codex skill for writing director-style GPT-Image-2 prompts from reusable visual patterns.

This skill is inspired by the prompt organization and case categories in [EvoLinkAI/awesome-gpt-image-2-API-and-Prompts](https://github.com/EvoLinkAI/awesome-gpt-image-2-API-and-Prompts). It does not copy the source prompt collection; it distills the workflow into reusable prompt-writing guidance for image generation tasks.

It also incorporates Prompt-as-Code and industrial template patterns from [freestylefly/awesome-gpt-image-2](https://github.com/freestylefly/awesome-gpt-image-2), with deduplication against the existing category guidance.

## What It Helps With

- Product and e-commerce images
- Advertising creative
- Brand identity and touchpoint systems
- Architecture, interiors, and spatial renderings
- Portrait and photography prompts
- Posters, illustrations, and information graphics
- Character sheets and reference cards
- UI and social media mockups
- Editorial layouts and publication visuals
- Historical, cultural, and narrative scenes
- Concept product teardown and research boards
- Multi-panel storyboards and image series
- Visual slide images that need a consistent style lock

## Installation

Install from a GitHub repository with the Codex skill installer:

```bash
python3 ~/.codex/skills/.system/skill-installer/scripts/install-skill-from-github.py \
  --repo OWNER/REPO \
  --path . \
  --name gpt-image-2-prompts
```

Or copy this folder directly into:

```text
~/.codex/skills/gpt-image-2-prompts
```

Restart Codex after installing.

## Skill Layout

```text
.
├── SKILL.md
├── agents/
│   └── openai.yaml
└── references/
    ├── category-patterns.md
    ├── prompt-as-code.md
    ├── prompt-architecture.md
    └── series-workflow.md
```

## Usage

Example request:

```text
Use $gpt-image-2-prompts to write a prompt for a 9-panel e-commerce TVC storyboard for a skincare product.
```

The skill will guide Codex to write prompts as visual direction: goal, subject, composition, scene, camera, lighting, materials, text, style lock, and constraints.

## Attribution

This project is a workflow-oriented Codex skill derived from studying the public repository:

- https://github.com/EvoLinkAI/awesome-gpt-image-2-API-and-Prompts
- https://github.com/freestylefly/awesome-gpt-image-2

It should be treated as an independent prompt-writing guide, not a mirror of either original prompt dataset.
