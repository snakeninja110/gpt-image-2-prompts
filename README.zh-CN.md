# GPT Image 2 Prompts Skill

[English](README.md)

这是一个 Codex 技能，用于基于可复用的视觉模式，编写导演式 GPT-Image-2 做图 prompt。

本技能受到 [EvoLinkAI/awesome-gpt-image-2-API-and-Prompts](https://github.com/EvoLinkAI/awesome-gpt-image-2-API-and-Prompts) 中 prompt 组织方式和案例分类的启发。它不会复制原始 prompt 集合，而是将工作流提炼为适用于图像生成任务的可复用 prompt 写作指南。

它也吸收了 [freestylefly/awesome-gpt-image-2](https://github.com/freestylefly/awesome-gpt-image-2) 中的 Prompt-as-Code 和工业化模板模式，并与现有分类指导做了去重整合。

## 能帮你做什么

- 产品图和电商图片
- 广告创意
- 品牌识别和触点系统
- 建筑、室内和空间渲染
- 肖像和摄影 prompt
- 海报、插画和信息图
- 角色设定表和参考卡
- UI 和社交媒体 mockup
- 编辑版式和出版物视觉
- 历史、文化和叙事场景
- 概念产品拆解和研究板
- 多格分镜和系列图片
- 需要统一风格锁定的图片版幻灯片

## 安装

使用 Codex 技能安装器从 GitHub 仓库安装：

```bash
python3 ~/.codex/skills/.system/skill-installer/scripts/install-skill-from-github.py \
  --repo OWNER/REPO \
  --path . \
  --name gpt-image-2-prompts
```

也可以直接把这个文件夹复制到：

```text
~/.codex/skills/gpt-image-2-prompts
```

安装后重启 Codex。

## 技能目录结构

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

## 使用方式

### 主快捷命令

在 Codex 中直接使用技能名：

```text
$gpt-image-2-prompts 写一个 GPT-Image-2 做图 prompt：主题是[主题]，比例[比例]，风格[风格]，用途[用途]。
```

这是主要快捷方式。技能会引导 Codex 以视觉导演的方式写 prompt：目标、主体、构图、场景、镜头、光线、材质、文字、风格锁定和约束。

### 可选短别名

本仓库包含一个可选的本地别名技能，路径为 `aliases/g2i`。

如果你想使用更短的命令，可以手动安装：

```bash
cp -R aliases/g2i ~/.codex/skills/g2i
```

重启 Codex 后即可使用：

```text
$g2i 做一张[图片类型]，主题[主题]，比例[比例]，输出中文 prompt。
```

该别名会委托给 `$gpt-image-2-prompts`，不会重复实现主工作流。

## Prompt 起手式

复制下面片段到 Codex，并按需填写。

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

## 致谢

本项目是一个面向工作流的 Codex 技能，源自对以下公开仓库的学习：

- https://github.com/EvoLinkAI/awesome-gpt-image-2-API-and-Prompts
- https://github.com/freestylefly/awesome-gpt-image-2

它应被视为一份独立的 prompt 写作指南，而不是任一原始 prompt 数据集的镜像。
