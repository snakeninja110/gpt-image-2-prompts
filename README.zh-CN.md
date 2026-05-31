# GPT Image 2 Prompts Skill

[English](README.md)

这是一个 Codex 技能，用于基于可复用的视觉模式和案例沉淀的生产级 playbook，编写导演式 GPT-Image-2 做图 prompt。

> **给新手的说明**
>
> 如果你没有编程经验，也不了解 AI prompt，可以把它理解成一个“作图需求改写器”：你用日常语言描述想做什么图，它会帮你改写成更专业、更容易出图的图片生成指令。这个技能不会直接生成图片，它会生成一段可以复制到 GPT-Image-2、ChatGPT 图片生成或其他图片生成工具里的 prompt。
>
> 相比直接让 AI 随机写一段 prompt，这个 skill 的优势是：它会按固定的图像生产流程工作，先选择合适的案例模式，再补齐构图、镜头、光线、文字和约束规则，让输出更稳定、更可复用，也更容易减少文字错误、产品跑样、画面混乱和风格不一致等常见问题。

## 为什么不直接让 AI 写 Prompt？

直接让 AI 写 prompt 当然也可以，但结果很容易取决于你这次怎么问。这个 skill 的优势是把“生图 prompt”变成一套稳定流程：先判断你要做什么类型的图，再套用合适的优秀案例模式，最后补齐构图、镜头、光线、文字和约束规则。

它主要能帮你解决这些问题：

- **输出更稳定**：每次都会按固定结构生成，不会一会儿像广告文案，一会儿像普通描述。
- **更容易出好图**：它会把产品广告、信息图、UI mockup、分镜图、品牌触点板等成熟案例模式迁移到你的主题上。
- **减少常见翻车点**：会主动提醒模型避免文字变形、随机 logo、产品跑样、画面太乱、人物或产品身份不一致、分镜格数错误等问题。
- **适合新手**：你只需要说清楚想做什么图，它会自动补齐低风险默认值，例如比例、用途、语言和画面类型。
- **适合反复修改**：如果第一张图不满意，可以继续告诉它“哪里不好、保留什么、改成什么”，它会帮你重写一版更明确的 prompt。
- **适合参考图和系列图**：它会明确区分“保留什么、改变什么、不能改变什么”，更适合做身份保持、产品保持和统一风格系列图。

一句话说：普通 AI 可能只是帮你写一段好看的描述；这个 skill 会按图像生产流程帮你写一段更可控、更可复用、也更容易修正的出图指令。

## 能帮你做什么

- 产品图和电商图片
- 广告创意
- 品牌识别和触点系统
- 建筑、室内和空间渲染
- 肖像和摄影 prompt
- 海报、插画和信息图
- 字体主视觉海报和科学尺度图
- 角色设定表和参考卡
- UI、社交媒体、直播和分析报告 mockup
- 身份保持照片改造和风格转绘
- 编辑版式和出版物视觉
- 历史、文化和叙事场景
- 概念产品拆解和研究板
- 多格分镜和系列图片
- 需要统一风格锁定的图片版幻灯片
- 将优秀案例模式迁移为生产级 prompt

## 安装

安装时会同时安装主技能和短别名 `g2i`。Codex 使用 `$g2i` 调用，Claude Code 使用 `/g2i` 调用。

### Codex 用户

最简单的方式是让 Codex 帮你安装。打开 Codex，把下面这段话复制进去：

```text
请帮我安装这个 Codex skill：
https://github.com/snakeninja110/gpt-image-2-prompts

要求：
1. 先检查本机是否已经安装了 ~/.codex/skills/gpt-image-2-prompts 和 ~/.codex/skills/g2i。
2. 如果没有安装，请克隆仓库并运行 ./install.sh --target codex。
3. 如果已经安装旧版本，请运行 ./install.sh --target codex --force 更新。
4. 安装完成后告诉我需要重启 Codex，并用 $g2i 测试是否可用。
```

如果你在 Codex 里看到权限确认，请允许它运行安装所需的命令。

如果你熟悉终端，也可以自己运行：

```bash
git clone https://github.com/snakeninja110/gpt-image-2-prompts.git
cd gpt-image-2-prompts
./install.sh --target codex
```

### Claude Code 用户

最简单的方式是让 Claude Code 帮你安装。打开 Claude Code，把下面这段话复制进去：

```text
请帮我安装这个 Claude Code skill：
https://github.com/snakeninja110/gpt-image-2-prompts

要求：
1. 先检查本机是否已经安装了 ~/.claude/skills/gpt-image-2-prompts 和 ~/.claude/skills/g2i。
2. 如果没有安装，请克隆仓库并运行 ./install.sh --target claude。
3. 如果已经安装旧版本，请运行 ./install.sh --target claude --force 更新。
4. 安装完成后告诉我需要启动或重启 Claude Code，并用 /g2i 测试是否可用。
```

