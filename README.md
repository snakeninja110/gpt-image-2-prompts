# GPT Image 2 Prompts Skill

[中文版](README.zh-CN.md)

A Codex skill for writing director-style GPT-Image-2 prompts from reusable visual patterns and case-derived production playbooks.

> **For New Users**
>
> If you have no programming or AI prompt-writing experience, think of this as an image-request rewriter: describe the image you want in plain language, and it will turn that request into a more professional image-generation prompt. This skill does not generate the image directly. It generates a prompt you can paste into GPT-Image-2, ChatGPT image generation, or another image-generation tool.
>
> Compared with asking AI to write a random prompt directly, this skill follows a fixed image-production workflow: it selects a suitable case pattern, then fills in composition, camera, lighting, text, and constraints. That makes the output more stable, more reusable, and less likely to suffer from malformed text, product drift, cluttered composition, or inconsistent style.

## Why Not Just Ask AI To Write A Prompt?

You can ask AI to write a prompt directly, but the result often depends on how you phrase that one request. This skill turns image-prompt writing into a stable workflow: it identifies the image type, applies a relevant case pattern, then fills in composition, camera, lighting, text, and constraints.

The practical advantages are:

- **More consistent output**: Each result follows a clear structure instead of drifting between ad copy, loose description, and generic prompt text.
- **Better image direction**: It transfers proven patterns for product ads, information graphics, UI mockups, storyboards, brand boards, and other visual formats to your actual subject.
- **Fewer common failures**: It adds controls for malformed text, random logos, product drift, cluttered layouts, inconsistent identity, wrong panel counts, and other frequent image-generation problems.
- **Easier for beginners**: You can describe the image in plain language, and the skill fills in low-risk defaults such as aspect ratio, use case, visible language, and image format.
- **Better for iteration**: If the first image is not right, you can say what failed, what to keep, and what to change, then get a clearer revised prompt.
- **Better for references and series**: It separates what to preserve, what to change, and what must not change, which helps with identity-preserving edits, product consistency, and multi-image style locks.

In short: a general AI may give you a polished description; this skill gives you a controlled, reusable, and easier-to-revise image-generation brief.

## What It Helps With

- Product and e-commerce images
- Advertising creative
- Brand identity and touchpoint systems
- Architecture, interiors, and spatial renderings
- Portrait and photography prompts
- Posters, illustrations, and information graphics
- Concept typography posters and scientific scale diagrams
- Character sheets and reference cards
- UI, social media, live, and analysis report mockups
- Identity-preserving photo remixes and style transfers
- Editorial layouts and publication visuals
- Historical, cultural, and narrative scenes
- Concept product teardown and research boards
- Multi-panel storyboards and image series
- Visual slide images that need a consistent style lock
- Case-derived pattern transfer into production-ready prompts

## Installation

Installation includes both the main skill and the short `g2i` alias. Codex uses `$g2i`; Claude Code uses `/g2i`.

### Codex Users

The easiest path is to ask Codex to install it for you. Open Codex and paste this request:

```text
Please install this Codex skill:
https://github.com/snakeninja110/gpt-image-2-prompts

Requirements:
1. First check whether ~/.codex/skills/gpt-image-2-prompts and ~/.codex/skills/g2i are already installed on this machine.
2. If they are not installed, clone the repository and run ./install.sh --target codex.
3. If an older version is already installed, run ./install.sh --target codex --force to update it.
4. After installation, tell me to restart Codex and test it with $g2i.
```

If Codex asks for permission to run installation commands, allow the required commands.

If you are comfortable with a terminal, you can also run:

```bash
git clone https://github.com/snakeninja110/gpt-image-2-prompts.git
cd gpt-image-2-prompts
./install.sh --target codex
```

### Claude Code Users

The easiest path is to ask Claude Code to install it for you. Open Claude Code and paste this request:

