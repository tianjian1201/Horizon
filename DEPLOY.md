# Horizon 本地部署说明（Docker）

本目录 = 上游仓库 `Thysrael/Horizon` 的克隆 + 本机部署配置。上游自带的 `README_zh.md`
和 `docs/` 是最权威的配置文档；本文只记录**本机这套部署**已经做过的配置和日常操作。

## 目录里哪些是本地文件（git 不管）

| 文件 | 作用 | 是否被 git 忽略 |
|---|---|---|
| `.env` | 密钥（DeepSeek key、可选 webhook/token），权限 600 | 是 |
| `data/config.json` | 运行配置（模型、信息源、阈值、推送） | 是 |
| `data/summaries/` | 生成的日报 Markdown | 是 |
| `docs/_posts/` | 日报的静态站点副本（Jekyll 用，可选） | 是 |
| `logs/` | 试跑与定时任务日志 | 是（`*.log`） |
| `docker-compose.override.yml` | 本机覆盖层：时区、运行用户、挂载 | 否，但不用提交 |

升级上游不影响以上文件：

```bash
cd /home/tianjian/tianjian/dsh/workspace/horizon
git pull --ff-only && docker compose build   # 有新依赖时必须 rebuild
```

## 1. 填 API Key（唯一必须做的事）

编辑 `.env`，把 `DEEPSEEK_API_KEY=` 填成真实 key：

```bash
chmod 600 .env   # 已设好，容器以宿主机身份(uid 1000)运行，600 即可读
```

`data/config.json` 里 `ai.provider=deepseek`、`api_key_env=DEEPSEEK_API_KEY`，
key 只从环境变量读，配置文件里不出现密钥。

换模型：改 `ai.model`（如 `deepseek-reasoner`）；换厂商：改 `ai.provider`
（`openai` / `anthropic` / `gemini` / `doubao` / `minimax` / `ali` / `ollama`）
并相应改 `api_key_env`，在 `.env` 里加对应 key。见 `docs/configuration.md#ai-providers`。

## 2. 冒烟测试（不花钱，只验证镜像/挂载/时区）

```bash
cd /home/tianjian/tianjian/dsh/workspace/horizon
docker compose run --rm horizon --help

docker compose run --rm --entrypoint sh horizon -c \
  'date; id; touch /app/data/.w && rm /app/data/.w && echo WRITE_OK'
```

期望：打出 `horizon` 的 usage、`date` 是 CST、`id` 是 `uid=1000`、`WRITE_OK`。

## 3. 正式跑一次

```bash
docker compose run --rm horizon --hours 24
```

- 首次建议 `--hours 6` 先控成本
- 输出：`data/summaries/horizon-YYYY-MM-DD-zh.md`（同时复制一份到
  `docs/_posts/`，给静态站点用）。**当前只生成中文**（`ai.languages: ["zh"]`），
  不再有 `-en.md`；要恢复中英双语就把 `en` 加回该数组。
- 加 `--log-level INFO` 看抓取/筛选细节

⚠️ **AI 出错也会 exit 0**：key 无效时流程照样跑完并打印 `Horizon completed
successfully`，只是入选 0 条。判断成败要看日报内容，不能只看退出码。

⚠️ **日报文件名里的日期按 UTC 生成**（代码里固定 `datetime.now(timezone.utc)`，
和容器 TZ 无关）。北京时间 8 点前跑，文件名会落在前一天；想让它显示当天日期
就把定时放在 08:00 之后。

## 4. 每日定时（宿主机 cron）

`docker compose run` 是一次性任务，须由外部定时器触发：

```bash
crontab -e
```

```cron
0 9 * * * cd /home/tianjian/tianjian/dsh/workspace/horizon && /usr/bin/docker compose run --rm -T horizon --hours 24 >> logs/cron.log 2>&1
```

要点：
- `-T` 必加（cron 里没有 TTY）
- 用 `docker compose run --rm`，不要 `up -d`（跑完即退）
- 日志在 `logs/cron.log`

## 5. 开飞书推送（可选）

1. 飞书群 → 添加「自定义机器人」→ 安全设置填关键词 `Horizon`
2. webhook 地址写进 `.env`：`HORIZON_WEBHOOK_URL=https://open.feishu.cn/open-apis/bot/v2/hook/xxx`
3. 把 `data/config.json` 的 `webhook.enabled` 改成 `true`

