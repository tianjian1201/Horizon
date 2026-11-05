---
layout: default
title: "Horizon Summary: 2026-11-05 (ZH)"
date: 2026-11-05
lang: zh
---

> 从 160 条内容中筛选出 20 条重要资讯。

---

**科技新闻**
1. [月之暗面开源 Kimi K3.1 Pro 权重，2.8T 参数、约 100 万 token 上下文](#item-tech-news-1) ⭐️ 9.0/10
2. [OpenAI 流水线复现 1724 个 Linux 内核漏洞并生成 948 个提权利用程序](#item-tech-news-2) ⭐️ 9.0/10
3. [腾讯发布 Hy4 开放权重模型，聚焦游戏开发](#item-tech-news-3) ⭐️ 8.0/10
4. [Go 推出 encoding/json/v2 新 JSON API](#item-tech-news-4) ⭐️ 8.0/10
5. [Anthropic 公布大模型可验证推理研究进展](#item-tech-news-5) ⭐️ 8.0/10
6. [Debian 的 apt 被披露存在中间人任意代码执行漏洞](#item-tech-news-6) ⭐️ 8.0/10
7. [Calif 演示绕过锁定模式的持久越狱，未公开细节](#item-tech-news-7) ⭐️ 8.0/10
8. [中国科大发布结构引导 RNA 基础模型 structRFM，登上 Nature](#item-tech-news-8) ⭐️ 8.0/10
9. [OpenAI 宣布收购 Pierre Computer Company](#item-tech-news-9) ⭐️ 7.0/10
10. [Show HN：十年逆向工程让 DOS 版《银河飞将》支持联机合作](#item-tech-news-10) ⭐️ 7.0/10
11. [AI 漏洞发现迫使软件业偿还四十年技术债](#item-tech-news-11) ⭐️ 7.0/10
12. [AMD 预计季度营收将首次超过英特尔](#item-tech-news-12) ⭐️ 7.0/10
13. [《NIKKE》PC 启动器遭供应链攻击，官方 CDN 脚本被篡改](#item-tech-news-13) ⭐️ 7.0/10
14. [苹果在中国推出基于千问的 Apple Intelligence](#item-tech-news-14) ⭐️ 7.0/10
15. [研究：出生前后大脑会清除携带拷贝数变异的神经元](#item-tech-news-15) ⭐️ 7.0/10
16. [Cloudflare 优化一致性哈希节省 100 TB 内存](#item-tech-news-16) ⭐️ 7.0/10
17. [Zig 重写 libc 致 SQLite 变慢：一篇博客的指控](#item-tech-news-17) ⭐️ 7.0/10
18. [Rust 编译器提速指南（2026 年 11 月）](#item-tech-news-18) ⭐️ 7.0/10
19. [每词 11 纳秒：极端优化变位词计算](#item-tech-news-19) ⭐️ 7.0/10
20. [LZ4 1.11 为 liblz4 引入多线程压缩](#item-tech-news-20) ⭐️ 7.0/10

---

## 科技新闻

<a id="item-tech-news-1"></a>
### [月之暗面开源 Kimi K3.1 Pro 权重，2.8T 参数、约 100 万 token 上下文](http://platform.kimi.ai/) ⭐️ 9.0/10

据 Telegram 频道“科技圈·茶馆”消息，月之暗面在 Hugging Face 发布了 Kimi K3.1 Pro 的开放权重，这是 K3.1 系列的首个模型，定位为原生多模态智能体模型，总参数 2.8T、激活参数 104B，上下文约 100 万 token，权重以 MXFP4 量化形式发布。官方同步开放 API，在 platform.kimi.ai 选择 kimi-k3.1-pro 即可调用，接口兼容 OpenAI 与 Anthropic。上述参数与发布信息来自该帖转述，尚无独立验证。

telegram · zaihuapd · 11月4日 15:47

**「背景」** Kimi K3.1 Pro 是 K3.1 系列的首个模型，由 Kimi K3 经大规模联合强化学习后训练而来；Kimi K3 本身已是 2.8 万亿参数、原生多模态、100 万 token 上下文的开放权重模型。因此本次发布是在同一参数规模上以 K3.1 系列名义推出的新版本，而非首次开源。

**「对使用者的影响」** 2.8T 总参数意味着本地部署需要大规模多卡集群，评论中有人估算需接近 8 张 B300 级别的节点，因此多数开发者更可能通过 API 或第三方推理平台使用该模型。兼容 OpenAI 与 Anthropic 接口降低了现有应用的迁移成本，但 MXFP4 量化权重对推理硬件的精度支持提出了额外要求。

**「社区讨论」** Hacker News 评论对模型定位存在分歧：有人称其相比 DeepSeekV4.1-Flash 提升不大，且在第三方基准上得分不高，怀疑是“刷榜”模型；也有用户表示在自己的测试中未观察到这一现象，认为它是略低于前沿水平但适用面很广的强开源模型。另有评论指出 OpenRouter 等第三方推理服务已上线该模型，且吞吐高于官方端点，认为推理成本仍有下降空间。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://huggingface.co/moonshotai/Kimi-K3">moonshotai/Kimi-K3 · Hugging Face</a></li>
<li><a href="https://huggingface.co/moonshotai/Kimi-K3.1-Pro">moonshotai/Kimi-K3.1-Pro · Hugging Face</a></li>

</ul>
</details>

**标签**: `#open-weight models`, `#multimodal AI`, `#large language models`, `#AI agents`, `#model release`

---

<a id="item-tech-news-2"></a>
### [OpenAI 流水线复现 1724 个 Linux 内核漏洞并生成 948 个提权利用程序](https://openai.com/index/a-thousand-fewer-paths-to-root/) ⭐️ 9.0/10

OpenAI 称其自主漏洞研究流水线在 2026 年 10 月的一次 Linux 内核扫描中动态复现了 1724 个漏洞，并生成 948 个可让本地低权限用户获得 root 权限的提权利用程序，另有 291 个信息泄露 PoC。OpenAI 表示其中至少 10 种利用技术经第三方专家确认为新方法，包括新的缓存喷射持久化对象、page grooming 技术、纯数据提权/任意写技术以及任意类型混淆。上述数字与“新颖性”判断均来自 OpenAI 自述，所给来源为 Telegram 摘要，成本与赏金估值无法独立核实。

telegram · zaihuapd · 11月5日 03:04

**「背景」** OpenAI 在 2026 年 11 月 4 日的研究文章中称，其自主流水线不仅能发现 Linux 内核漏洞，还能验证可利用性并起草补丁；据 The Hacker News 和 explainx.ai 的转述，10 月的一次运行复现了 1,724 个漏洞、产出 948 个可用的本地提权 exploit，API 成本约 121 万美元。此前 Horizon 的 11 月 4 日日报曾收录 InfoQ 简讯，称 OpenAI Codex 在 11 天内编写约 13.9 万行新内核并在 Rocky Linux 10 上启动，但该说法缺少代码仓库、构建日志和独立验证，仍属未经核实的厂商主张。

**「对内核维护者的含义」** 若这些利用程序可被复现，受影响的是仍运行未修补内核的 Linux 发行版与设备厂商：它们需要按漏洞逐项评估补丁优先级，而不能只依赖单一修复。OpenAI 同时指出，大型复杂软件可能需要多轮扫描与修复才能“触底”清除潜伏漏洞，并建议随每一代前沿模型重复该流程。

**「社区讨论」** 有评论者质疑，上千个提权利用程序是否说明内核设计本身应被重构，而非逐个打补丁；也有人以 SQL 注入的多种利用方式作类比，认为这些数字可能对应少数根因漏洞，并指出帖子缺少可核查的原始数据。OpenAI 团队成员在讨论中确认这是其团队工作，并表示正在招聘安全方向人员。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://openai.com/index/a-thousand-fewer-paths-to-root/">A thousand fewer paths to root - OpenAI</a></li>
<li><a href="https://thehackernews.com/2026/11/openai-ai-pipeline-generates-948-linux.html">OpenAI AI Pipeline Generates 948 Linux Root Escalation ...</a></li>
<li><a href="https://explainx.ai/blog/openai-linux-kernel-948-local-privilege-escalation-exploits-1-2-million-api-cost-pipeline-patch-the-planet-2026">OpenAI Linux Kernel Pipeline: 948 Root Exploits, $1.2M ...</a></li>
<li><a href="https://www.infoq.cn/article/OiyNEtFwV05opvsLTcvK?utm_source=rss&amp;utm_medium=article">2026-11-04 — InfoQ 报道称 Codex 11 天生成 13.9 万行内核并启动 Rocky Linux 10</a></li>

</ul>
</details>

**标签**: `#AI security`, `#Linux kernel`, `#vulnerability research`, `#exploit generation`, `#OpenAI`

---

<a id="item-tech-news-3"></a>
### [腾讯发布 Hy4 开放权重模型，聚焦游戏开发](https://hy.tencent.ai/research/hy4) ⭐️ 8.0/10

腾讯宣布推出 Hy4，这是一款开放权重模型，重点面向游戏开发，并针对 Unreal Engine、Unity 和 Godot 等主流引擎做了适配。据公告，腾讯与腾讯互动娱乐事业群（IEG）的专业开发者合作整理训练数据、构建评测，覆盖功能实现、玩法逻辑、状态追踪和资产管线，并扩展到多人游戏开发。腾讯同时承认，Hy4 在内部高难度基准上——研究级数学、长程编程、模型自我改进和高级视觉问答——与顶级闭源模型仍有明显差距，并表示将继续扩大预训练和后训练规模以缩小差距。上述能力与对比均来自腾讯的发布说明，尚无独立测量结果。

hackernews · Philpax · 11月4日 14:11 · [社区讨论](https://news.ycombinator.com/item?id=50365780)

**「背景」** 腾讯此前于 2026 年 8 月发布并开源了 Hy4 preview，该版本总参数 770B、激活参数 49B，上下文窗口超过 100 万 token。此次 Hy4 正式版正是在这一预览版基础上迭代，腾讯称其在自有的 GameDev 基准上较预览版提升 19.1%，在 GameLogic 上提升 9.8%。腾讯还表示，模型权重与系统卡将在未来数日内发布，因此当前开源权重尚未实际落地。

**「对使用者的影响」** 社区测试显示，Hy4 在数据分析基准上处于成本与准确率的折中位置，但回答速度明显偏慢：有评测者称其每题约运行 26 次查询，个别题目达 64 次，单次查询耗时约一小时。另有评论指出其表现略逊于同日开放权重的 Kimi 3.1M Pro，但价格更低，且腾讯承诺开放权重后进一步降价。对需要低成本批量调用、可容忍较长延迟的开发者，这构成一个可考虑的选项；对延迟敏感的场景则需谨慎评估。

**「社区讨论」** 有评论者赞赏腾讯主动承认与顶级闭源模型的差距，认为作为工具使用的开放模型已足够实用。Plotly 的 chriddyp 称 Hy4 在其数据分析基准上落在成本/准确率前沿，位于 GPT-6.1 Sol 与 GPT-6.1 Terra 之间，但工作非常细致也因此很慢，每题约运行 26 次查询，部分题目达 64 次，其中一次查询耗时约一小时。minimaxir 则认为 Hy4 略逊于同日开放权重的 Kimi 3.1M Pro，但即便不计当前五折促销也更便宜，并提到腾讯承诺开放权重后价格还会进一步下降。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.tencent.com/tencent-launches-hy4-joining-the-ranks-of-the-worlds-leading-open-source-ai-models/">Tencent Launches Hy4, Joining the Ranks of the World&#x27;s ...</a></li>
<li><a href="https://www.tencent.com/tencent-releases-and-open-sources-tencent-hy4-preview/">Tencent Releases and Open-Sources Tencent Hy4 preview</a></li>
<li><a href="https://shiftdelete.net/en/tencent-hy4">Tencent Hy4: Open-Weight AI Model Adds Vision, Computer Use</a></li>

</ul>
</details>

**标签**: `#open-weight models`, `#LLM release`, `#game development`, `#benchmarks`, `#AI industry`

---

<a id="item-tech-news-4"></a>
### [Go 推出 encoding/json/v2 新 JSON API](https://go.dev/blog/jsonv2) ⭐️ 8.0/10

Go 官方博客介绍了新的 encoding/json/v2 API，为这一广泛使用的标准库 JSON 包带来新的接口设计。博客同时涉及 jsontext 包，社区讨论显示它可用于需要为不同错误类型提供具体报错的解析场景，且性能表现良好。目前公开信息仅为博客公告，尚无独立测量结果或完整迁移细节。

hackernews · Lobsters · 11月4日 17:52 · [社区讨论](https://news.ycombinator.com/item?id=50369106)

**「背景」** Go 1.27 引入新的 encoding/json/v2 与 encoding/json/jsontext 两个包，官方同时提供了从 v1 迁移的指南。据外部资料，这一双包提案于 2025 年 1 月 31 日提交（golang/go \#71497），从讨论到提案历时约一年三个月。新包将 Encoder 和 Decoder 类型移入 jsontext，并改变了其接口以支持底层流式编解码。

**「迁移影响」** 已有用户指出，v2 中不再保留 MarshalIndent，实现等价的可读 JSON 输出需要更复杂、不直观的代码，这会增加从 v1 迁移的成本，也影响快速调试场景。对于需要精细错误处理的解析器，社区反馈 jsontext 是可行选择，但需注意其不提供反射式内省。

**「社区讨论」** 有评论者认可 v2 的方向，但对移除 MarshalIndent 带来的迁移不便表示遗憾；也有人提到正在探索基于 schema 生成 SIMD 风格 JSON 解析器的思路。另有用户分享在公司用 jsontext 为苛刻客户端构建解析器的经验，称其速度出色、适合非简单场景。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://antonz.org/go-json-v2/">JSON evolution in Go : from v1 to v 2</a></li>
<li><a href="https://go.dev/blog/jsonv2">A new Go API for JSON - The Go Programming Language</a></li>
<li><a href="https://www.ymotongpoo.com/books/go-json-v2-history/40-proposal/">From Discussion to Proposal | Yoshi Yamaguchi</a></li>

</ul>
</details>

**标签**: `#Go`, `#JSON`, `#standard library`, `#API design`, `#parsing`

---

<a id="item-tech-news-5"></a>
### [Anthropic 公布大模型可验证推理研究进展](https://www.anthropic.com/research/provable-inference) ⭐️ 8.0/10

Anthropic 发布研究进展，介绍用密码学承诺和逐请求证明来验证服务商实际运行的是哪一套模型权重。按社区评论引述的细节，一次承诺约 6.5 MB、可覆盖约 1600 万次请求，之后服务商需重新承诺；客户端每请求获取一份证明，校验一份证明在 24 线程上约需 17 秒、单线程约 21 秒，并伴随约 90–100 倍的计算开销。该文属于研究进展报告，而非已上线产品，上述数字来自评论者对原文的转述，尚待原文核实。

hackernews · ltononro · 11月4日 17:17 · [社区讨论](https://news.ycombinator.com/item?id=50368626)

**「背景」** Anthropic 的这篇研究进展报告把可验证推理建立在 VerInf 等已有工作之上：VerInf 曾对完整的 48 层 Llama 4 Maverick（400B 参数 MoE 模型，每层提交全部 128 个专家）给出可靠的四轮证明，但速度仅约 0.02 tok/s。Anthropic 在文中也将 VerInf 列为对比基线，并提到当前同行评审的先进方案 DeepProve 能用单次前向传播认证整段生成序列。

**「对使用者的影响」** 该方案按批次事后生成证明，证明者以类似 prefill 的并行方式读取已生成文本，每批只打开一次权重承诺，而非每个请求一次，并设计为可运行在单块 GPU 上。这意味着验证方需接受批处理带来的延迟，而无法逐请求即时确认；对希望在不暴露权重的前提下核验模型身份的服务商与客户，这决定了部署时的资源与流程安排。

**「社区讨论」** 评论者 neuwirth 称该工作建立在本人作为 MARS fellow 完成的 VerInf 之上，并指 Anthropic 在归属上着墨很少，还沿用了其选择 400B Maverick 的做法。nemo1618 认为对开放权重模型而言，可验证推理只需确定性地重跑计算，比零知识证明更便宜，但 OpenAI、Anthropic 短期内不太可能开放权重；vessenes 则指出闭源服务商的推理证明比开源更难，用四家独立服务商运行同一非批处理提示可获得更廉价的概率性证明。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.anthropic.com/research/provable-inference">Progress on provable inference for large language models \ Anthropic</a></li>
<li><a href="https://github.com/kapedalex/VerInf-public">GitHub - kapedalex/ VerInf -public · GitHub</a></li>
<li><a href="https://www.anthropic.com/research/provable-inference">Progress on provable inference for large language models \ Anthropic</a></li>
<li><a href="https://interestingengineering.com/ai-robotics/anthropic-flashprove-cryptographic-model-verification">Anthropic unveils cryptographic tool to verify model outputs</a></li>
<li><a href="https://techcrunch.com/2026/11/03/anthropic-is-working-on-a-system-to-prove-ai-models-identity/">Anthropic is working on a system to prove AI models... | TechCrunch</a></li>

</ul>
</details>

**标签**: `#LLM inference`, `#cryptographic proofs`, `#AI verification`, `#research`, `#open source`

---

<a id="item-tech-news-6"></a>
### [Debian 的 apt 被披露存在中间人任意代码执行漏洞](https://lists.debian.org/debian-security-announce/2026/msg00526.html) ⭐️ 8.0/10

Debian 安全公告披露了 apt 包管理器中的一个中间人任意代码执行漏洞：攻击者可在中间人位置以 root 权限执行任意代码。目前公开信息仅为公告链接和一句摘要，未给出受影响版本、利用细节或修复版本，因此实际影响范围和补丁状态尚无法核实。运行 Debian 及基于 apt 的系统的用户应关注该公告的后续更新。

rss · Lobsters · 11月4日 13:36

**「背景」** 该漏洞被追踪为 CVE-2026-109518，由 Max Justicz 发现：当 HTTP 重定向使两个不同的软件包下载获得相同 URI 时，APT 会将它们合并，从而可能被中间人利用。据 Phoronix 报道，截至其发稿时完整报告尚未公开。有社区讨论指出，问题出在 HTTP 处理代码中，而 apt 通过明文 HTTP 下载软件包，因此仅凭中间人位置就足以利用该漏洞，并认为这与此前两起 apt 漏洞颇为相似。

**「影响与应对」** 该漏洞编号为 CVE-2026-109518，影响 Debian 及 Ubuntu 的 APT：当通过 HTTP 下载并在重试或断点续传时，中间人可在软件包通过校验后被替换，从而以 root 权限执行代码。使用 HTTP 镜像源或不可信网络环境的系统管理员应优先改用 HTTPS 源，并尽快安装 Debian 发布的修复版本。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.phoronix.com/news/Debian-APT-MITM-RCE">Debian &#x27;s APT Affected By Man - In - The - Middle Attack For Arbitrary ...</a></li>
<li><a href="https://news.ycombinator.com/item?id=50364814">Debian apt security update: man - in - the - middle arbitrary code ...</a></li>
<li><a href="https://thehackernews.com/2026/11/debian-and-ubuntu-apt-flaw-lets-mitm.html">Debian and Ubuntu APT Flaw Lets MitM Attackers Swap Verified ...</a></li>
<li><a href="https://breachnews.com/research/debian-apt-flaw-cve-2026-109518-root-code-execution/">Debian APT Flaw CVE-2026-109518 Enables Root Code Execution</a></li>

</ul>
</details>

**标签**: `#security`, `#debian`, `#apt`, `#linux`, `#package-management`

---

<a id="item-tech-news-7"></a>
### [Calif 演示绕过锁定模式的持久越狱，未公开细节](https://appleinsider.com/articles/26/11/04/apples-lockdown-mode-thwarted-by-a-new-persistent-iphone-jailbreak) ⭐️ 8.0/10

黑客团队 Calif 在 X 发布视频，展示一台开启锁定模式的 iPhone 18 Pro 被越狱，并且在升级到 iOS 27.2 后仍保持越狱状态。视频显示操作者先通过 AirDrop 传送 PDF，随后进入设置完成系统更新。Calif 未公开技术细节，表示正在向苹果披露漏洞，也不会发布越狱工具。该消息来自 Telegram 对 AppleInsider 报道的转发，目前仅有单一视频作为依据，漏洞的可复现性与实际影响尚未得到独立验证。

telegram · zaihuapd · 11月4日 14:38

**「背景」** 锁定模式是苹果为记者、活动人士等高危用户提供的最高等级防护，苹果曾在 2026 年 3 月宣称该模式自 2022 年推出以来防护成功率达 100%。此次 Calif 展示的越狱若属实，将是首次公开演示绕过这一防护并跨 iOS 27.2 升级存续的案例，但相关漏洞细节与工具均未公开。

**「影响与限制」** 若该演示属实，锁定模式这一面向高风险用户的最高级别防护可能被绕过，且越狱状态能跨 iOS 27.2 更新保留，意味着常规系统升级未必能清除入侵。由于 Calif 不发布工具且未披露细节，普通用户暂时无法据此自查或复现，实际风险取决于苹果后续修复与披露情况。

**标签**: `#iOS security`, `#jailbreak`, `#Lockdown Mode`, `#vulnerability disclosure`, `#mobile security`

---

<a id="item-tech-news-8"></a>
### [中国科大发布结构引导 RNA 基础模型 structRFM，登上 Nature](https://news.ustc.edu.cn/info/1048/96798.htm) ⭐️ 8.0/10

中国科大团队提出结构引导的 RNA 基础模型 structRFM，论文于 11 月 5 日在线发表于《自然》。该模型将二级结构中的碱基配对信息融入序列预训练，使用约 2100 万条序列—结构配对数据训练，并在多项任务中达到前沿水平。团队同时开发了 MUSES 方法，用于整合多种二级结构预测结果以降低偏差；三维结构预测模块 Zfold 的性能据称与 AlphaFold 3 相当。数据、权重和代码均已开放。上述性能表述来自团队自述，来源未提供具体基准数据或独立验证结果。

telegram · zaihuapd · 11月5日 04:49

**「背景」** structRFM 此前已有预印本和公开代码库：bioRxiv 上的论文将其描述为把碱基配对相互作用通过“配对匹配”操作融入掩码语言建模的 RNA 基础模型，GitHub 仓库 heqin-zhu/structRFM 也提供了用于 RNA 二级结构预测的微调检查点。此次变化在于该工作以论文形式正式发表于《自然》，并同时公开了数据、权重和代码。

**「对 RNA 研究者的直接影响」** 对 RNA 结构研究者而言，structRFM 的数据、权重和代码均已开放，可直接用于下游任务微调或复现，无需从零训练。团队称 Zfold 三维预测性能与 AlphaFold 3 相当，但这一比较来自论文作者自述，尚缺独立基准验证；实际使用前应结合自身靶标类型评估其精度。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.biorxiv.org/content/10.1101/2025.08.06.668731v2">A fully open structure - guided RNA foundation model for... | bioRxiv</a></li>
<li><a href="https://github.com/heqin-zhu/structRFM">heqin-zhu/ structRFM : structRFM : A fully open structure - guided RNA ...</a></li>

</ul>
</details>

**标签**: `#RNA foundation models`, `#AI for biology`, `#structural biology`, `#open source models`, `#research`

---

<a id="item-tech-news-9"></a>
### [OpenAI 宣布收购 Pierre Computer Company](https://openai.com/index/openai-to-acquire-pierre/) ⭐️ 7.0/10

OpenAI 于 11 月 4 日宣布将收购 Pierre Computer Company，称此举旨在扩展 Codex 用于构建、理解和审查代码的工具。Pierre 是一家提供 git 代码存储基础设施的公司，其 Code.Storage 产品被 Lovable、Bolt、Amp 等产品用于存储 AI 生成的代码和其他随时间变化的文件。目前公开信息只有 OpenAI 的公告和 Pierre 的推文链接，没有披露交易金额、完成时间或收购后的产品整合计划。

hackernews · OpenAI News · 11月4日 15:21 · [社区讨论](https://news.ycombinator.com/item?id=50366863)

**「背景」** Pierre Computer Company 由 Bootstrap 的原始开发者 Jacob Thornton 和 Mark Otto 创立，其 Code.Storage 产品以 git 为基础，为 Lovable、Bolt、Amp 等智能体编程产品存储生成的代码及其他机器生成产物。OpenAI 此前已披露自研的 Git 兼容后端 Pando，用于支撑 Codex 带来的开发规模；据工具结果，该披露发生在 2026 年 11 月 2 日，并称中位推送延迟降低近 80%。

**「对开发者的影响」** 据 OpenAI 公告，Codex 应用中的文件浏览与变更审查功能已在使用 Pierre 的 Trees 和 Diffs 开源库，因此现有 Codex 用户的使用方式不会立即改变。依赖 Code Storage 存储生成代码与产物的第三方产品（如社区评论提到的 Lovable、Bolt、Amp 等）后续能否继续获得同等支持，目前尚无公开说明，相关团队需关注收购完成后的服务条款与迁移安排。

**「社区讨论」** 有评论者认为这笔收购与 OpenAI 此前关于“在 OpenAI 扩展 git”的工程文章有关，并提到 mitchellh 公开称赞过 Pierre。也有人指出 Pierre 由 Bootstrap 的原始开发者 Jacob Thornton 和 Mark Otto 创立，并称其 diffs 库口碑不错。另有评论以调侃口吻提出，应为此类“买下整家公司比长期订阅更划算”的收购造一个专门术语。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://code.storage/">Code Storage — Git Infrastructure at Scale by The Pierre Computer ...</a></li>
<li><a href="https://news.ycombinator.com/item?id=50366863">OpenAI to acquire Pierre Computer Company | Hacker News</a></li>
<li><a href="https://openai.com/index/scaling-git-at-openai/">Scaling Git at OpenAI</a></li>
<li><a href="https://www.remio.ai/post/scaling-git-at-openai-pando-keeps-git-while-reworking-its-backend">Scaling Git at OpenAI: Pando Keeps Git While Reworking Its ...</a></li>
<li><a href="https://openai.com/index/openai-to-acquire-pierre/">OpenAI to acquire Pierre Computer Company, Inc. | OpenAI</a></li>
<li><a href="https://itmunch.com/openai-pierre-computer-codex-git-tools/">- OpenAI To Acquire Pierre Computer, Bringing More Git Tools ...</a></li>

</ul>
</details>

**标签**: `#openai`, `#acquisitions`, `#git`, `#developer-tools`, `#agentic-coding`

---

<a id="item-tech-news-10"></a>
### [Show HN：十年逆向工程让 DOS 版《银河飞将》支持联机合作](https://fireflyk64.github.io/wcmulti/) ⭐️ 7.0/10

作者 daniel\_rh 在 Hacker News 上展示了其耗时约十年的逆向工程成果：为 DOS 版《银河飞将》（Wing Commander）加入可用的联机合作模式，让玩家能一起执行剧情任务。据作者自述，起点是 2015 年在 DOSBox 中游玩时发现游戏状态恰好能放进 64k 数据段；此后他与兄弟通过“停走、转向、通信”等分步实验探测内存，定位了关键变量，并找到向游戏函数注入调用的方法，再把游戏状态在网络上同步。该项目以网页形式公开，属于个人逆向工程成果，而非官方发行或商业支持的功能。

hackernews · daniel\_rh · 11月4日 18:51 · [社区讨论](https://news.ycombinator.com/item?id=50369895)

**「背景」** DOS 时代的《银河飞将》原本是单人太空模拟游戏，没有联机合作功能。要让老游戏支持多人，通常需要先弄清其内存布局和内部函数调用方式，再在不修改原始可执行文件逻辑的前提下注入代码并同步状态；作者正是从“游戏状态可容纳于 64k 数据段”这一观察出发，逐步完成上述工作。

**「影响」** 对复古游戏玩家和逆向工程爱好者而言，这一项目提供了一条可复用的思路：通过内存探测与函数注入为无源码的老游戏添加网络功能。不过它依赖特定版本的 DOS 游戏和 DOSBox 环境，作者未说明对其他版本或平台的兼容性，使用者需自行验证。

**「社区讨论」** 评论普遍表示欢迎，herodoturtle 称这正是他来 Hacker News 想看到的内容。EmX\_3000 回忆早年通过逐次改动并对比存档来定位物品、属性等数值地址的作弊方法，认为思路相通；dond1986 询问能否用类似方法制作同类游戏，JeppyG 则提到自己正用 AI 辅助修改《船长克拉德》（Captain Claw）等童年游戏。

**标签**: `#reverse-engineering`, `#retro-gaming`, `#DOS`, `#memory-analysis`, `#networking`

---

<a id="item-tech-news-11"></a>
### [AI 漏洞发现迫使软件业偿还四十年技术债](https://spectrum.ieee.org/ai-in-cybersecurity-php2shell-vulnerability) ⭐️ 7.0/10

IEEE Spectrum 的一篇文章认为，AI 辅助的漏洞发现正在暴露长期积累的软件安全债务，并以 PHP2Shell 漏洞为例说明这一趋势。文章的核心判断是：短期内会出现大量需要修补的漏洞，但长期看软件安全性可能因此提升。Hacker News 上相关讨论获得 674 条评论，争论集中在眼前的修补负担与长期安全收益之间。

hackernews · pseudolus · 11月4日 11:52 · [社区讨论](https://news.ycombinator.com/item?id=50364336)

**「背景」** PHP2Shell 是近期引发关注的漏洞，安全研究员 Jaydip Modhwadia 于 10 月 25 日在名为“Steal My Bitcoin”的在线安全挑战中利用它，在运行未修补版本 PHP 的服务器上实现了远程代码执行，证明该漏洞可被实际利用。紧随其后出现的 HTTP2Shell（又称 Broccoli2Shell、Node2Shell，CVE-2026-111497）是 Google Brotli 解压库中一个 CVSS v4.0 评分 9.2 的越界写入漏洞，它与 PHP2Shell 在技术上并无关联，但同样位于被大量应用依赖的基础组件之中。

**「实际影响」** 对开发者和运维团队而言，直接后果是需要处理一批此前未被发现的漏洞补丁，短期内修补工作量上升。评论者 kentm 表示，AI 降低了修复成本，使其能顺手处理代码库中积累 5 至 7 年的技术债；但这一说法属于个人经验，并非经过验证的普遍结论。

**「社区讨论」** 部分评论者（如 glennfiedler）认为，AI 暴露漏洞虽然会带来几个月的阵痛，但最终软件会比以往更安全；Arbortheus 则希望这一过程能顺带发现被国家或商业间谍公司私藏的零日漏洞。vanschelven 提出不同看法，认为 HTTP2Shell/Brotli2Shell 可能比 PHP2Shell 更严重，其时间线显示漏洞在代码中存在 8 年、修复在 Git 中搁置 8 个月，说明人类长期隐瞒漏洞的问题依然存在。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/PHP2Shell">PHP2Shell - Wikipedia</a></li>
<li><a href="https://www.cynet.com/blog/broccoli2shell-node2shell-http2shell-cve-2026-111497-explained/">Broccoli2Shell / Node2Shell / HTTP2Shell: CVE-2026-111497 ...</a></li>
<li><a href="https://blog.checkpoint.com/security/http2shell-the-brotli-vulnerability-that-extends-beyond-node-js/">HTTP2Shell: The Brotli Vulnerability That Extends Beyond Node.js</a></li>

</ul>
</details>

**标签**: `#security`, `#AI`, `#vulnerability-research`, `#software-engineering`, `#technical-debt`

---

<a id="item-tech-news-12"></a>
### [AMD 预计季度营收将首次超过英特尔](https://www.solidot.org/story?sid=85799) ⭐️ 7.0/10

AMD 公布 2026 财年第三季度营收同比增长 45%，达到 134 亿美元，其中数据中心业务营收 85 亿美元，同比增长 97%；客户端与游戏业务营收则下降 8% 至 37 亿美元。公司预计下一季度营收约为 170 亿美元，而英特尔同期指引为 150 亿至 160 亿美元、增长近乎停滞。若 AMD 达到这一指引，将是其季度营收首次超过英特尔。上述数字来自 AMD 的财报与业绩指引，属于公司预测，尚待实际业绩验证。

rss · 奇客 Solidot · 11月4日 17:20

**「背景」** AMD 与英特尔长期在 x86 处理器市场直接竞争，但英特尔的营收规模此前一直高于 AMD。此次财报显示，AMD 数据中心业务营收同比增长 97%，而英特尔对下一季度的营收指引为 150 亿至 160 亿美元、增长近乎停滞，AMD 约 170 亿美元的指引因此可能首次实现反超。

**「影响」** 这一变化意味着 AMD 在 x86 与数据中心市场的收入规模可能首次反超英特尔，而推动增长的主要是数据中心业务，客户端与游戏业务同期仍在收缩。对关注服务器采购和 x86 平台选型的用户与开发者而言，供应商收入格局的变化可作为评估长期供货与生态投入的参考，但下一季度指引能否兑现仍需以实际财报为准。

**标签**: `#AMD`, `#Intel`, `#data center`, `#semiconductors`, `#earnings`

---

<a id="item-tech-news-13"></a>
### [《NIKKE》PC 启动器遭供应链攻击，官方 CDN 脚本被篡改](https://www.solidot.org/story?sid=85798) ⭐️ 7.0/10

韩国游戏《胜利女神：新的希望（NIKKE）》的 PC 启动器被植入恶意代码。攻击者篡改了 Level Infinite CDN 分发的四个官方 JavaScript 文件，篡改时间约在 2026 年 9 月 27 日，实际攻击活动发生在 2026 年 10 月 23 日至 11 月 3 日之间，期间打开启动器的用户可能被植入木马。该恶意程序会窃取浏览器保存的密码、Windows 凭据管理器信息、SSH 密钥、云服务或 AI 服务访问令牌，以及 28 种基于浏览器的加密货币钱包数据，并具备执行任意命令、读取文件和屏幕截图的能力。

rss · 奇客 Solidot · 11月4日 17:05

**「背景」** 此次事件属于供应链攻击：攻击者没有直接入侵玩家设备，而是篡改了 Level Infinite CDN 上分发的官方 JavaScript 文件，使启动器在正常加载脚本时一并执行恶意代码。据 BleepingComputer 报道，NIKKE 开发方已确认 PC 启动器脚本遭篡改，并将其定性为供应链攻击。

**「影响与自查」** 在上述时间段内打开过启动器的玩家可进入游戏文件夹查找 debug.log，若其中出现 k2f\_chan 且状态为 registered，应立即卸载游戏并使用杀毒软件扫描。由于被窃取的数据涵盖浏览器密码、SSH 密钥和云服务令牌，受影响的用户还应考虑轮换这些凭据。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.bleepingcomputer.com/news/security/nikke-pc-game-launcher-hacked-to-spread-remote-access-data-stealing-malware/">NIKKE PC game launcher hacked to spread remote access, data ...</a></li>

</ul>
</details>

**标签**: `#security`, `#supply-chain-attack`, `#malware`, `#gaming`, `#credential-theft`

---

<a id="item-tech-news-14"></a>
### [苹果在中国推出基于千问的 Apple Intelligence](https://www.solidot.org/story?sid=85793) ⭐️ 7.0/10

苹果从 11 月 4 日起在中国推出 Apple Intelligence，中国用户可通过最新的 iOS 开发者 Beta 版进行测试，正式版将于 12 月随 iOS 27.3 发布。中国版由苹果与阿里巴巴合作推出，基于阿里巴巴的千问模型。首批功能包括实时翻译、写作工具、视觉智能、照片 app 的消除工具、智绘表情、照片自然语言搜索、创建回忆影片、优先邮件识别、邮件摘要、智能回复、通知摘要、首要通知、减少干扰、备忘录音频转录摘要、通话转录文本摘要、文字输入与 Siri 对话，以及需登录千问的 Siri 接入千问和创作功能。

rss · 奇客 Solidot · 11月4日 09:55

**「背景」** 苹果的 Apple Intelligence 此前已在其他市场推出，但受中国生成式 AI 服务监管审批要求影响，一直未能在中国大陆上线。据搜索结果，该功能已获得中国国家互联网信息办公室（CAC）批准，并确定由阿里巴巴的通义千问模型提供本地化支持，而非苹果在海外使用的 ChatGPT。

**「影响」** 中国用户要使用 Siri 接入千问及创作功能，需要登录千问账号；其余功能则随 iOS 27.3 正式版在 12 月向中国用户开放。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://zukcloud.com/en/blog/2026-apple-intelligence-china-qwen-baidu.html">Apple Intelligence Finally Gets Approved in China ...</a></li>
<li><a href="https://windowsforum.com/threads/apple-intelligence-china-approval-brings-alibaba-qwen-to-ios-27.439363/">Apple Intelligence China Approval Brings Alibaba Qwen to iOS 27</a></li>

</ul>
</details>

**标签**: `#apple-intelligence`, `#alibaba-qwen`, `#china`, `#ios`, `#ai-assistants`

---

<a id="item-tech-news-15"></a>
### [研究：出生前后大脑会清除携带拷贝数变异的神经元](https://www.solidot.org/story?sid=85792) ⭐️ 7.0/10

《自然》发表的一项研究显示，人类大脑在出生前后会清除大量携带染色体拷贝数变异的神经元。对 2300 多个神经细胞的分析发现，从胎儿大脑采样的神经元中超过 1/4 存在染色体片段增加或缺失，而出生后婴儿大脑中这一比例仅约 6%。小鼠实验表明，哺乳动物在早期发育中会激活一个导致细胞死亡的分子程序来清除大量脑细胞；研究还提出，拷贝数变异水平较高的脑细胞，其负责与其他神经元建立突触的基因往往也表现异常，这可能是大脑识别异常细胞的线索。

rss · 奇客 Solidot · 11月4日 09:24

**「研究背景」** 这项研究基于对单个神经细胞的测序分析：对胎儿及出生后脑组织中共 44,861 个细胞进行 DNA 与 RNA 联合单细胞测序，才得以量化携带拷贝数变异（CNV）的神经元比例。此前对发育中大脑基因组质量的系统性筛查缺乏如此规模的单细胞证据，因此“出生前后清除异常神经元”这一发育期基因组质控机制此前未被明确描述。

**「影响」** 该结果提示，胎儿期神经元中高比例的拷贝数变异并不必然持续到出生后，评估产前脑组织基因检测结果时需考虑这种出生前后的筛选效应；同时，突触相关基因表达异常与拷贝数变异的关联，为后续研究哪些神经元被保留提供了可检验的方向。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.nature.com/articles/s41586-026-11190-3">Perinatal elimination of genetically aberrant human ... - Nature</a></li>
<li><a href="https://neurosciencenews.com/developing-brain-genetics-neurons-32352/">Developing Fetal Brain Weeds Out Genetically Flawed Neurons</a></li>

</ul>
</details>

**标签**: `#neuroscience`, `#developmental biology`, `#genomics`, `#research`

---

<a id="item-tech-news-16"></a>
### [Cloudflare 优化一致性哈希节省 100 TB 内存](https://www.infoq.cn/article/yRvSUCFFcZEEXCgxyAO2?utm_source=rss&amp;utm_medium=article) ⭐️ 7.0/10

InfoQ 报道称，Cloudflare 通过优化其一致性哈希实现节省了 100 TB 内存。该报道未提供具体的技术细节、优化方法或支撑数据，因此这一数字目前只能视为厂商披露的结果，尚无法从现有材料中核实其测量方式与适用范围。

rss · InfoQ 中文 · 11月5日 09:00

**「背景」** 一致性哈希是分布式系统中把请求或数据映射到节点的常用方法，其实现细节会直接影响每个节点需维护的哈希环与映射结构所占内存。据搜索结果，Cloudflare 此次节省约 100 TB 内存，来自对其内部 Pingora 后端所用一致性哈希实现的优化，涉及数据表示、哈希数量以及 Rust 内存布局等细节。

**「对运维与迁移的影响」** 据外部报道，Cloudflare 的优化针对其内部负载均衡服务中一致哈希的 Rust 实现，节省的内存来自全球边缘代理网络。报道提到，更换哈希算法需要平滑上线，以避免源站出现惊群效应；因此，采用类似方案时，团队应把算法切换的灰度与回滚纳入计划。

<details><summary>参考链接</summary>
<ul>
<li>Saving another 100TB of RAM with math (and Rust) | Michał Matłoka - LinkedIn</li>
<li>Cloudflare Saved 100 TB of RAM With Math and a Small Rust Optimization - Medium</li>
<li>How Cloudflare Saved 100+ TB of RAM With Math and Rust | by Rothy Yorn - Stackademic</li>
<li><a href="https://www.sysdesai.com/news/jqXXXWDVKz8z">Optimizing Consistent Hashing for Memory Efficiency at Cloudflare</a></li>
<li><a href="https://www.infoq.com/news/2026/10/cloudflare-hashing-optimization/">Cloudflare Reclaims 100 TB of RAM by Optimizing Consistent ...</a></li>
<li><a href="https://mantbyte.github.io/tech/2026/09/19/cloudflare-rust-consistent-hashing-optimization.html">Reclaiming 100TB of RAM: How Cloudflare Optimized Consistent ...</a></li>

</ul>
</details>

**标签**: `#distributed-systems`, `#consistent-hashing`, `#cloudflare`, `#memory-optimization`, `#infrastructure`

---

<a id="item-tech-news-17"></a>
### [Zig 重写 libc 致 SQLite 变慢：一篇博客的指控](https://dennisforbes.ca/blog/microblog/2026/10/the_accidental_12000x_sqlite_slowdown/) ⭐️ 7.0/10

一篇博客文章声称 Zig 对 libc 的重写导致 SQLite 出现大幅性能下降，标题将其称为“意外的 12000 倍 SQLite 减速”。但所提供的内容仅包含指向该博客的链接和 Lobste.rs 评论页，没有给出具体版本、测量方法、复现步骤或受影响范围，因此这一说法目前无法从现有材料中得到验证。

rss · Lobsters · 11月4日 15:23

**「背景」** Zig 长期以 musl 作为其 C 标准库基础，但正逐步用纯 Zig 重写其中的组件，以逐个移除对 C 的依赖。据相关报道，这次性能问题源于 Zig 对 strspn、strcspn、strpbrk 和 strstr 等字符串函数的纯 Zig 重写：这些实现每次调用都会重新测量整个字符串长度，导致处理 1.2MB 文件的分词操作出现约 12,000 倍的性能下降，并呈二次方增长。

**「对使用 zig cc 的开发者」** 据博客作者报告，用 zig cc 交叉编译的 SQLite 在写入约 4 万条 JSON 记录时耗时数分钟，1.2MB 文件的词法分析约慢 12,000 倍，且随文件增大呈二次方增长。问题被追溯到纯 Zig 版 libc 对 strspn、strcspn、strpbrk 和 strstr 的重写：这些函数每次调用都会重新测量整个字符串长度，破坏了 SQLite 词法器依赖的流式扫描假设。依赖 zig cc 编译 C 文本处理或词法分析库的开发者应留意这一性能特征，并在升级或切换工具链时对相关路径做基准测试。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://dennisforbes.ca/blog/microblog/2026/10/the_accidental_12000x_sqlite_slowdown/">Shlemiel the Painter Is Back: How Zig’s libc Rewrite Made ...</a></li>
<li><a href="https://proomt.com/item/shlemiel-the-painter-is-back-how-zig-s-libc-rewrite-made-sqlite-slower-27b77ac7-cd0e-4c2e-bb48-028b743b3790">Shlemiel the Painter Is Back: How Zig’s libc Rewrite Made ...</a></li>
<li><a href="https://dennisforbes.ca/blog/microblog/2026/10/the_accidental_12000x_sqlite_slowdown/">Shlemiel the Painter Is Back: How Zig’s libc Rewrite Made ...</a></li>
<li><a href="https://www.youtube.com/watch?v=bQaqg8RJQ0c">Zig&#x27;s libc rewrite made SQLite 12,000x slower - YouTube Shlemiel the Painter Is Back: How Zig’s libc Rewrite Made ... Zig Weekly #5: libzigc-Rewrite verlangsamt SQLite um das 12. ... Shlemiel the Painter Is Back: How Zig&#x27;s Libc Rewrite Made ... Zig 周刊 #5：libzigc 重写引发 SQLite 万倍降速，MicroZig 严苛反 AI... GitHub - nDimensional/zig-sqlite: Simple, low-level ...</a></li>
<li><a href="https://proomt.com/item/shlemiel-the-painter-is-back-how-zig-s-libc-rewrite-made-sqlite-slower-27b77ac7-cd0e-4c2e-bb48-028b743b3790">Shlemiel the Painter Is Back: How Zig’s libc Rewrite Made ...</a></li>

</ul>
</details>

**标签**: `#zig`, `#sqlite`, `#performance`, `#libc`, `#open-source`

---

<a id="item-tech-news-18"></a>
### [Rust 编译器提速指南（2026 年 11 月）](https://nnethercote.github.io/2026/11/04/how-to-speed-up-the-rust-compiler-in-november-2026.html) ⭐️ 7.0/10

Rust 编译器贡献者 nnethercote 于 2026 年 11 月 4 日在其个人博客发布了一篇题为《How to speed up the Rust compiler in November 2026》的文章，讨论如何提升 Rust 编译器的性能。但本次提供的条目内容仅包含指向 Lobste.rs 评论页的链接，没有正文，因此文章给出的具体方法、涉及的编译器版本、实测数据与适用范围均无法核实。

rss · Lobsters · 11月4日 14:05

**「背景」** 该文是 Nicholas Nethercote 关于 Rust 编译器性能的系列月度文章之一，他在 2026 年 9 月 30 日发布过上一期同类文章。据外部报道，他近一个月在 Hexcat 主导的编译器性能工作覆盖 45 个基准测试、产生 236 项测试改进，平均实际耗时降低 2.85%，峰值内存最多节省 4.46%。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://news.lavx.hu/article/rust-compiler-hits-another-month-of-gains-in-november">Rust compiler hits another month of gains in November</a></li>
<li><a href="https://nnethercote.github.io/2026/09/30/how-to-speed-up-the-rust-compiler-in-september-2026.html">How to speed up the Rust compiler in September 2026</a></li>

</ul>
</details>

**标签**: `#rust`, `#compilers`, `#performance`, `#systems-programming`

---

<a id="item-tech-news-19"></a>
### [每词 11 纳秒：极端优化变位词计算](https://wiredream.com/anagram-fun/) ⭐️ 7.0/10

wiredream.com 发布的一篇博客文章介绍了对变位词（anagram）计算进行激进性能优化的过程，声称达到约每词 11 纳秒的处理速度。该文经链接聚合站点传播，但当前可获取的内容仅为链接存根，未包含具体实现方法、基准测试环境或可复现的测量细节，因此这一数字属于作者自述，尚无法从现有材料独立核实。

rss · Lobsters · 11月5日 07:37

**「背景」** 纳秒是国际单位制中的时间单位，等于十亿分之一秒（10⁻⁹ 秒），因此“每词 11 纳秒”意味着处理单个词的平均耗时约为百亿分之一秒量级。该博文经链接聚合站点传播，在 Hacker News 等社区出现讨论条目，但所给材料仅为链接摘要，未包含具体实现细节或独立验证结果。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Nanosecond">Nanosecond - Wikipedia</a></li>
<li><a href="https://news.ycombinator.com/item?id=50273573">11 Nanoseconds per Word : Over- Optimizing Anagrams</a></li>

</ul>
</details>

**标签**: `#performance-optimization`, `#algorithms`, `#systems-programming`, `#technical-deep-dive`

---

<a id="item-tech-news-20"></a>
### [LZ4 1.11 为 liblz4 引入多线程压缩](https://www.phoronix.com/news/LZ4-1.11-Released) ⭐️ 7.0/10

LZ4 1.11 已发布，为 liblz4 库加入了多线程压缩支持，并包含其他性能改进。Phoronix 的简短公告只提到这一核心变化，没有给出线程数、加速比、API 变化或兼容性条件等具体细节。因此目前可以确认的是该版本已发布并宣称支持多线程压缩，但实际性能收益尚未有独立测量或基准数据佐证。

rss · Phoronix · 11月4日 21:53

**「背景」** LZ4 是一种以极快压缩速度著称的开源压缩算法，其 liblz4 库和 lz4 命令行工具被多数 Linux 发行版通过包管理器直接提供，因此库层面的改动会随发行版打包扩散到大量下游软件。据 Phoronix 报道，1.11 版除为 liblz4 加入多线程压缩外，命令行工具还新增 --memory 选项，用于把多线程压缩限制在设定的内存预算内。

**「对开发者的影响」** 据工具结果中的基准数据，在相同线程数下，多线程文件压缩在 -1 级别比原版 lz4 快 1.88–2.57 倍（32 线程时 3,810 MB/s 对 1,519 MB/s），-3 级别快 1.21–1.27 倍，-6 和 -9 级别快 7–16%。由于多线程能力直接集成进 liblz4，链接该库的应用可自行受益，并可通过新增字段控制工作线程数量；但上述数字来自第三方汇总，并非 Phoronix 原文给出的官方基准，实际收益仍取决于数据与线程配置。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.phoronix.com/news/LZ4-1.11-Released">LZ 4 1 . 11 Introduces Multi - Threaded Compression For liblz 4 , Other...</a></li>
<li><a href="https://github.com/lz4/lz4">GitHub - lz 4 / lz 4 : Extremely Fast Compression algorithm · GitHub</a></li>
<li><a href="https://github.com/inikep/lzbench">GitHub - inikep/lzbench: lzbench is an in-memory benchmark of ... Making LZ4’s Multithreaded File Compression Scale LZ4 1.11 Introduces Multi-Threaded Compression For... LZ4 Compression Benchmark - OpenBenchmarking.org Compression Codec Benchmark - GitHub</a></li>

</ul>
</details>

**标签**: `#compression`, `#lz4`, `#open-source`, `#performance`, `#libraries`

---