```text
Please install this Claude Code skill:
https://github.com/snakeninja110/gpt-image-2-prompts

Requirements:
1. First check whether ~/.claude/skills/gpt-image-2-prompts and ~/.claude/skills/g2i are already installed on this machine.
2. If they are not installed, clone the repository and run ./install.sh --target claude.
3. If an older version is already installed, run ./install.sh --target claude --force to update it.
4. After installation, tell me to start or restart Claude Code and test it with /g2i.
```

If Claude Code asks for permission to run installation commands, allow the required commands.

If you are comfortable with a terminal, you can also run:

```bash
git clone https://github.com/snakeninja110/gpt-image-2-prompts.git
cd gpt-image-2-prompts
./install.sh --target claude
```

### Manual Install

If you use both Codex and Claude Code, install into both tools at once:

```bash
git clone https://github.com/snakeninja110/gpt-image-2-prompts.git
cd gpt-image-2-prompts
./install.sh --target both
```

If you already installed an older copy, choose the matching target to update it:

```bash
./install.sh --target codex --force
./install.sh --target claude --force
./install.sh --target both --force
```

Restart Codex, or start/restart Claude Code after installing.

### Check That It Works

Codex users should type:

```text
$g2i 测试一下：帮我写一张咖啡产品广告图 prompt，比例 1:1
```

Claude Code users should type:

```text
/g2i 测试一下：帮我写一张咖啡产品广告图 prompt，比例 1:1
```

If the reply includes `Case pattern applied` and a complete prompt, the install worked.

### Backup Install Methods

If the methods above do not fit your Codex environment, you can also install from GitHub with the Codex skill installer:

```bash
python3 ~/.codex/skills/.system/skill-installer/scripts/install-skill-from-github.py \
  --repo snakeninja110/gpt-image-2-prompts \
  --path . \
  --name gpt-image-2-prompts

python3 ~/.codex/skills/.system/skill-installer/scripts/install-skill-from-github.py \
  --repo snakeninja110/gpt-image-2-prompts \
  --path aliases/g2i \
  --name g2i
```

Or copy both skill folders directly into:

```bash
cp -R . ~/.codex/skills/gpt-image-2-prompts
cp -R aliases/g2i ~/.codex/skills/g2i
```

Claude Code users can also copy directly into:

```bash
cp -R . ~/.claude/skills/gpt-image-2-prompts
cp -R aliases/g2i ~/.claude/skills/g2i
```

Restart Codex, or start/restart Claude Code after copying the folders.

## Skill Layout

```text
.
├── install.sh
├── SKILL.md
├── agents/
│   └── openai.yaml
├── aliases/
│   └── g2i/
│       ├── SKILL.md
│       └── agents/
│           └── openai.yaml
└── references/
    ├── category-patterns.md
    ├── case-playbook.md
    ├── prompt-as-code.md
    ├── prompt-architecture.md
    └── series-workflow.md
```

## Usage

### Command Cheat Sheet

| Environment | Main command | Short command |
| --- | --- | --- |
| Codex | `$gpt-image-2-prompts` | `$g2i` |
| Claude Code | `/gpt-image-2-prompts` | `/g2i` |

### First Use Flow

1. In Codex, type `$g2i`; in Claude Code, type `/g2i`; then add your image request.
2. The tool returns a more professional prompt.
3. Copy that prompt.
4. Paste it into GPT-Image-2, ChatGPT image generation, or another image-generation tool.

### Primary Shortcut

Use the skill name directly in Codex:

```text
$gpt-image-2-prompts 写一个 GPT-Image-2 做图 prompt：主题是[主题]，比例[比例]，风格[风格]，用途[用途]。
```

Use the slash command in Claude Code:

```text
/gpt-image-2-prompts 写一个 GPT-Image-2 做图 prompt：主题是[主题]，比例[比例]，风格[风格]，用途[用途]。
```

This is the main shortcut. The skill will guide Codex to write prompts as visual direction: goal, selected case pattern, subject, composition, scene, camera, lighting, materials, text, style lock, and constraints.

### Default Short Alias