当前配置已是官方推荐的 `platform: feishu` + `layout: collapsible`
（一条总览 + 每条新闻一个可折叠面板），`languages: ["zh"]` 只推中文版。
钉钉 / 微信 / 邮件 / MCP 接法见 `docs/configuration.md`。

## 6. 调兴趣与质量

| 想干的事 | 改哪里 |
|---|---|
| 换/加信息源 | `data/config.json` → `sources.*` |
| 提高门槛，少而精 | `processing.profile_settings.<profile>.threshold`（0–10） |
| 控制总条数 | `digest.max_items` |
| 按类别限流（不让单一话题刷屏） | `digest.category_groups` + `group_by` |
| 让某源走固定读法 | 源的 `profile` 写死（如 `"tech-blog"`），不要 `"auto"` |
| 改「新闻 / 长文」怎么读 | `profiles/<id>/` 下的 `analysis.md`、`enrichment.md` |
| 语言（当前只中文） | `ai.languages`，现在是 `["zh"]`；加 `"en"` 即恢复中英双语 |

当前启用中的源：Hacker News、GitHub Releases（vllm、uv）、RSS（Simon Willison /
vLLM Blog / Sean Goedecke / GitHub Trending / 阮一峰 / 机器之心 / 少数派）、
Telegram 频道 `zaihuapd`。实测 24 小时窗口能抓到约 30 条。

已知不可用或不建议开：
- **Reddit**：默认关闭。本机出口访问 `reddit.com/*.json` 返回 403 已被限流。
- **X/Twitter**：需 `APIFY_TOKEN` 或 playwright + cookies，默认关闭。
- **LWN.net**：需要订阅 key（`LWN_KEY`），默认关闭。
- **Semianalysis**：本机连不上，未配置。

## 7. 这套部署的特殊改动（为什么和上游不一样）

`docker-compose.override.yml` 里有四件事：

1. `user: "1000:1000"` —— 镜像默认 uid 10001，会在 `./data` 里写出
   `nobody` 属主的 **600** 文件（Horizon 用 `tempfile` 原子写），宿主机反而读不了；
   改成宿主机用户身份运行后文件属主正常。
2. `entrypoint: uv run --no-sync horizon` —— 以非镜像 uid 运行时，`uv run`
   会尝试重装 `editable` 包并写 `/app/.venv` 失败；`--no-sync` 跳过同步。
   代价：**改了依赖必须 `docker compose build`**。要用 wizard 时临时覆盖
   entrypoint：`docker compose run --rm --entrypoint uv horizon run --no-sync horizon-wizard`
   （mcp 同理，把最后的命令换成 `horizon-mcp`）。
3. `TZ=Asia/Shanghai` + 挂载 `/usr/share/zoneinfo` —— slim 镜像没有 tzdata，
   不挂载时 TZ 不生效（影响日志时间戳）。
4. 挂载 `./docs/_posts` —— 否则容器内 `/app/docs` 只读，"复制到 GitHub Pages"
   那步会打黄色警告。

另外改了**一处源码**（不是 compose 配置）：

5. `src/ai/prompting/enrichment.py` 的 `target_language_instruction()` —— 上游只写
   "Write the complete artifact in language `en`"，实测 DeepSeek 遇到中文源（如
   Telegram 频道）会原样保留中文标题和正文，导致英文日报中英混杂。补了一句
   "Translate every title, heading, quote, and body sentence… keep only product
   names, code identifiers, URLs, and proper nouns"，实测英文版已全英文。
   ⚠️ 这处是**本地补丁**，`git pull` 若与该文件冲突，优先保留上游新逻辑再看是否需要
   重新补这句话；`git status` 看到 `src/ai/prompting/enrichment.py` 被修改属正常。

## 8. 排障

| 症状 | 原因 / 处理 |
|---|---|
| `PermissionError ... data/summaries` | 容器 uid/gid 与 `./data` 属主不一致。override 用 `${HORIZON_UID:-1000}`/`${HORIZON_GID:-1000}`，宿主不是 1000 时改这两个变量，或 `chown -R $(id -u):$(id -g) .` |
| `401 Unauthorized` / 入选 0 条 | `.env` 里 key 没填或填错 |
| `validation error` 指向 `email.*` | `email` 段即使 `enabled: false` 也必须给 `smtp_server`、`imap_server`、`email_address` |
| 抓取全失败、容器内不通外网 | 本机走软路由透明代理，容器出网依赖网关；确认 `DOCKER-USER` 规则带 `--ctstate NEW`（见工作区全局约定） |
| GitHub 抓取 403/限流 | 在 `.env` 填 `GITHUB_TOKEN` |
| 想彻底重来 | 删 `data/seen.json`（去重历史）和 `data/summaries/`，不动仓库代码 |