如果 Claude Code 请求执行命令权限，请允许它运行安装所需的命令。

如果你熟悉终端，也可以自己运行：

```bash
git clone https://github.com/snakeninja110/gpt-image-2-prompts.git
cd gpt-image-2-prompts
./install.sh --target claude
```

### 手动安装

如果你同时使用 Codex 和 Claude Code，可以一次安装到两个工具：

```bash
git clone https://github.com/snakeninja110/gpt-image-2-prompts.git
cd gpt-image-2-prompts
./install.sh --target both
```

如果你已经安装过旧版本，选择对应目标更新：

```bash
./install.sh --target codex --force
./install.sh --target claude --force
./install.sh --target both --force
```

安装后重启 Codex，或启动/重启 Claude Code。

### 检查是否安装成功

Codex 用户输入：

```text
$g2i 测试一下：帮我写一张咖啡产品广告图 prompt，比例 1:1
```

Claude Code 用户输入：

```text
/g2i 测试一下：帮我写一张咖啡产品广告图 prompt，比例 1:1
```

如果回复里出现 `Case pattern applied` 和一段完整 prompt，说明安装成功。

### 备用安装方式

如果上面的方式不适合你的 Codex 环境，可以使用 Codex 技能安装器从 GitHub 仓库安装：

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

也可以直接把两个技能目录复制到：

```bash
cp -R . ~/.codex/skills/gpt-image-2-prompts
cp -R aliases/g2i ~/.codex/skills/g2i
```

Claude Code 用户也可以直接复制到：

```bash
cp -R . ~/.claude/skills/gpt-image-2-prompts
cp -R aliases/g2i ~/.claude/skills/g2i
```

复制完成后同样需要重启 Codex，或启动/重启 Claude Code。

## 技能目录结构

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

## 使用方式

### 命令对照

| 使用环境 | 主命令 | 短命令 |
| --- | --- | --- |
| Codex | `$gpt-image-2-prompts` | `$g2i` |
| Claude Code | `/gpt-image-2-prompts` | `/g2i` |

### 第一次使用流程

1. 在 Codex 输入 `$g2i`，或在 Claude Code 输入 `/g2i`，再加你的作图需求。
2. 工具会返回一段更专业的 prompt。
3. 复制这段 prompt。
4. 粘贴到 GPT-Image-2、ChatGPT 图片生成或其他图片生成工具里出图。

### 主快捷命令

在 Codex 中直接使用技能名：

```text
$gpt-image-2-prompts 写一个 GPT-Image-2 做图 prompt：主题是[主题]，比例[比例]，风格[风格]，用途[用途]。
```

在 Claude Code 中使用斜杠命令：

```text
/gpt-image-2-prompts 写一个 GPT-Image-2 做图 prompt：主题是[主题]，比例[比例]，风格[风格]，用途[用途]。
```

这是主要快捷方式。技能会引导 Codex 以视觉导演的方式写 prompt：目标、选用的案例模式、主体、构图、场景、镜头、光线、材质、文字、风格锁定和约束。

### 默认短别名

安装时也会从 `aliases/g2i` 安装短别名技能。
如果你想使用更短的命令，可以直接使用：

```text
$g2i 做一张[图片类型]，主题[主题]，比例[比例]，输出中文 prompt。
```

Claude Code 中对应使用：

```text
/g2i 做一张[图片类型]，主题[主题]，比例[比例]，输出中文 prompt。
```

该别名会委托给主技能，不会重复实现主工作流。

## Prompt 起手式

复制下面片段到 Codex，并按需填写。Claude Code 用户可以把开头的 `$g2i` 换成 `/g2i`，把 `$gpt-image-2-prompts` 换成 `/gpt-image-2-prompts`。

### 不知道选哪个模板

| 你想做什么 | 建议使用 |
| --- | --- |
| 商品图、平台主图 | 电商主图 |
| 广告海报、品牌宣传图 | 产品广告图 |
| 小红书封面、社媒配图 | 最简单 / 信息图 |
| App、网页、仪表盘截图 | UI Mockup |
| 解释概念、流程、知识点 | 信息图 |
| 多张统一风格图片或图片版 PPT | 图片版幻灯片系列 |
| 视频概念、广告分镜、教程步骤 | 分镜图 |
| 有参考图，需要保留身份或外观 | 参考图改造 |

### 最简单

```text
$g2i 我想做一张图片：
内容是：[一句话描述]
用途是：[发小红书/做广告/放网站/做封面]
风格是：[高级/可爱/科技/极简/真实摄影]
比例是：[1:1 / 16:9 / 9:16]
```

### 只要最终 Prompt

```text
$g2i 帮我写一个 GPT-Image-2 prompt，只输出最终 prompt，不要解释：
内容：[一句话描述]
用途：[用途]
比例：[比例]
```

### 完整例子

用户输入：

