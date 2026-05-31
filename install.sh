#!/usr/bin/env bash
set -euo pipefail

usage() {
  cat <<'EOF'
Install GPT Image 2 Prompts and the g2i alias into Codex and/or Claude Code.
安装 GPT Image 2 Prompts 和短别名 g2i 到 Codex 和/或 Claude Code。

Usage:
  ./install.sh [--target codex|claude|both] [--force]

Options:
  --target  Install target. Defaults to codex.
            安装目标。默认安装到 codex。
  --force   Replace existing installed copies.
            替换已经安装过的旧版本。
  -h, --help
            Show this help.
EOF
}

force=0
target="codex"
while [[ $# -gt 0 ]]; do
  case "$1" in
    --target)
      if [[ $# -lt 2 ]]; then
        echo "Error: --target requires codex, claude, or both." >&2
        echo "错误：--target 后面需要填写 codex、claude 或 both。" >&2
        exit 1
      fi
      target="$2"
      shift 2
      ;;
    --force)
      force=1
      shift
      ;;
    -h|--help)
      usage
      exit 0
      ;;
    *)
      echo "Error: unknown option: $1" >&2
      echo "错误：无法识别这个参数：$1" >&2
      usage >&2
      exit 1
      ;;
  esac
done

case "$target" in
  codex|claude|both)
    ;;
  *)
    echo "Error: --target must be codex, claude, or both." >&2
    echo "错误：--target 只能是 codex、claude 或 both。" >&2
    exit 1
    ;;
esac

repo_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

copy_skill() {
  local src="$1"
  local dest="$2"
  local name="$3"

  if [[ -e "$dest" ]]; then
    local real_src
    local real_dest
    real_src="$(cd "$src" && pwd -P)"
    real_dest="$(cd "$dest" && pwd -P)"
    if [[ "$real_src" == "$real_dest" ]]; then
      echo "Error: source and destination are the same for $name." >&2
      echo "Run this installer from a repository clone, not from the installed skill directory." >&2
      echo "错误：安装来源和目标目录相同。" >&2
      echo "请从仓库克隆目录运行安装脚本，不要从已经安装好的技能目录运行。" >&2
      exit 1
    fi

    if [[ "$force" -eq 1 ]]; then
      rm -rf "$dest"
    else
      echo "Error: $name is already installed at $dest" >&2
      echo "Run ./install.sh --target $target --force to replace existing installed copies." >&2
      echo "提示：$name 已经安装在 $dest" >&2
      echo "如果你只是想更新旧版本，请运行：./install.sh --target $target --force" >&2
      exit 1
    fi
  fi

  mkdir -p "$dest"
  rsync -a --exclude '.git' --exclude '.DS_Store' "$src"/ "$dest"/
  echo "Installed $name to $dest"
  echo "已安装 $name 到 $dest"
}

install_codex() {
  local codex_home="${CODEX_HOME:-"$HOME/.codex"}"
  local skills_dir="$codex_home/skills"

  copy_skill "$repo_dir" "$skills_dir/gpt-image-2-prompts" "gpt-image-2-prompts"
  copy_skill "$repo_dir/aliases/g2i" "$skills_dir/g2i" "g2i"

  echo "Restart Codex to use \$gpt-image-2-prompts or \$g2i."
  echo "下一步：重启 Codex，然后输入下面这句测试是否安装成功："
  echo "\$g2i 测试一下：帮我写一张咖啡产品广告图 prompt，比例 1:1"
}

install_claude() {
  local claude_home="${CLAUDE_HOME:-"$HOME/.claude"}"
  local skills_dir="$claude_home/skills"

  copy_skill "$repo_dir" "$skills_dir/gpt-image-2-prompts" "gpt-image-2-prompts"
  copy_skill "$repo_dir/aliases/g2i" "$skills_dir/g2i" "g2i"

  echo "Start or restart Claude Code to use /gpt-image-2-prompts or /g2i."
  echo "下一步：启动或重启 Claude Code，然后输入下面这句测试是否安装成功："
  echo "/g2i 测试一下：帮我写一张咖啡产品广告图 prompt，比例 1:1"
}

if ! command -v rsync >/dev/null 2>&1; then
  echo "Error: rsync is required to install this skill." >&2
  echo "错误：安装需要 rsync。" >&2
  echo "你也可以查看 README 里的备用安装方式，手动复制技能目录。" >&2
  exit 1
fi

case "$target" in
  codex)
    install_codex
    ;;
  claude)
    install_claude
    ;;
  both)
    install_codex
    install_claude
    ;;
esac