Installation also installs the short alias skill from `aliases/g2i`.
Use it when you want a shorter command:

```text
$g2i 做一张[图片类型]，主题[主题]，比例[比例]，输出中文 prompt。
```

Use the matching slash command in Claude Code:

```text
/g2i 做一张[图片类型]，主题[主题]，比例[比例]，输出中文 prompt。
```

The alias delegates to the main skill; it does not duplicate the main workflow.

## Prompt Starters

Copy and fill these snippets in Codex. Claude Code users can replace `$g2i` with `/g2i`, and `$gpt-image-2-prompts` with `/gpt-image-2-prompts`.

### Which Starter Should I Use?

| What you want | Use this starter |
| --- | --- |
| Product listing image or marketplace hero image | E-commerce Main Image |
| Ad poster or brand campaign visual | Product Ad |
| Social cover or social media image | Simplest Starter / Information Graphic |
| App, website, or dashboard screenshot | UI Mockup |
| Concept, process, or educational explanation | Information Graphic |
| Multiple images with one consistent style, or visual slide images | Visual Slide Series |
| Video concept, ad board, or tutorial sequence | Storyboard |
| Reference-image edit that must preserve identity or product appearance | Reference Image Remix |

### Simplest Starter

```text
$g2i 我想做一张图片：
内容是：[一句话描述]
用途是：[发小红书/做广告/放网站/做封面]
风格是：[高级/可爱/科技/极简/真实摄影]
比例是：[1:1 / 16:9 / 9:16]
```

### Final Prompt Only

```text
$g2i 帮我写一个 GPT-Image-2 prompt，只输出最终 prompt，不要解释：
内容：[一句话描述]
用途：[用途]
比例：[比例]
```

### Complete Example

User input:

```text
$g2i 我想做一张图片：
内容是：一杯冷萃咖啡放在透明玻璃杯里，旁边有冰块和咖啡豆
用途是：咖啡店新品海报
风格是：高级、清爽、真实摄影
比例是：1:1
```

You should get a result with a structure like this:

```text
Case pattern applied: luxury hero ad

Final prompt:
Create a 1:1 premium product poster for a new cold brew coffee...
```

Copy the full text after `Final prompt` into GPT-Image-2, ChatGPT image generation, or another image-generation tool.

### Improve A Bad Result

```text
$g2i 根据上一次 prompt 帮我优化：
问题：[文字不清楚/主体变形/画面太乱/不像产品图/比例不对]
保留：[想保留的部分]
改成：[想调整的方向]
输出：一版新的最终 prompt。
```

### Reference Image Remix

```text
$g2i 我会提供一张参考图，请帮我写 GPT-Image-2 prompt：
保留：[人物长相/产品外观/logo/颜色/构图]
改变：[背景/风格/场景/光线/服装]
不要改变：[最重要的身份特征]
用途：[用途]
比例：[比例]
```

### Universal

```text
$gpt-image-2-prompts 根据下面需求写一个 GPT-Image-2 prompt：
目标：[图片用途]
主体：[产品/人物/场景/界面]
比例：[16:9 / 9:16 / 1:1 / 4:5]
语言：[中文/英文/双语/无文字]
风格：[参考风格]
必须避免：[不要出现的内容]
```

### Case-Derived Prompt

```text
$gpt-image-2-prompts 借鉴优秀案例模式，为下面需求写一个可直接出图的 GPT-Image-2 prompt：
需求：[产品/品牌/海报/信息图/UI/分镜/拆解板]
目标：[投放/展示/解释/转化/社媒传播]
比例：[比例]
语言：[中文/英文/无文字]
要求：先说明使用了哪种案例模式，再输出最终 prompt。
```

### Prompt-as-Code

```text
$gpt-image-2-prompts 先把我的需求整理成 Prompt-as-Code schema，再输出最终 GPT-Image-2 prompt：
[粘贴需求]
```

### Product Ad

