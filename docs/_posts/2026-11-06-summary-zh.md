---
layout: default
title: "Horizon Summary: 2026-11-06 (ZH)"
date: 2026-11-06
lang: zh
---

> 从 155 条内容中筛选出 20 条重要资讯。

---

**科技新闻**
1. [OpenSSH 密码认证绕过源于 crypt\(\) 与 passwd 的带内信号问题](#item-tech-news-1) ⭐️ 8.0/10
2. [研究：信息物理同步可致电网出现一分钟周期振荡](#item-tech-news-2) ⭐️ 8.0/10
3. [谷歌与 Meta 据称开源 TorchTPU，让 PyTorch 原生支持 TPU](#item-tech-news-3) ⭐️ 8.0/10
4. [OpenAI 发布 GPT‑6 Cyber 网络安全模型](#item-tech-news-4) ⭐️ 8.0/10
5. [OpenAI 称自主发现 Linux 内核 948 个本地提权漏洞](#item-tech-news-5) ⭐️ 8.0/10
6. [OpenSSH 10.6p2 紧急修复 Alpine 长密码认证绕过漏洞](#item-tech-news-6) ⭐️ 8.0/10
7. [百度开源文心 5.5 Flash Base 基座模型](#item-tech-news-7) ⭐️ 8.0/10
8. [Claude Code 被指将用户邮箱发送给网站](#item-tech-news-8) ⭐️ 7.0/10
9. [库班指控 Facebook 明知故犯投放 AI 深度伪造诈骗广告](#item-tech-news-9) ⭐️ 7.0/10
10. [冷门音频编解码器恰好适配 N64 的 RSP 限制](#item-tech-news-10) ⭐️ 7.0/10
11. [MS Paint 曝远程代码执行漏洞，影响 11.2605.91.0 之前版本](#item-tech-news-11) ⭐️ 7.0/10
12. [Inkling 2 Small 发布：全 nvfp4 训练的开源权重模型](#item-tech-news-12) ⭐️ 7.0/10
13. [摩托罗拉发布首款官方支持 GrapheneOS 的旗舰手机 Signature 27](#item-tech-news-13) ⭐️ 7.0/10
14. [CERT-In 警告“狡猾猎鹰”用公开 AI 工具攻击印度金融机构](#item-tech-news-14) ⭐️ 7.0/10
15. [研究：多模态模型对英美口音评分最高，中尼口音最低](#item-tech-news-15) ⭐️ 7.0/10
16. [PHP 修复两处已遭利用的严重远程代码执行漏洞](#item-tech-news-16) ⭐️ 7.0/10
17. [Cloudflare 优化一致性哈希节省 100 TB 内存](#item-tech-news-17) ⭐️ 7.0/10
18. [Rust 工具 iphone-control 让 AI 从 Linux 操控真机 iPhone](#item-tech-news-18) ⭐️ 7.0/10
19. [NVIDIA 发布 Cosmos 3 开放模型，用于交互式世界模拟](#item-tech-news-19) ⭐️ 7.0/10

**财经新闻**
1. [芯片股抛售加剧，纳斯达克 100 指数单日跌 5%](#item-finance-news-1) ⭐️ 8.0/10

---

## 科技新闻

<a id="item-tech-news-1"></a>
### [OpenSSH 密码认证绕过源于 crypt\(\) 与 passwd 的带内信号问题](https://sshhole.com/) ⭐️ 8.0/10

Hacker News 上讨论的 sshole 问题指向 OpenSSH 的一处密码认证绕过：攻击目标是让 sshd 调用 crypt\($pw, $hash\) 后返回的 $ret 等于 $hash，从而通过密码校验。问题根源在于 crypt\(\) 与 /etc/passwd 都用 &quot;\*&quot; 或 &quot;\!&quot; 这类特殊字符串表示“无密码/不可登录”或“哈希出错”，形成带内信号。相关链接包括 OpenSSH 10.6p2 发布说明和 Alpine Linux 2026 年 11 月 5 日的公告，但提交本身只是链接，漏洞的完整影响范围尚未在来源中明确。

hackernews · Lobsters · 11月5日 12:19 · [社区讨论](https://news.ycombinator.com/item?id=50378228)

**「背景」** OpenSSH 项目已发布 Portable OpenSSH 10.6p2，用于修复特定 Linux 系统上的密码认证绕过漏洞；Alpine Linux 同日发布安全公告，指出受影响的是以 musl 构建且未启用 PAM 的 sshd。该公告强调，仅升级软件包不会替换正在运行的守护进程，必须重启 sshd；若暂时无法更新，可在 sshd 配置中设置 PasswordAuthentication no 并重启以关闭该漏洞。

**「影响与应对」** 据 Alpine Linux 安全公告，运行 sshd 的 Alpine 用户需升级 openssh 并重启守护进程，仅升级软件包不会替换正在运行的守护进程；若暂时无法升级，可在 sshd 配置中设置 PasswordAuthentication no 并重启 sshd，同样能封堵该漏洞。外部报道称受影响的是未使用 PAM 的 musl libc Linux 系统，OpenSSH 已于 2026 年 11 月 5 日发布 Portable 10.6p2 修复，并给出 CVE-2026-123158。

**「社区讨论」** 评论者 mpyne 拆解了攻击条件：对已设密码用户，$hash 通常形如 &quot;$6$--gibberish&quot;，而对不应能登录的账户则可能是 &quot;\*&quot; 或 &quot;\!&quot;，攻击者试图让 crypt 的返回值与这个设置串相等。BoppreH 与 aljgz 都批评用 &quot;\*&quot; 作特殊值的带内信号做法，主张返回显式失败值而非魔法字符串。amluto 指出 musl 此前已针对 DES crypt 路径做过类似规避，但 SHA crypt 路径遗漏了，因此 musl 上的受影响路径只是略窄一些。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://linuxiac.com/openssh-10-6p2-released-to-fix-critical-password-authentication-bypass/">OpenSSH 10.6p2 Released to Fix Critical Password ... - Linuxiac</a></li>
<li><a href="https://alpinelinux.org/posts/2026-11-05-openssh-password-authentication-bypass/">Security advisory: openssh-server password authentication ...</a></li>
<li><a href="https://braindetox.kr/en/posts/openssh_musl_password_auth_bypass_10_6p2.html">OpenSSH 10.6p2 musl Password Bypass: Alpine Fix Steps</a></li>
<li><a href="https://alpinelinux.org/posts/2026-11-05-openssh-password-authentication-bypass/">Security advisory: openssh-server password authentication ...</a></li>
<li><a href="https://cybersecuritynews.com/openssh-flaw-bypass-password-authentication/">OpenSSH Flaw Could Let Attackers Bypass Password ...</a></li>
<li><a href="https://www.rescana.com/post/openssh-10-6p2-alpine-musl-password-auth-bypass-prepare-now">OpenSSH 10.6p2 Fixes Critical Password Bypass on Alpine and ...</a></li>

</ul>
</details>

**标签**: `#security`, `#openssh`, `#crypt`, `#authentication`, `#open-source`

---

<a id="item-tech-news-2"></a>
### [研究：信息物理同步可致电网出现一分钟周期振荡](https://www.solidot.org/story?sid=85808) ⭐️ 8.0/10

德国研究人员在《Nature Energy》期刊发表研究，指出全球电力系统存在一种由信息物理同步效应引发的、周期为一分钟的相干振荡现象。随着数以百万计的数字控制设备接入电网，电力系统已成为物理设备与数字控制紧密依存的信息物理基础设施。研究强调，除故障和恶意攻击外，即使运行的是良性控制程序，当大量设备以协同一致的方式运行时也可能产生系统层面的影响，非预期同步行为可能引发反复出现且具有潜在放大效应的振荡。

rss · 奇客 Solidot · 11月5日 16:45

**「背景」** 现代电网依靠大量数字控制设备实现供需平衡，物理设备与数字控制系统因此形成紧密的相互依存关系，这类系统被称为信息物理融合基础设施（Cyber–Physical Infrastructure）。此前对电网风险的关注多集中在设备故障和恶意网络攻击上，而这项研究把关注点转向了良性控制软件在大量设备上协同运行时可能产生的系统级效应。

**「影响与关注点」** 该结果提示，电网运营商和控制系统开发者在评估风险时，不能只考虑设备故障与网络攻击，还需关注大量正常控制软件协同运行时可能形成的同步振荡；不过现有报道未给出具体设备类型、控制策略或实测规模等细节，尚不足以据此制定具体的兼容性或配置要求。

**标签**: `#cyber-physical systems`, `#power grids`, `#control systems`, `#systemic risk`, `#research`

---

<a id="item-tech-news-3"></a>
### [谷歌与 Meta 据称开源 TorchTPU，让 PyTorch 原生支持 TPU](https://www.infoq.cn/article/5s2oa0BLlgR8fplkq2uK?utm_source=rss&amp;utm_medium=article) ⭐️ 8.0/10

InfoQ 中文站的一篇文章标题称，谷歌和 Meta 在 2026 年 PyTorch 大会上开源了 TorchTPU，使 PyTorch 能在 TPU 上原生运行。但该条目仅提供标题和原文链接，正文内容未随条目提供，因此缺少版本号、支持的 PyTorch 版本、性能数据、代码仓库地址及可用范围等关键技术细节。目前这一说法尚未得到独立确认，应视为待核实的报道，而非已证实的发布。

rss · InfoQ 中文 · 11月6日 11:17

**「背景」** 在 TorchTPU 出现之前，PyTorch 模型要跑在 Google TPU 上通常需要额外的适配工作，而 TorchTPU 被定位为 Google 与 Meta 合作开发的原生 PyTorch 后端，目标是让现有 PyTorch 模型以尽量少的代码改动运行在 TPU 上。据外部资料，该项目于 2026 年 10 月 20 日开源，并配套有独立文档；Google Cloud 文档还提到可借助 vLLM-TorchTPU 或 SGLang-TorchTPU 在 TPU 上服务大语言模型与多模态模型。需要说明的是，这些细节来自工具检索到的外部页面，并非本次 InfoQ 条目正文所提供，且该条目本身仅有标题与链接，缺少版本、基准测试等可核验信息。

**「对开发者的影响」** 据 PyTorch 官方博客和谷歌云博客，TorchTPU 已在 GitHub 上以开源形式发布，提供原生 PyTorch 后端，使模型无需额外适配即可在 TPU 上运行。InfoQ 的报道称，Meta 表示计划借助该后端将更大规模的 LLM 工作负载迁移到 TPU 上，这意味着原本绑定 GPU 的训练基础设施团队多了一条可评估的硬件路径。不过，现有材料未给出性能基准、支持的 PyTorch 版本或兼容性限制，实际迁移前仍需自行验证。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://shattered.io/torchtpu-open-source-google-meta-native-pytorch-tpus-2026/">TorchTPU Goes Open Source : 4 Repos, Oct. 20 [2026]</a></li>
<li><a href="https://torchtpu.readthedocs.io/">TorchTPU Documentation</a></li>
<li><a href="https://docs.cloud.google.com/tpu/docs/pytorch-on-tpu">PyTorch on Cloud TPU | Google Cloud Documentation</a></li>
<li><a href="https://pytorch.org/blog/introducing-torchtpu/">Introducing TorchTPU - PyTorch</a></li>
<li><a href="https://www.infoq.com/news/2026/10/google-meta-torchtpu/">PyTorch Conference 2026: Google and Meta Open-Source ... - InfoQ</a></li>
<li><a href="https://cloud.google.com/blog/topics/ai-infrastructure/torchtpu-is-now-open-source-run-native-pytorch-on-tpus">TorchTPU is now open source: Run native PyTorch on TPUs</a></li>

</ul>
</details>

**标签**: `#pytorch`, `#tpu`, `#open-source`, `#machine-learning-infrastructure`, `#google-meta`

---

<a id="item-tech-news-4"></a>
### [OpenAI 发布 GPT‑6 Cyber 网络安全模型](https://openai.com/index/introducing-gpt-6-cyber) ⭐️ 8.0/10

OpenAI 宣布推出 GPT‑6 Cyber，这是一款面向网络安全的专用模型，用于发现可被利用的漏洞并开发修复方案。据 OpenAI 介绍，该模型经过训练，会将其操作限制在授权范围内。目前公布的信息仅为一段简短说明，未提供基准测试结果、技术方法或具体可用性细节，因此其实际能力尚无法独立验证。

rss · OpenAI News · 11月5日 09:00

**「背景」** GPT-6 Cyber 是 GPT-6 Astra 的网络安全专用变体，OpenAI 在部署安全页面说明其经过专门的后训练，目标是提升网络安全能力并减少对安全相关请求的拒绝，同时把行为限制在用户授权范围内。据网络安全新闻网站报道，该模型在 Firefox 中发现 81 个新的高危漏洞，并为 948 个 Linux 内核缺陷构建了可用的利用程序，但这些数字来自 OpenAI 的说法，尚未见到独立验证。

**「对安全团队的影响」** 根据 OpenAI 部署安全中心的系统卡，GPT-6 Cyber 是 GPT-6 Astra 的网络安全专用变体，面向漏洞发现、漏洞利用开发和 Web 渗透测试等授权安全工作。这意味着使用该模型的安全团队需要具备明确的授权范围，因为模型被训练为在授权范围内工作，而非通用用途。目前公开信息未提供基准测试结果或具体可用性细节，实际效果尚无法独立验证。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://deploymentsafety.openai.com/gpt-6-cyber">GPT-6 Cyber System Card - OpenAI Deployment Safety Hub</a></li>
<li><a href="https://cybersecuritynews.com/openai-launches-gpt-6-cyber/">OpenAI Launches GPT-6 Cyber That Finds 81 Firefox Flaws and ...</a></li>
<li><a href="https://deploymentsafety.openai.com/gpt-6-cyber">GPT - 6 Cyber System Card - OpenAI Deployment Safety Hub</a></li>
<li><a href="https://www.youtube.com/watch?v=FsyDcr5rGA8">Introducing GPT - 6 Cyber - YouTube</a></li>

</ul>
</details>

**标签**: `#AI security`, `#cybersecurity`, `#vulnerability discovery`, `#AI alignment`, `#OpenAI`

---

<a id="item-tech-news-5"></a>
### [OpenAI 称自主发现 Linux 内核 948 个本地提权漏洞](https://www.phoronix.com/news/OpenAI-948-Linux-LPE-Bugs) ⭐️ 8.0/10

OpenAI 发布博客文章，介绍其在自主漏洞发现方面的工作，并称其 AI 系统在 Linux 内核中发现了 948 个有效的本地权限提升（LPE）漏洞。目前公开信息仅来自 OpenAI 自身的说法，尚未披露具体方法、漏洞验证流程，也没有独立第三方确认。

rss · Phoronix · 11月5日 10:00

**「背景」** 本地提权漏洞（LPE）指攻击者已能在目标系统上执行代码后，利用内核缺陷把普通用户权限提升为 root，因此这类缺陷通常被视为内核安全中风险最高的一类。OpenAI 此次公布的是一套自主流水线，据其自述可完成漏洞发现、验证并生成补丁；ForkLog 援引 OpenAI 的说法称，单次运行使用了尚未发布的网络安全模型，API 总成本为 120 万美元。这些数字与“有效漏洞”的判定标准目前均来自 OpenAI 一方，尚无独立复现或第三方验证。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://openai.com/index/a-thousand-fewer-paths-to-root/">A thousand fewer paths to root | OpenAI</a></li>
<li><a href="https://forklog.com/en/openai-identifies-948-vulnerabilities-in-linux-kernel/">OpenAI Identifies 948 Vulnerabilities in Linux Kernel | ForkLog</a></li>

</ul>
</details>

**标签**: `#AI security`, `#Linux kernel`, `#vulnerability discovery`, `#autonomous agents`

---

<a id="item-tech-news-6"></a>
### [OpenSSH 10.6p2 紧急修复 Alpine 长密码认证绕过漏洞](https://thehackernews.com/2026/11/openssh-issues-emergency-fix-for-flaw.html) ⭐️ 8.0/10

OpenSSH 于 11 月 5 日发布 10.6p2 版本，紧急修复一个允许使用 257 至 1024 字节长密码绕过 SSH 认证的漏洞。该问题影响 Alpine Linux：攻击者可借此登录未设置密码的密钥账户，但前提是拥有服务器网络访问权限并知道账户名。Alpine 已为 3.16 及之后版本发布修复包；无法立即升级的用户可设置 PasswordAuthentication no 关闭密码登录作为临时缓解。目前尚无该漏洞被利用的报告。

telegram · zaihuapd · 11月5日 16:44

**「背景」** 该漏洞被编号为 CVE-2026-123158，代号“sshole”，由 Wakefield 的 Özgün Kültekin 报告给 OpenSSH 项目。Alpine Linux 的安全公告指出，仅升级 openssh 软件包并不会替换正在运行的 sshd 守护进程，因此更新后必须重启 sshd 才能生效。

**「影响与应对」** 运行 Alpine Linux 的 SSH 服务方应尽快升级到已修复的 Alpine 软件包，或按官方建议关闭密码认证；仅依赖密钥登录且未设密码的账户在未修补前仍可能被绕过认证。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.ox.security/blog/openssh-authentication-bypass-cve-2026-123158/">OpenSSH Bypass : CVE -2026-123158 | OX Security</a></li>
<li><a href="https://alpinelinux.org/posts/2026-11-05-openssh-password-authentication-bypass/">Security advisory: openssh -server password ... | Alpine Linux</a></li>
<li><a href="https://github.com/akarkode/alpine-openssh-sshole-auth-bypass">GitHub - akarkode/ alpine - openssh -sshole-auth- bypass : Vulnerability ...</a></li>

</ul>
</details>

**标签**: `#security`, `#openssh`, `#alpine-linux`, `#authentication-bypass`, `#open-source`

---

<a id="item-tech-news-7"></a>
### [百度开源文心 5.5 Flash Base 基座模型](https://www.news.cn/info/20261105/f3bbdb6854f5441ca9fb34062f213875/c.html) ⭐️ 8.0/10

百度正式开源基座模型文心 5.5 Flash Base。该模型采用 MoE 架构，总参数量 2800 亿，每个 Token 激活 140 亿参数，预训练使用 33.5 万亿 Token，预训练上下文最长为 128K，微调与推理阶段支持最长 100 万 Token 上下文。百度称其在注意力机制、专家路由和训练目标等环节做了系统性优化，以提升资源利用效率，但上述效率提升尚无独立测量数据佐证。

telegram · zaihuapd · 11月6日 05:41

**「背景」** 文心 5.5 Flash Base 是百度 ERNIE 系列的新一代基座模型，官方发布页将其描述为 280B-A14B 的混合注意力 MoE 预训练基座，Hugging Face 上的模型卡标注参数量为 286B。与面向对话的指令微调模型不同，此次开源的是未做指令对齐的基座权重，使用者需自行微调后才能用于具体任务。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://ernie.baidu.com/release/ernie-5-5-flash-base/">ERNIE 5 . 5 Flash Base · ERNIE</a></li>
<li><a href="https://huggingface.co/baidu/ERNIE-5.5-Flash-Base">baidu /ERNIE- 5 . 5 - Flash - Base · Hugging Face</a></li>
<li><a href="https://news.ycombinator.com/item?id=50377078">Baidu released ERNIE 5 . 5 Flash Base | Hacker News</a></li>

</ul>
</details>

**标签**: `#open-source`, `#large-language-models`, `#mixture-of-experts`, `#baidu`, `#model-release`

---

<a id="item-tech-news-8"></a>
### [Claude Code 被指将用户邮箱发送给网站](https://github.com/anthropics/claude-code/issues/107757) ⭐️ 7.0/10

GitHub 上的一份 issue 与 Hacker News 讨论声称，Claude Code 会把用户的邮箱地址发送给所访问的网站。评论者指出，这一现象多出现在调用 SEC API 时，并称 SEC API 文档要求请求的 User-Agent 中包含邮箱，否则会拒绝请求，因此这可能并非 Claude Code 主动泄露。目前该说法主要来自用户报告和社区讨论，尚无 Anthropic 的确认或独立验证。

hackernews · motoroco · 11月5日 22:17 · [社区讨论](https://news.ycombinator.com/item?id=50385272)

**「背景」** SEC 的 EDGAR 数据接口（data.sec.gov 等）无需注册或 API key，但要求每个请求的 User-Agent 头声明机构信息与联系邮箱，否则可能被拒绝或限流。社区评论指出，Claude Code 向网站发送邮箱的现象主要出现在访问 SEC API 时，可能是为满足这一要求而自动填充了用户邮箱。

**「影响与应对」** 如果该行为属实，使用 Claude Code 访问外部 API 的开发者可能在不经意间向第三方服务暴露账号邮箱。评论者建议对 Claude 实例加强沙箱隔离、限制其访问项目文件以外的数据，并记录其发出的网络请求；在官方说明出台前，涉及敏感身份信息的场景应谨慎授予联网权限。

**「社区讨论」** 有评论者（varenc）认为，问题更可能源于 SEC API 对 User-Agent 中邮箱的强制要求，而非 Claude Code 自身的设计。另有评论者（grey-area）主张 Claude 不应默认访问用户资料或沙箱外数据，也不应在没有请求日志的情况下联网；还有用户（mk89）称切换到 Claude 后工作邮箱的垃圾邮件明显增多，但这只是个人观察，无法证明与该行为存在因果关系。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://edgarscout.com/edgar-api/">EDGAR API Guide: Free SEC Filings &amp; XBRL Data (No Key)</a></li>
<li><a href="https://tldrfiling.com/blog/sec-edgar-api-guide/">data.sec.gov API: CompanyFacts, CompanyConcept &amp; Submissions ...</a></li>

</ul>
</details>

**标签**: `#privacy`, `#security`, `#ai-coding-tools`, `#claude-code`, `#open-source`

---

<a id="item-tech-news-9"></a>
### [库班指控 Facebook 明知故犯投放 AI 深度伪造诈骗广告](https://finance.yahoo.com/technology/ai/articles/mark-cuban-says-facebook-knowingly-213000020.html) ⭐️ 7.0/10

马克·库班（Mark Cuban）指控 Facebook 明知 AI 深度伪造诈骗广告的存在仍从中获利，并援引文件称相关欺诈收入达 160 亿美元。上述指控来自库班本人及被引用的文件，所提供材料并未独立核实这些数字或 Meta 是否知情。该报道未说明 Meta 的回应，也未交代这些文件的具体来源与统计口径。

hackernews · randycupertino · 11月5日 23:09 · [社区讨论](https://news.ycombinator.com/item?id=50385870)

**「背景」** 此前已有针对 Meta 平台上第三方虚假广告的法律行动。据路透社报道，2026 年 9 月 17 日一家德国法院裁定 Meta 对 Instagram 和 Facebook 上第三方发布的虚假广告承担责任，要求其删除相关内容、赔偿原告、披露从这些广告中获得的收入，并实施主动过滤；Meta 已表示可能上诉。另据 Techgrid 报道，波兰方面正推动对 Meta 处以 2.5 亿欧元罚款，并将虚假广告问题视为欧盟平台责任的一次检验。

**「影响」** 若这些指控进入诉讼，平台可能需要在广告审核与诈骗广告责任上承担更明确的义务；评论中提到的波兰和德国案例显示，受害者已通过法院追究 Meta 使用其肖像和品牌投放诈骗广告的责任。对广告主和平台而言，这意味着广告审核力度与免责条款可能成为争议焦点。

**「社区讨论」** 有评论者提到，波兰企业家 Rafał Brzoska 因诈骗广告起诉 Meta 并发起提高公众认知的活动，德国一位财经 YouTuber 也成功起诉 Meta 使用其面部和品牌投放诈骗广告。另有用户称自己多次举报 Instagram 上明显的诈骗广告，却收到“未违反条款”的回复；也有人主张应让广告主对投放内容负责，甚至认为应大幅收缩广告业。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://techgrid.media/news/poland-pushes-e250-million-meta-fine-as-scam-ads-become-an-eu-platform-liability-test/">Poland Pushes €250 Million Meta Fine as Scam Ads Become an EU...</a></li>
<li><a href="https://www.reuters.com/legal/litigation/german-court-rules-meta-liable-fake-ads-instagram-facebook-2026-09-17/">German court rules Meta liable for fake ads on Instagram ...</a></li>
<li><a href="https://www.ainvest.com/news/german-court-stripped-meta-shield-fake-ads-legal-model-changing-2609/">A German Court Stripped Meta of Its Shield on Fake Ads. The ...</a></li>

</ul>
</details>

**标签**: `#AI deepfakes`, `#ad fraud`, `#platform liability`, `#Meta`, `#content moderation`

---

<a id="item-tech-news-10"></a>
### [冷门音频编解码器恰好适配 N64 的 RSP 限制](https://phoboslab.org/log/2026/11/n64-ulc-codec) ⭐️ 7.0/10

一篇技术文章介绍了如何将一种冷门音频编解码器移植到任天堂 N64，使其解码器几乎占满 RSP 的 4KB 指令内存（IMEM）。文章附带的演示音频中，人声难以辨认且会断续，但评论者指出这是原始音轨本身的特点，并非解码器缺陷。该文属于工程实践记录，而非厂商发布或独立性能评测。

hackernews · frostbyte7 · 11月5日 12:51 · [社区讨论](https://news.ycombinator.com/item?id=50378508)

**「背景」** N64 的 Reality Signal Processor（RSP）是负责音频与图形处理的协处理器，其片上指令内存 IMEM 仅 4KB（约 1024 条指令），数据内存 DMEM 同样为 4KB，且没有外部内存总线，只能通过 DMA 在主内存与这两块内存之间搬运代码和数据。这意味着任何要在 RSP 上运行的解码器都必须把全部指令塞进这 4KB 空间，这正是该音频编解码器适配工作的核心约束。

**「实际影响」** 对 N64 自制软件开发者而言，这一方案的主要约束是解码器几乎耗尽 RSP 的指令内存，而图形处理同样依赖这块空间；评论者因此质疑它能否用于完整游戏，而不只是演示。

**「社区讨论」** 有评论者认为，这类编解码器在 1999 年很难绕过专利问题，并提到 N64 的 MP3 解码器曾实现两次，Nintendo/Rare 最终向 RAD Game Tools 付费获得 Fraunhofer 的 MP3 专利授权。另有评论者猜测它可能适配 MAS3507D 的 1 千字程序 RAM，但指出该 DSP 的程序格式缺乏公开文档和模拟器。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://ultra64.ca/files/documentation/online-manuals/man/pro-man/pro11/index.html">N64 Programming Manual - Ultra) 64</a></li>
<li><a href="https://n64brew.dev/wiki/Reality_Signal_Processor">Reality Signal Processor - N64brew Wiki</a></li>

</ul>
</details>

**标签**: `#audio-codec`, `#n64`, `#retro-computing`, `#embedded-systems`, `#dsp`

---

<a id="item-tech-news-11"></a>
### [MS Paint 曝远程代码执行漏洞，影响 11.2605.91.0 之前版本](https://www.cve.org/CVERecord?id=CVE-2026-83844) ⭐️ 7.0/10

CVE-2026-83844 记录了一个影响 MS Paint 的远程代码执行漏洞，受影响版本为 11.0.0.0 至 11.2605.91.0（不含该版本）。目前公开信息仅为 CVE 条目本身，尚无技术分析、利用细节或微软官方说明，因此漏洞的具体触发路径和实际风险仍不清楚。有评论者称需通过 Microsoft Store 获取修复版本，Windows Update 未推送更新。

hackernews · kuberwastaken · 11月5日 20:43 · [社区讨论](https://news.ycombinator.com/item?id=50384233)

**「背景」** 该漏洞编号为 CVE-2026-83844，影响 Windows 11 中 Microsoft Paint 的 11.0.0.0 至 11.2605.91.0 之前的版本。第三方漏洞数据库将其描述为 Paint 中的越界读取问题，可导致远程代码执行，CVSS 评分为 8.1，无需权限或用户交互，但攻击复杂度较高。OpenCVE 建议安装包含修复的 Microsoft 安全更新，并在确认版本已修复后再禁用 Paint 的旧式文件打开处理。

**「影响与应对」** 使用受影响版本 Paint 的用户应留意更新渠道：有评论者报告 Windows Update 未显示修复，需前往 Microsoft Store 手动获取新版本。由于缺乏官方技术说明，目前无法确认该漏洞是否需要用户交互或网络可达条件，建议以微软后续公告为准。

**「社区讨论」** 评论者普遍质疑为何 Paint 会暴露网络攻击面，并追问该漏洞是否真的无需用户交互即可远程执行代码，指出当前信息严重不足。另有评论者表示自己运行的旧版本可能不受影响，但因是 Windows 平台仍不敢确定。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.sentinelone.com/vulnerability-database/cve-2026-83844/">CVE-2026-83844: Windows Paint RCE Vulnerability - SentinelOne</a></li>
<li><a href="https://app.opencve.io/cve/CVE-2026-83844">CVE-2026-83844 - Vulnerability Details - OpenCVE</a></li>
<li><a href="https://windowsforum.com/news/cve-2026-83844-windows-11-paint-rce-fix-confusion-and-how-to-check-your-version.451018/">CVE-2026-83844: Windows 11 Paint RCE Fix Confusion and How to ...</a></li>

</ul>
</details>

**标签**: `#security`, `#vulnerability`, `#windows`, `#remote-code-execution`, `#cve`

---

<a id="item-tech-news-12"></a>
### [Inkling 2 Small 发布：全 nvfp4 训练的开源权重模型](https://thinkingmachines.ai/news/inkling-2-small/) ⭐️ 7.0/10

Thinking Machines 发布了开源权重模型 Inkling 2 Small，宣称其基准测试成绩具有竞争力，并称训练全程采用 nvfp4 精度。目前可获取的信息仅有标题和社区讨论，没有一手技术细节，因此这些性能声明尚未得到独立验证。

hackernews · Philpax · 11月6日 00:00 · [社区讨论](https://news.ycombinator.com/item?id=50386338)

**「背景」** Thinking Machines Lab 此前已发布过 Inkling 系列模型：据第三方介绍，Inkling-Small 于 2026 年 7 月 30 日推出，为 276B 总参数、每 token 激活 12B 的 Apache 2.0 开放权重模型，支持文本、图像和音频输入。据 Artificial Analysis 的报道，Inkling 2 Small 发布时先以专有模型形式通过 Thinking Machines 的 Tinker 平台提供，权重计划稍后放出，其得分比 Inkling Small 高出 18 分，但每任务输出 token 数约为后者的 4 倍。

**「社区讨论」** 评论者 itkovian\_ 认为最关键之处在于训练完全使用 nvfp4，称这是迄今在该精度下训练出的最强模型，并认为这解释了训练速度之快。a11r 则指出，基准测试中报告团队并非明显赢家，这一点令人耳目一新；他们声称优于 GLM 5.3 flash，但该结论能否在基准之外成立仍有待观察。Jackobrien 和 epsteingpt 将 Inkling 2 Small 视为美国团队推出的有竞争力的开源权重模型，但这些属于个人判断而非已证实的事实。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://artificialanalysis.ai/articles/thinking-machines-releases-inkling-2-small-highest-scoring-open-weights-model-outside-of-chinia-upon-weights-release-it">Thinking Machines Inkling 2 Small : the highest scoring open ...</a></li>
<li><a href="https://www.eesel.ai/blog/inkling-small">Inkling - Small explained: a 276B model , 12B doing the work | eesel AI</a></li>

</ul>
</details>

**标签**: `#open-weight models`, `#LLM training`, `#nvfp4`, `#benchmarks`, `#AI industry`

---

<a id="item-tech-news-13"></a>
### [摩托罗拉发布首款官方支持 GrapheneOS 的旗舰手机 Signature 27](https://www.solidot.org/story?sid=85814) ⭐️ 7.0/10

摩托罗拉宣布推出 Signature 27，称其为第一款官方支持安全加固发行版 GrapheneOS 的旗舰手机，售价 1600 美元。该机搭载高通骁龙 8 Elite Extreme Gen 6，内存仅提供 12GB 版本（无 16GB 选项，报道称原因是内存供应紧张且价格昂贵），存储为 512GB UFS 4.1；屏幕为 6.8 英寸 Extreme AMOLED Duo，120Hz 刷新率、峰值亮度 12,000 尼特；电池 7000 mAh，支持 90W 有线充电和 15W Qi 无线充电。来源未说明 GrapheneOS 支持的具体实现方式或验证机制，因此目前只能确认这是厂商的官方宣布，而非已交付并经独立验证的能力。

rss · 奇客 Solidot · 11月6日 06:01

**「背景」** GrapheneOS 是面向 Android 的安全加固发行版，其官方支持设备长期以 Google Pixel 系列为主。2026 年 9 月的第三方汇总提到，Google 新一代 Pixel 11 因硬件内存标记相关问题尚未获得官方支持，而摩托罗拉正与 GrapheneOS 基金会合作开发从硬件层面满足其要求的设备；另一篇 10 月的汇总则称三星、小米、一加和摩托罗拉手机当时均不在官方支持列表中。GSMArena 报道称，摩托罗拉 2027 年旗舰将正式支持 GrapheneOS，并承诺“达到或超过”其官方要求，包括七年“妥善更新”。

**「影响与注意事项」** 对注重隐私与安全的用户而言，这是主流 OEM 旗舰首次在官方层面承诺支持 GrapheneOS，意味着相关用户可能不必再依赖非官方移植。但 1600 美元的定价和仅 12GB 内存的配置会限制其实际覆盖面；在厂商公布 GrapheneOS 的适配范围、更新承诺和验证方式之前，购买决策仍应保持谨慎。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.efani.com/blog/grapheneos-supported-devices">GrapheneOS Supported Devices: Full List (Sep 2026)</a></li>
<li><a href="https://secure-os.org/articles/grapheneos-supported-devices/">GrapheneOS Supported Devices (2026): The Full List, and Which ...</a></li>
<li><a href="https://www.gsmarena.com/motorolas_2027_flagships_will_officially_support_grapheneos-news-74312.php">Motorola&#x27;s 2027 flagships will officially support GrapheneOS</a></li>

</ul>
</details>

**标签**: `#GrapheneOS`, `#mobile security`, `#Android`, `#Motorola`, `#hardware`

---

<a id="item-tech-news-14"></a>
### [CERT-In 警告“狡猾猎鹰”用公开 AI 工具攻击印度金融机构](https://www.solidot.org/story?sid=85809) ⭐️ 7.0/10

印度计算机应急响应小组（CERT-In）于周三发布安全通报，称黑客组织“狡猾猎鹰”（Crafty Falcon）已入侵非银行贷款机构、金融科技公司及加密货币交易所，并利用公开可用的 AI 工具实现高速自动化入侵。该机构将这一威胁描述为“仍在发生，且持续活跃”，并点名 ARTEX、PentAGI、Cairn 和 CyberStrikeAI 四款入侵工具，其中 ARTEX 此前曾被用于攻击韩国银行。通报未说明攻击由谁发动、组织运作地点，也未称其受国家支持或主导；被点名的工具均可在网络上免费获取。

rss · 奇客 Solidot · 11月5日 16:53

**「背景」** CERT-In 点名的四款工具均为公开可获取的 AI 辅助渗透测试平台。PentAGI 的官方介绍称其集成了 200 多个渗透测试工具，可自托管运行并接入多种 AI 提供商；CyberStrikeAI 则定位为面向授权安全操作的 AI 原生工作平台，将规划、执行、人工监督与证据留存整合在同一工作区。这些工具的公开可用性，是通报强调攻击者能低成本实现自动化入侵的前提。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://pentagi.com/">PentAGI - Advanced AI -Powered Penetration Testing</a></li>
<li><a href="https://github.com/AIPentest/CyberStrikeAI">GitHub - AIPentest/ CyberStrikeAI : The system of action for AI -native...</a></li>

</ul>
</details>

**标签**: `#cybersecurity`, `#AI tooling`, `#financial technology`, `#threat intelligence`, `#India`

---

<a id="item-tech-news-15"></a>
### [研究：多模态模型对英美口音评分最高，中尼口音最低](https://www.solidot.org/story?sid=85804) ⭐️ 7.0/10

研究人员测试了 Google Gemini 2.5 Pro、Gemini 2.5 Flash、OpenAI GPT-Audio 1.5 和开放权重模型 Qwen 3 Omni 对五种英语口音（美国、英国、中国、印度、尼日利亚）语音的评分，场景涵盖面试、会议报告和英语口语能力测试。结果显示，模型普遍给中国和尼日利亚口音最低分、印度口音居中、美国和英国口音最高，即使语音内容完全相同也是如此。研究团队还发现，模型在解释中反复称中国和尼日利亚口音的使用者“含糊不清或难以理解”，但这些模型实际上能准确转录带口音的语音。该结论来自研究团队的测试，来源摘要未提供样本量或具体评分数据。

rss · 奇客 Solidot · 11月5日 09:00

**「背景」** 多模态语音模型已能较准确地转录带口音的英语，但转录能力与评价判断是两回事：前者衡量识别准确度，后者涉及模型对说话者表达水平的主观打分。此次研究正是把同一套语音内容交给 Gemini 2.5 Pro/Flash、GPT-Audio 1.5 和开放权重的 Qwen 3 Omni 评分，以检验口音是否会影响评价结果。

**「实际影响」** 对于将语音模型用于面试筛选、口语测评或会议评估的机构，这一结果意味着模型的评分可能混入与表达内容无关的口音等级偏见，而仅检查转录准确率无法发现该问题。部署方在依赖此类模型做评价性判断前，需要针对不同口音做分组验证。

**标签**: `#AI fairness`, `#speech models`, `#multimodal models`, `#accent bias`, `#model evaluation`

---

<a id="item-tech-news-16"></a>
### [PHP 修复两处已遭利用的严重远程代码执行漏洞](https://www.infoq.cn/article/qUEjcWbwOj5RO59250Lu?utm_source=rss&amp;utm_medium=article) ⭐️ 7.0/10

InfoQ 的一则简讯报道称，PHP 已修复两处严重的远程代码执行漏洞，并称这些漏洞已被实际利用发起攻击。该报道未提供受影响版本、漏洞编号、触发条件或补丁指引等技术细节，因此目前无法据此判断哪些部署需要采取何种具体措施。

rss · InfoQ 中文 · 11月5日 17:06

**「背景」** PHP 核心此前已出现过可被远程利用的严重漏洞：安全研究站点 pwn.watch 曾披露 CVE-2026-109618 和 CVE-2026-109619，称攻击者可在 PHP 核心中远程执行代码。此次 InfoQ 报道的两处漏洞同样属于远程代码执行类问题，但所给材料未说明其 CVE 编号、受影响版本或与上述漏洞的关系。

**「影响与应对」** 微软 Azure 网络安全的公告将这两处漏洞称为“PHP2Shell”（CVE-2026-109618 与 CVE-2026-109619），并明确表示升级到已修复的 PHP 版本是彻底修复的唯一方式。Qualys 指出这两处属于无需身份认证即可触发的远程代码执行漏洞，并提供了修复版本与缓解措施；因此运行受影响 PHP 版本的团队应优先安排升级，在完成升级前可参考其缓解建议。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://pwn.watch/i/php2shell-cve-2026-109618-109619">PHP 2Shell: critical unauthenticated RCE in PHP core · pwn.watch</a></li>
<li><a href="https://techcommunity.microsoft.com/blog/azurenetworksecurityblog/addressing-php2shell-cve-2026-109618-and-cve-2026-109619-upgrade-guidance-and-az/4566623">Addressing PHP2Shell CVE-2026-109618 and CVE-2026-109619 ...</a></li>
<li><a href="https://blog.qualys.com/vulnerabilities-threat-research/2026/10/20/php-announces-critical-security-release-for-two-vulnerabilities">PHP2Shell: Find, Mitigate, and Patch Now | Qualys | Qualys</a></li>
<li><a href="https://phpscientist.com/blog/php-security-release-october-2026-cve-2026-109618-cve-2026-109619/">PHP2Shell (CVE-2026-109618): How to Patch PHP Now</a></li>

</ul>
</details>

**标签**: `#security`, `#php`, `#vulnerability`, `#remote-code-execution`, `#patching`

---

<a id="item-tech-news-17"></a>
### [Cloudflare 优化一致性哈希节省 100 TB 内存](https://www.infoq.cn/article/yRvSUCFFcZEEXCgxyAO2?utm_source=rss&amp;utm_medium=article) ⭐️ 7.0/10

InfoQ 中文站报道称，Cloudflare 通过优化一致性哈希节省了 100 TB 内存。但该条目仅提供原文链接，未给出具体实现方式、涉及的版本或服务、测量口径与上线范围，因此这一数字目前只能视为报道中的说法，而非可独立核验的结果。

rss · InfoQ 中文 · 11月5日 09:00

**「背景」** Cloudflare 在其博客中说明，一致性哈希是其内部按 URL 将可缓存请求路由到服务器的机制，而此次内存优化针对的是用 Rust 编写的 pingora-ket 实现。据 InfoQ 报道，该优化使内部负载均衡服务的内存占用减少了 100 TB 以上。

**「对使用一致性哈希的团队的影响」** 据 Cloudflare 工程博客，这项优化针对其内部用一致性哈希按 URL 将可缓存请求路由到服务器的机制，节省的 100 TB 内存来自该路由层而非通用场景。对自建类似缓存路由的团队而言，可借鉴之处在于重新审视哈希环的存储与计算方式，但具体收益取决于节点规模、键空间和实现语言，不能直接套用这一数字。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://blog.cloudflare.com/saving-100-tb-of-ram-with-math/">Saving another 100 TB of RAM with math (and Rust) | Cloudflare Blog</a></li>
<li><a href="https://www.infoq.com/news/2026/10/cloudflare-hashing-optimization/">Cloudflare Reclaims 100 TB of RAM by Optimizing Consistent ...</a></li>
<li><a href="https://blog.cloudflare.com/saving-100-tb-of-ram-with-math/">Saving another 100TB of RAM with math (and Rust) | Cloudflare Blog</a></li>
<li><a href="https://braindetox.kr/en/posts/cloudflare_pingora_ketama_ram_math_2026.html">Cloudflare Pingora and Ketama Optimization — How Math and Rust...</a></li>

</ul>
</details>

**标签**: `#consistent hashing`, `#distributed systems`, `#memory optimization`, `#Cloudflare`, `#infrastructure`

---

<a id="item-tech-news-18"></a>
### [Rust 工具 iphone-control 让 AI 从 Linux 操控真机 iPhone](https://www.v2ex.com/t/1255024#reply2) ⭐️ 7.0/10

开发者 Derrors 在 V2EX 发布开源项目 iphone-control（MIT 协议），用单个 Rust 二进制整合了此前需要分别安装的 go-ios、pymobiledevice3 和 WebDriverAgent，让 AI 代理从 Linux 直接操作真机 iPhone。它通过 MCP 暴露 15 个工具，涵盖截图、点击、滑动、长按、中文输入、实体键、开关 App 和打开链接，并能读取界面元素，使 AI 可以直接按名称定位控件而非猜测坐标。项目底层使用 idevice、Impactor 和 WebDriverAgent，不需要 Xcode、付费开发者账号或越狱，还支持断线、重启和 WDA 崩溃后的自动恢复，以及免费 Apple ID 的 7 天签名自动续期。作者称在三个日常任务上总耗时减少 44%（例如计算 12×34 从 58 秒降到 35 秒），但这是自测数据，未经独立验证；目前仅在 iPhone 15 Pro Max + iOS 27 和 iPhone 12 mini 上测试过。

rss · V2EX · 11月6日 08:09

**「背景」** 此前在 Linux 上操作真机 iPhone 的常见做法，是把 go-ios、pymobiledevice3 和 WebDriverAgent（WDA）等组件拼在一起：pymobiledevice3 是纯 Python 3 的 iOS 设备交互实现，提供命令行与 Python API，并包含通过 WDA 进行原生 UI 自动化的 WebDriver 子系统。作者称这套组合需要分别安装和签名、隧道容易断开，还要自己写脚本监控，因此改用 Rust 重写为单一二进制。

**「实际影响」** 对在 Linux 上做 AI 代理或设备自动化的开发者来说，这个项目把多组件、多签名步骤的流程压缩为一个二进制，降低了搭建门槛；但作者明确表示只在两款机型上验证过，其他机型和 iOS 版本需要使用者自行反馈，采用前应先在自己的设备上确认兼容性。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://github.com/doronz88/pymobiledevice3">GitHub - doronz88/pymobiledevice3: Pure python3 ...</a></li>
<li><a href="https://deepwiki.com/doronz88/pymobiledevice3/8.4-webdriver-and-automation-api">WebDriver and Automation API | doronz88/pymobiledevice3 ...</a></li>

</ul>
</details>

**标签**: `#rust`, `#mcp`, `#ios-automation`, `#ai-agents`, `#open-source`

---

<a id="item-tech-news-19"></a>
### [NVIDIA 发布 Cosmos 3 开放模型，用于交互式世界模拟](https://huggingface.co/blog/nvidia/cosmos-interactive-world-simulation) ⭐️ 7.0/10

NVIDIA 通过 Hugging Face 博客宣布发布新的开放 Cosmos 3 模型，定位为交互式世界模拟。目前可确认的信息仅限于发布公告本身：来源条目只有标题和元数据，没有提供模型规模、版本细分、基准测试结果、许可证条款或可下载渠道等具体技术细节。因此，这些模型的实际能力、与既有 Cosmos 系列版本的差异，以及“开放”所指的具体开放程度，均无法从现有材料中核实。

rss · Hugging Face Blog · 11月5日 19:35

**「背景」** Cosmos 是 NVIDIA 面向物理 AI 的世界基础模型系列，此前已有 Cosmos3-Super（65B）等模型发布在 Hugging Face 的 Cosmos3 集合中，并配套提供用于训练、强化学习、优化与推理的 Cosmos Framework 开放工具。此次发布在该系列基础上新增四个开放权重检查点，其中 Cosmos3-Nano-Transfer-Auto 用于生成多视角驾驶数据，Cosmos3-Nano-Sim-Auto 用于输出同步的相机与 LiDAR 流。

**「对开发者的影响」** 根据 NVIDIA 研究页面和开发者博客的描述，Cosmos 3 将视觉语言推理、世界生成与动作生成整合进单一开放基础模型，采用 Mixture-of-Transformers 架构，把推理塔与扩散生成塔组合在一起，开发者无需再编排多个模型。这意味着原本需要分别调用视频生成器、世界模拟器和世界-动作模型的物理 AI 流程，可能改为在统一框架内完成；但现有来源未给出模型规模、许可证条款、硬件要求或基准数据，实际迁移成本与兼容性尚无法评估。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://huggingface.co/blog/nvidia/cosmos-interactive-world-simulation">New NVIDIA Cosmos 3 Open Models for Interactive World Simulation</a></li>
<li><a href="https://huggingface.co/collections/nvidia/cosmos3">Cosmos3 - a nvidia Collection - Hugging Face</a></li>
<li><a href="https://developer.nvidia.com/blog/build-world-models-for-interactive-simulation-with-nvidia-cosmos/">Build World Models for Interactive Simulation with NVIDIA Cosmos</a></li>
<li><a href="https://research.nvidia.com/labs/cosmos-lab/cosmos3/">Cosmos 3 — Cosmos Lab - research.nvidia.com</a></li>
<li><a href="https://research.nvidia.com/labs/cosmos-lab/cosmos3/technical-report.pdf">Cosmos World Foundation Model Platform for Physical AI</a></li>
<li><a href="https://developer.nvidia.com/blog/develop-physical-ai-reasoning-world-and-action-models-with-nvidia-cosmos-3">Develop Physical AI Reasoning, World, and Action Models with ...</a></li>

</ul>
</details>

**标签**: `#generative-ai`, `#world-models`, `#open-models`, `#nvidia`, `#simulation`

---

## 财经新闻

<a id="item-finance-news-1"></a>
### [芯片股抛售加剧，纳斯达克 100 指数单日跌 5%](https://www.bloomberg.com/news/articles/2026-11-04/stock-market-today-dow-s-p-live-updates) ⭐️ 8.0/10

11 月 4 日，美国股市芯片板块抛售加深，纳斯达克 100 指数单日下跌 5%，费城半导体指数较 6 月高点累计下跌 36%。英伟达跌 7.9%，高通和 Arm 因业绩指引不及预期下挫，特斯拉和 SpaceX 均跌约 10%。

telegram · zaihuapd · 11月5日 15:39

**「背景」** 此前，民主党在 2026 年美国中期选举中取得决定性胜利，市场担忧这可能带来对人工智能和数据中心更严格的监管，从而引发芯片股集中抛售。

**「影响」** 投资者正在评估民主党横扫国会后 AI 交易可能面临更多监管，资金转向必需消费和医疗等防御板块，美债、日元和瑞郎走强，比特币跌 5%。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://dashd.ai/general-news/breaking-democrats-sweep-sparks-energy-policy-shift-data-center">Democrats &#x27; Sweep Sparks Energy Policy Shift, Data Center... | dashd</a></li>
<li><a href="https://www.cnbc.com/2026/11/04/stock-market-today-live-updates.html">Stock market news for Nov. 5, 2026</a></li>

</ul>
</details>

**标签**: `#semiconductor stocks`, `#Nasdaq 100`, `#market selloff`, `#AI regulation`, `#safe-haven assets`

---