```text
$g2i 我想做一张图片：
内容是：一杯冷萃咖啡放在透明玻璃杯里，旁边有冰块和咖啡豆
用途是：咖啡店新品海报
风格是：高级、清爽、真实摄影
比例是：1:1
```

你应该会得到类似结构的结果：

```text
Case pattern applied: luxury hero ad

Final prompt:
Create a 1:1 premium product poster for a new cold brew coffee...
```

复制 `Final prompt` 后面的完整内容，到 GPT-Image-2、ChatGPT 图片生成或其他图片生成工具里出图。

### 出图不好时继续优化

```text
$g2i 根据上一次 prompt 帮我优化：
问题：[文字不清楚/主体变形/画面太乱/不像产品图/比例不对]
保留：[想保留的部分]
改成：[想调整的方向]
输出：一版新的最终 prompt。
```

### 参考图改造

```text
$g2i 我会提供一张参考图，请帮我写 GPT-Image-2 prompt：
保留：[人物长相/产品外观/logo/颜色/构图]
改变：[背景/风格/场景/光线/服装]
不要改变：[最重要的身份特征]
用途：[用途]
比例：[比例]
```

### 通用

```text
$gpt-image-2-prompts 根据下面需求写一个 GPT-Image-2 prompt：
目标：[图片用途]
主体：[产品/人物/场景/界面]
比例：[16:9 / 9:16 / 1:1 / 4:5]
语言：[中文/英文/双语/无文字]
风格：[参考风格]
必须避免：[不要出现的内容]
```

### 案例模式迁移

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

### 产品广告图

```text
$gpt-image-2-prompts 写一张产品广告图 prompt：
产品：[产品名和外观]
卖点：[1-2 个核心卖点]
场景：[棚拍/生活方式/微缩场景/概念广告]
调性：[高端/科技/自然/奢华/年轻]
比例：[比例]
文字：[需要出现的准确文案]
```

### 电商主图

```text
$gpt-image-2-prompts 写一张电商主图 prompt：
商品：[商品]
平台用途：[淘宝/小红书/亚马逊/独立站]
主视觉：[单品 hero / 使用场景 / 功能拆解]
附加元素：[卖点 icon / 价格角标 / 无文字]
约束：商品身份一致，材质真实，文字少而准。
```

### 信息图

```text
$gpt-image-2-prompts 写一张中文信息图 prompt：
主题：[主题]
受众：[普通用户/投资人/开发者/学生]
版式：[流程图/技术详解/科普海报/对比图]
模块：[列出 3-6 个模块]
风格：[科技杂志/Apple 极简/文博展板/白皮书]
比例：[比例]
```

### 品牌识别板

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

### 分镜图

```text
$gpt-image-2-prompts 写一个多格分镜图 prompt：
主题：[广告/教程/产品使用/视频概念]
格数：[4/6/9/16]
比例：[画幅]
每格内容：[按顺序列出动作]
文字：[标题、时间戳、短说明]
约束：格数准确，主体一致，标签清晰。
```

### 图片版幻灯片系列

```text
$gpt-image-2-prompts 为一组图片版 PPT 写统一风格 prompt：
主题：[主题]
页数：[页数]
受众：[受众]
风格：[风格]
每页标题：[可选]
要求：先输出 Style Lock，再逐页写 prompt。
```

### 建筑或空间

```text
$gpt-image-2-prompts 写一张建筑/室内空间渲染 prompt：
空间：[空间类型]
功能：[用途]
材质：[木/石/玻璃/金属/混凝土等]
视角：[人眼视角/广角/鸟瞰]
光线：[自然光/夜景/冷暖对比]
比例：[比例]
```

### 概念产品拆解

```text
$gpt-image-2-prompts 写一张概念产品研发拆解板 prompt：
产品：[产品/家具/装置]
灵感来源：[揉皱纸/贝壳/机械结构/自然形态]
必须展示：[形态分析/迭代步骤/结构拆解/材料/规格/使用场景]
风格：工业设计提案板，技术图纸 + 产品摄影混合。
```

## 来源与方法

本技能参考了 [EvoLinkAI/awesome-gpt-image-2-API-and-Prompts](https://github.com/EvoLinkAI/awesome-gpt-image-2-API-and-Prompts) 的案例分类，以及 [freestylefly/awesome-gpt-image-2](https://github.com/freestylefly/awesome-gpt-image-2) 的 Prompt-as-Code 和工业化模板思路。它不复制原始 prompt，而是把其中可复用的方法整理成适合实际出图的工作流。

## 致谢

本项目是一个面向工作流的 Codex 技能，源自对以下公开仓库的学习：

- https://github.com/EvoLinkAI/awesome-gpt-image-2-API-and-Prompts
- https://github.com/freestylefly/awesome-gpt-image-2

它应被视为一份独立的案例模式迁移与 prompt 生成指南，而不是任一原始 prompt 数据集的镜像。