```text
$gpt-image-2-prompts 写一张产品广告图 prompt：
产品：[产品名和外观]
卖点：[1-2 个核心卖点]
场景：[棚拍/生活方式/微缩场景/概念广告]
调性：[高端/科技/自然/奢华/年轻]
比例：[比例]
文字：[需要出现的准确文案]
```

### E-commerce Main Image

```text
$gpt-image-2-prompts 写一张电商主图 prompt：
商品：[商品]
平台用途：[淘宝/小红书/亚马逊/独立站]
主视觉：[单品 hero / 使用场景 / 功能拆解]
附加元素：[卖点 icon / 价格角标 / 无文字]
约束：商品身份一致，材质真实，文字少而准。
```

### Information Graphic

```text
$gpt-image-2-prompts 写一张中文信息图 prompt：
主题：[主题]
受众：[普通用户/投资人/开发者/学生]
版式：[流程图/技术详解/科普海报/对比图]
模块：[列出 3-6 个模块]
风格：[科技杂志/Apple 极简/文博展板/白皮书]
比例：[比例]
```

### Brand Identity Board

```text
$gpt-image-2-prompts 写一张品牌触点系统视觉板 prompt：
品牌名：[品牌名]
行业：[行业]
关键词：[3-5 个关键词]
触点：[包装/名片/App 图标/网站/社媒/菜单/标签]
调性：[现代极简/奢华编辑/科技品牌/日式留白]
约束：不是单个 logo，要展示统一品牌系统。
```

### UI Mockup

```text
$gpt-image-2-prompts 写一张 UI mockup prompt：
产品：[App/网站/仪表盘/社媒截图]
核心界面：[首页/详情页/数据页/发布页]
内容模块：[模块列表]
视觉风格：[风格]
设备或画幅：[iPhone 截图/桌面网页/16:9 展示图]
```

### Storyboard

```text
$gpt-image-2-prompts 写一个多格分镜图 prompt：
主题：[广告/教程/产品使用/视频概念]
格数：[4/6/9/16]
比例：[画幅]
每格内容：[按顺序列出动作]
文字：[标题、时间戳、短说明]
约束：格数准确，主体一致，标签清晰。
```

### Visual Slide Series

```text
$gpt-image-2-prompts 为一组图片版 PPT 写统一风格 prompt：
主题：[主题]
页数：[页数]
受众：[受众]
风格：[风格]
每页标题：[可选]
要求：先输出 Style Lock，再逐页写 prompt。
```

### Architecture Or Space

```text
$gpt-image-2-prompts 写一张建筑/室内空间渲染 prompt：
空间：[空间类型]
功能：[用途]
材质：[木/石/玻璃/金属/混凝土等]
视角：[人眼视角/广角/鸟瞰]
光线：[自然光/夜景/冷暖对比]
比例：[比例]
```

### Concept Product Teardown

```text
$gpt-image-2-prompts 写一张概念产品研发拆解板 prompt：
产品：[产品/家具/装置]
灵感来源：[揉皱纸/贝壳/机械结构/自然形态]
必须展示：[形态分析/迭代步骤/结构拆解/材料/规格/使用场景]
风格：工业设计提案板，技术图纸 + 产品摄影混合。
```

## Sources And Method

This skill references the case categories in [EvoLinkAI/awesome-gpt-image-2-API-and-Prompts](https://github.com/EvoLinkAI/awesome-gpt-image-2-API-and-Prompts), plus the Prompt-as-Code and industrial template ideas from [freestylefly/awesome-gpt-image-2](https://github.com/freestylefly/awesome-gpt-image-2). It does not copy the original prompts; it turns reusable methods into a practical image-prompt workflow.

## Attribution

This project is a workflow-oriented Codex skill derived from studying the public repository:

- https://github.com/EvoLinkAI/awesome-gpt-image-2-API-and-Prompts
- https://github.com/freestylefly/awesome-gpt-image-2

It should be treated as an independent case-pattern transfer and prompt-generation guide, not a mirror of either original prompt dataset.
