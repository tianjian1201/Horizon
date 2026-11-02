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

REMOTE="${HORIZON_PUBLISH_REMOTE:-origin}"
BRANCH="${HORIZON_PUBLISH_BRANCH:-main}"

if [ -f .env ]; then
  set -a
  # shellcheck disable=SC1091
  . ./.env
  set +a
fi

git add docs/_posts
if git diff --cached --quiet; then
  # 没有新日报也继续往下走：可能要补推本地尚未推送的提交（例如首次部署）
  echo "[publish] 没有新的日报；检查是否有未推送的提交"
else
  git commit -m "docs: daily digest $(date +%F)"
fi

if [ "${1:-}" = "--no-push" ]; then
  echo "[publish] 已提交，未推送（--no-push）"
  exit 0
fi

url="$(git remote get-url "$REMOTE" 2>/dev/null || true)"
if [ -z "$url" ]; then
  echo "[publish] 未配置 remote '$REMOTE'，见 DEPLOY.md §10" >&2
  exit 1
fi

# 两种 remote 都支持：
#  - https://github.com/...  → 用 .env 里的 PAT（HORIZON_PUSH_TOKEN 优先，其次 GITHUB_TOKEN）
#  - git@github.com:...      → 用 SSH key；本机 22 端口被代理挡掉，强制走 ssh.github.com:443
PUSH_TOKEN="${HORIZON_PUSH_TOKEN:-${GITHUB_TOKEN:-}}"
if [[ "$url" == https://github.com/* ]]; then
  if [ -z "$PUSH_TOKEN" ]; then
    echo "[publish] remote 是 HTTPS 但 .env 里没有可用 PAT（HORIZON_PUSH_TOKEN / GITHUB_TOKEN）" >&2
    exit 1
  fi
  push_url="https://x-access-token:${PUSH_TOKEN}@${url#https://}"
elif [[ "$url" == git@github.com:* ]]; then
  export GIT_SSH_COMMAND="${GIT_SSH_COMMAND:-ssh -F /dev/null -o HostName=ssh.github.com -p 443 -o IdentityFile=$HOME/.ssh/id_ed25519 -o IdentitiesOnly=yes -o StrictHostKeyChecking=accept-new -o UserKnownHostsFile=$PROJECT_DIR/.ssh_known_hosts}"
  push_url="$url"
else
  push_url="$url"
fi

git push "$push_url" "HEAD:${BRANCH}" 2>&1 | sed -e "s/x-access-token:[^@]*@/x-access-token:***@/g"
echo "[publish] 已推送 ${REMOTE}/${BRANCH}"
