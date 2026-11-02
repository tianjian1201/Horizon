#!/usr/bin/env bash
# 把已生成的日报（docs/_posts/*.md）提交并推送到 GitHub Pages 源仓库。
#   scripts/publish.sh            # 提交并推送
#   scripts/publish.sh --no-push  # 只提交（调试用）
#
# 依赖 DEPLOY.md §10 的配置：
#   git remote add publish https://github.com/<你的账号>/<仓库>.git
#   .env 里的 GITHUB_TOKEN 需要对该仓库有 Contents: read/write 权限
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
PROJECT_DIR="$(dirname "$SCRIPT_DIR")"
cd "$PROJECT_DIR"

REMOTE="${HORIZON_PUBLISH_REMOTE:-publish}"
BRANCH="${HORIZON_PUBLISH_BRANCH:-main}"

if [ -f .env ]; then
  set -a
  # shellcheck disable=SC1091
  . ./.env
  set +a
fi

git add docs/_posts
if git diff --cached --quiet; then
  echo "[publish] 没有新的日报，跳过"
  exit 0
fi

git commit -m "docs: daily digest $(date +%F)"

if [ "${1:-}" = "--no-push" ]; then
  echo "[publish] 已提交，未推送（--no-push）"
  exit 0
fi

url="$(git remote get-url "$REMOTE" 2>/dev/null || true)"
if [ -z "$url" ]; then
  echo "[publish] 未配置 remote '$REMOTE'，见 DEPLOY.md §10" >&2
  exit 1
fi

# .env 里的 PAT 只在命令行里用一次，不写进 .git/config
if [ -n "${GITHUB_TOKEN:-}" ] && [[ "$url" == https://github.com/* ]]; then
  push_url="https://x-access-token:${GITHUB_TOKEN}@${url#https://}"
else
  push_url="$url"
fi

git push "$push_url" "HEAD:${BRANCH}" 2>&1 | sed -e "s/x-access-token:[^@]*@/x-access-token:***@/g"
echo "[publish] 已推送 ${REMOTE}/${BRANCH}"