## 9. 成本与并发

`ai.throttle_sec: 1` + `analysis_concurrency: 3` + `enrichment_concurrency: 3`。
当前 `languages: ["zh"]` 只生成中文 —— 分析评分对每条内容只跑一次（不分语言），
省下来的是「入选条目的补全（artifact 生成）」和「日报渲染」，这两步原本中英各跑一遍。
要更省：`threshold` 提到 7.5、`fetch_top_stories`/各源 `fetch_limit` 调小，
跑几天看日报条数再放开。

## 10. 发布到 GitHub Pages

日报会写两份：`data/summaries/*.md`（本地）和 `docs/_posts/*.md`（站点源）。
把 `docs/` 作为 Jekyll 源发布到 GitHub Pages，就能得到一个每日更新的网页版日报，
首页（`docs/index.md`）会自动按 `lang: zh` 列出最近的日报。

### 10.1 前提

- 一个 GitHub **public** 仓库（免费账号的 Pages 只支持公开仓库）
- 仓库里要能提交 `docs/_posts/*.md`；本部署已把上游那行 `docs/_posts/*.md`
  的忽略规则从 `.gitignore` 移除（**日报会公开**，不想公开就别发布）
- `.env` 里的 `GITHUB_TOKEN` 对该仓库有 **Contents: read/write**（fine-grained）
  或 classic token 的 `repo` 权限

### 10.2 先在网页建仓库

github.com/new → 名称 `horizon` → Public → **不要**勾 README / .gitignore / license，
建一个空仓库。（现有 token 没有建仓库权限，实测 `POST /user/repos` 返回 403，
所以这一步只能网页点。）

### 10.3 本地一次性配置

```bash
cd /home/tianjian/tianjian/dsh/workspace/horizon
git fetch --unshallow origin          # 浅克隆必须先补历史，否则 GitHub 拒绝 shallow push
git remote add publish https://github.com/tianjian1201/horizon.git
# 仓库名不是 horizon 时，同步改 docs/_config.yml 的 baseurl
```

首次推送（会把整个仓库 + 今天的日报推上去）：

```bash
scripts/publish.sh
```

### 10.4 打开 Pages

仓库 → Settings → Pages → **Source: Deploy from a branch** → Branch `main`，
目录选 `/docs` → Save。第一次构建约 1 分钟。

站点地址：`https://tianjian1201.github.io/horizon/`
日报页形如 `https://tianjian1201.github.io/horizon/2026-11-02-summary-zh.html`

### 10.5 之后每天

生成完接一句发布即可：

```bash
docker compose run --rm horizon --hours 24 && scripts/publish.sh
```

放进 cron（与 §4 合并）：

```cron
0 9 * * * cd /home/tianjian/tianjian/dsh/workspace/horizon && /usr/bin/docker compose run --rm -T horizon --hours 24 >> logs/cron.log 2>&1 && scripts/publish.sh >> logs/cron.log 2>&1
```

`scripts/publish.sh` 的行为：只 `git add docs/_posts`（不会提交 `.env`、
`data/config.json`、日志等被忽略的文件），有新日报才 commit，然后推 `main`；
PAT 只在命令行里临时使用，不写进 `.git/config`，输出里也会把 token 打码。

### 10.6 说明

- 站点用的是 `docs/_config.yml` 的 `jekyll-theme-cayman` + `jekyll-feed`，
  两者都在 GitHub Pages 的插件白名单里，不需要 Actions 或任何构建配置。
- 每次 push `main` 都会触发 Pages 重建；`data/summaries/`、`.env`、日志不会进仓库。
- 分支名/仓库名变了要同步改：`docs/_config.yml` 的 `baseurl` / `url`、
  `scripts/publish.sh` 里的 `HORIZON_PUBLISH_*` 环境变量（可选）。
- 如果以后不想把生成内容混进 `main`，可以把 `HORIZON_PUBLISH_BRANCH` 设为
  `gh-pages` 并让 Pages 指向该分支（多一步，效果一样）。

