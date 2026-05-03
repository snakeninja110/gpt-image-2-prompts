#!/usr/bin/env bash
set -euo pipefail

usage() {
  cat <<'EOF'
Install GPT Image 2 Prompts and the g2i alias into Codex.

Usage:
  ./install.sh [--force]

Options:
  --force   Replace existing installed copies.
  -h, --help
            Show this help.
EOF
}

force=0
while [[ $# -gt 0 ]]; do
  case "$1" in
    --force)
      force=1
      shift
      ;;
    -h|--help)
      usage
      exit 0
      ;;
    *)
      echo "Unknown option: $1" >&2
      usage >&2
      exit 1
      ;;
  esac
done

repo_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
codex_home="${CODEX_HOME:-"$HOME/.codex"}"
skills_dir="$codex_home/skills"
main_dest="$skills_dir/gpt-image-2-prompts"
alias_dest="$skills_dir/g2i"

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
      exit 1
    fi

    if [[ "$force" -eq 1 ]]; then
      rm -rf "$dest"
    else
      echo "Error: $name is already installed at $dest" >&2
      echo "Run ./install.sh --force to replace existing installed copies." >&2
      exit 1
    fi
  fi

  mkdir -p "$dest"
  rsync -a --exclude '.git' --exclude '.DS_Store' "$src"/ "$dest"/
  echo "Installed $name to $dest"
}

if ! command -v rsync >/dev/null 2>&1; then
  echo "Error: rsync is required to install this skill." >&2
  exit 1
fi

copy_skill "$repo_dir" "$main_dest" "gpt-image-2-prompts"
copy_skill "$repo_dir/aliases/g2i" "$alias_dest" "g2i"

echo "Restart Codex to use \$gpt-image-2-prompts or \$g2i."
