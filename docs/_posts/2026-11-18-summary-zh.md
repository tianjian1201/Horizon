---
layout: default
title: "Horizon Summary: 2026-11-18 (ZH)"
date: 2026-11-18
lang: zh
---

> 从 159 条内容中筛选出 20 条重要资讯。

---

**科技新闻**
1. [OpenAI 发布 GPT-6.2 Astra 与 Sol，Astra 降价 20%](#item-tech-news-1) ⭐️ 9.0/10
2. [Java4Shell：OpenJDK 处理 Base64 时存在远程代码执行漏洞](#item-tech-news-2) ⭐️ 8.0/10
3. [微软发布 MAI Code 2 与 Code 2 Flash 编程模型](#item-tech-news-3) ⭐️ 7.0/10
4. [哈佛研究：AI 编程代理把瓶颈转移到代码审查](#item-tech-news-4) ⭐️ 7.0/10
5. [SolidJS 发布 2.0，新增服务端 RPC 与实时广播能力](#item-tech-news-5) ⭐️ 7.0/10
6. [微软 ONNX Runtime 的 GitHub 仓库疑似下线](#item-tech-news-6) ⭐️ 7.0/10
7. [Quad9 退出法国：公共 DNS 解析器面临的法律压力](#item-tech-news-7) ⭐️ 7.0/10
8. [《Web Browser Engineering》从零构建浏览器的工程书再获讨论](#item-tech-news-8) ⭐️ 7.0/10
9. [面向编码代理的外部沙箱模式与三个实现](#item-tech-news-9) ⭐️ 7.0/10
10. [Datasette Lite 用 Service Worker 在浏览器中运行完整 Datasette 应用](#item-tech-news-10) ⭐️ 7.0/10
11. [美国多起技术故障被指源于批量推送 AI 发现的漏洞补丁](#item-tech-news-11) ⭐️ 7.0/10
12. [随机实验：Google AI Overviews 令外链点击减少约四成](#item-tech-news-12) ⭐️ 7.0/10
13. [灵晟蝉联 Top500 榜首，成为首个纯 CPU 突破 2 Exaflops 的系统](#item-tech-news-13) ⭐️ 7.0/10
14. [日本理研富岳超算遭非法访问暂停运行](#item-tech-news-14) ⭐️ 7.0/10
15. [arXiv 预印本提出“程序即权重”编程范式](#item-tech-news-15) ⭐️ 7.0/10
16. [用 E-Graph 自动检查编译器正确性](#item-tech-news-16) ⭐️ 7.0/10
17. [Red Hat Quay 被曝严重漏洞：可读取并覆盖私有镜像](#item-tech-news-17) ⭐️ 7.0/10
18. [Valve 发布新版 AMDGPU 内核补丁，瞄准 Steam Play 游戏卡顿](#item-tech-news-18) ⭐️ 7.0/10

**财经新闻**
1. [工信部委托中汽协评估 17 家车企 60 天账期](#item-finance-news-1) ⭐️ 7.0/10
2. [美国芯片新规致 4.8 亿美元字节跳动 GPU 贷款暂停](#item-finance-news-2) ⭐️ 7.0/10

---

## 科技新闻

<a id="item-tech-news-1"></a>
### [OpenAI 发布 GPT-6.2 Astra 与 Sol，Astra 降价 20%](https://openai.com/index/introducing-gpt-6-2-astra-sol/) ⭐️ 9.0/10

OpenAI 发布 GPT-6.2 Astra 和 GPT-6.2 Sol 两款模型，API 中分别以 \`gpt-6.2-astra\` 和 \`gpt-6.2-sol\` 提供，并已在 ChatGPT Work 和 Codex 上线。Astra 定位为处理最难项目的旗舰模型，输入每百万 token 8 美元、缓存输入 0.4 美元、输出 40 美元，为上一代 GPT-6 Astra 价格的 80%；Sol 定位日常高效工作，维持 GPT-6.1 Sol 的每百万 token 2 美元输入、10 美元输出。上述为厂商公布的定价与定位，第三方评测结果来自社区，并非 OpenAI 的独立验证。

hackernews · OpenAI News · 11月17日 17:46 · [社区讨论](https://news.ycombinator.com/item?id=50535230)

**「背景」** GPT-6 Astra 此前定价为每百万 token 输入 10 美元、输出 50 美元，缓存输入 1 美元；GPT-6.1 Sol 与 GPT-6 Sol 均为 2 美元/10 美元，是 GPT-5.6 Sol（4 美元/20 美元）的一半。此次 Astra 的缓存输入价从 1 美元降至 0.4 美元，对长时间运行的智能体会话影响更明显。

**「实际影响」** 对开发者而言，Astra 的调用成本下降 20%、缓存输入成本降至原来的 40%，可降低长时智能体任务的费用；Sol 价格不变，升级无需调整预算。社区评测中，chriddyp 报告其数据分析考试里 Astra 单次成本从约 20 美元降至约 4 美元、Sol 从 2.6 美元降至 1.2 美元，准确率相近，成本下降部分来自 token 用量减少约 20% 和工具调用次数减少，但也出现模型“提前结束”而未找到答案的情况。

**「社区讨论」** Mazer23 称两款模型在其参数化 CAD 评测的人类排名中已居前两位，且比 6.1 系列更快更便宜；thefourthchime 的 PacBench 结果显示 Astra 得 92 分、耗时 6.6 分钟、花费 2.04 美元，略低于 Kimi K3.1 Pro 的 93 分（11.5 分钟、0.68 美元）。Topfi 则认为官方展示的幻灯片、工作簿和备忘录示例质量很差，不如自己此前用 GPT-5.6 Sol 单次提示得到的结果；Simon Willison 也提到 Astra 6.2 在多项基准上不及 Claude Fable 5.2，并引用 Theo Browne 的反馈称模型在长任务中会突然追问用户无法理解的内部实现细节而卡住。

**标签**: `#large language models`, `#OpenAI`, `#model release`, `#benchmarks`, `#AI industry`

---

<a id="item-tech-news-2"></a>
### [Java4Shell：OpenJDK 处理 Base64 时存在远程代码执行漏洞](https://calif.io/java4shell/) ⭐️ 8.0/10

安全研究者 Calif 公开披露了 OpenJDK 在处理 Base64 时触发的远程代码执行漏洞，编号 CVE-2026-114938，CVSS 4.0 评分 9.2，据称已潜伏近四年。受影响版本包括 Java 17（17.0.6 及之后全部 17 线）、21、25 和 27；标准 Java 8/11 通常不受影响，但 Oracle Java 8 Performance Pack 例外。漏洞仅影响搭载 AVX-512 VBMI 指令集的 x86-64 服务器处理器，大致对应 2021 年及以后发布的 Intel 处理器和 2022 年及以后的 AMD 处理器，ARM64 架构不受影响。攻击需要通过网络进行堆布局（heap grooming），作者称其对 RTT 和抖动敏感，低且稳定的往返时延更有利于提高可靠性。

hackernews · Lobsters · 11月17日 21:11 · [社区讨论](https://news.ycombinator.com/item?id=50538240)

**「背景」** 该漏洞编号为 CVE-2026-114938，CVSS 4.0 评分为 9.2，问题出在处理 AVX-512 Base64 的优化汇编代码中。据 oss-security 邮件列表，可通过启动参数 -XX:-UseBASE64Intrinsics 关闭硬件加速的 Base64 编解码，或在 x86-64 主机上使用 -XX:UseAVX=2 禁用 AVX-512 来缓解。The Hacker News 报道称 Oracle 与 OpenJDK 项目已发布修复，Amazon Corretto 已跟进，Red Hat 的修复仍在准备中。

**「影响与应对」** 受影响用户需确认运行环境是否同时满足两个条件：使用 HotSpot 系 JDK（OpenJDK、Oracle JDK 或 GraalVM JDK），且部署在支持 AVX-512 VBMI 的 x86-64 处理器上；OpenJ9、GCJ 以及以 C2 替代实现的 Azul Prime（Zing）不在该攻击路径内。社区讨论中有人提出可用 \`-XX:UseAVX=2\` 规避 AVX-512 路径，但该说法被明确标注为未经证实，不应作为正式修复方案。Semgrep 已发布免费检测脚本，用于排查上述条件组合。

**「社区讨论」** Semgrep 的 ievans 表示，虽然利用条件非常具体，但受影响主机仍会很多，并发布了免费检测脚本，用于检查 HotSpot VM 等五项条件，并指出 OpenJ9、GCJ 以及用其他编译器替换 C2 的 Azul Prime（Zing）不在范围内。AgentME 转述 Twitter 上的说法称，该漏洞可能与 Base64 解码的 AVX-512 实现有关，可通过以 -XX:UseAVX=2 参数运行 Java 来规避，但强调这一说法尚未得到确认。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.wiz.io/blog/cve-2026-114938-rce-java4shell-openjdk">CVE - 2026 - 114938 RCE in OpenJDK : Everything You Need... | Wiz Blog</a></li>
<li><a href="https://www.openwall.com/lists/oss-security/2026/11/17/31">oss-security - CVE - 2026 - 114938 : OpenJDK pre-auth RCE via...</a></li>
<li><a href="https://thehackernews.com/2026/11/java4shell-cve-2026-114938-enables-pre.html">Java 4 Shell ( CVE - 2026 - 114938 ) Enables Pre-Auth RCE in Jira...</a></li>
<li><a href="https://orca.security/resources/research/java4shell-critical-openjdk-base64-decoder-flaw-could-allow-unauthenticated-remote-code-execution/">Java4Shell CVE-2026-114938: Affected Versions &amp; Mitigation ...</a></li>
<li><a href="https://blog.qualys.com/vulnerabilities-threat-research/2026/11/17/how-to-find-mitigate-and-patch-the-critical-java4shell-flaw-cve-2026-114938-now">How to Find, Mitigate, and Patch the Critical Java4Shell Flaw ...</a></li>
<li><a href="https://cycode.com/blog/java4shell-cve-2026-114938/">Java4Shell (CVE-2026-114938): Affected Versions, How to Check ...</a></li>

</ul>
</details>

**标签**: `#security`, `#vulnerability`, `#OpenJDK`, `#Java`, `#exploitation`

---

<a id="item-tech-news-3"></a>
### [微软发布 MAI Code 2 与 Code 2 Flash 编程模型](https://microsoft.ai/news/introducing-mai-code-2-and-mai-code-2-flash/) ⭐️ 7.0/10

微软推出面向编程的 MAI Code 2 和 MAI Code 2 Flash 两款模型。据社区评论引述的厂商说法，MAI Code 2 以 GPT-6.1 Sol 约 40% 的成本达到其 98% 的性能，并以 Claude Opus 5.5 约 5% 的成本达到其 96% 的性能。这些均为微软公布的对标数据，尚未见到独立复测；目前该模型已在 GitHub Copilot 中提供，有用户称当天以五折价格选用。

hackernews · lemonish97 · 11月17日 18:25 · [社区讨论](https://news.ycombinator.com/item?id=50535885)

**「背景」** MAI Code 2 与 Code 2 Flash 属于微软 MAI-Code 模型家族，该家族此前主要提供轻量级编码辅助；微软称这两款新模型将能力扩展到复杂的 agentic 软件工程。发布当天，两款模型已同步上线 GitHub Copilot，有用户称 Copilot 以五折提供 MAI Code 2。微软给出的对比基准包括 GPT-6.1 Sol、Claude Opus 5.5、GPT-6 Luna 和 Claude Haiku 5.5，但这些性能与成本数字均来自厂商自述，尚无独立验证。

**「实际影响」** 对开发者而言，最直接的变化是可以在 GitHub Copilot 中切换到 MAI Code 2，并按明显更低的单价使用。一位用户报告称，该模型解决了 Windows WSL/Ubuntu 下棘手的 Python 构建问题、生成了可通过的测试用例，并修复了 Azure Bicep 部署问题，体验与 Claude Opus 相近。由于性能对比来自厂商自述，团队在依赖其成本优势前应先用自身工作负载验证。

**「社区讨论」** 有评论认为，对日常编程场景而言，它与当前最强模型已无明显差别；也有人质疑微软如何在短时间内追平，猜测可能涉及对 GPT 的蒸馏，但承认这未必被允许。另有观点指出，领先者优势仅剩数月，难以构成可持续的竞争壁垒；还有人对图表中 Sol 比 Opus 便宜约十倍的数字提出疑问，怀疑存在挑选数据的情况。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://microsoft.ai/news/introducing-mai-code-2-and-mai-code-2-flash/">MAI Code 2 and Code 2 Flash: Everyday coding at scalable ...</a></li>
<li><a href="https://github.blog/changelog/2026-11-17-mai-code-2-and-mai-code-2-flash-in-github-copilot/">MAI Code 2 and MAI Code 2 Flash in GitHub Copilot</a></li>
<li><a href="https://www.unite.ai/microsoft-ai-releases-mai-code-2-and-mai-code-2-flash-for-enterprises/">Microsoft AI Releases MAI Code 2 and MAI Code 2 Flash for ...</a></li>

</ul>
</details>

**标签**: `#AI coding models`, `#model release`, `#Microsoft`, `#benchmarks`, `#LLM competition`

---

<a id="item-tech-news-4"></a>
### [哈佛研究：AI 编程代理把瓶颈转移到代码审查](https://complexdiscovery.com/harvard-researchers-find-ai-coding-agents-shifted-the-bottleneck-to-code-review/) ⭐️ 7.0/10

据 Complex Discovery 报道，哈佛研究人员发现，AI 编程代理已将软件开发的主要瓶颈从编写代码转移到审查代码。该报道未提供研究的具体方法、样本规模或所用模型版本，因此这一结论目前仍属研究团队的观察，而非经过独立复现的测量结果。报道同时引发了开发者社区对审查实践与代码归属的讨论。

hackernews · judahmeek · 11月17日 21:16 · [社区讨论](https://news.ycombinator.com/item?id=50538303)

**「研究背景」** 该结论源自一项针对 718 家公司的哈佛研究工作论文：采用 Claude Code、Cursor、Devin 等 AI 编程代理后，代码总行数平均增加约 30%，提交数增加 20%，拉取请求增加 23%，但拉取请求的审查时间上升了 49%，实际交付的软件量没有出现统计上显著的增长。换言之，代码产出指标上升并未转化为交付成果，审查环节吸收了新增的代码量。

**「对团队的影响」** 若瓶颈确实转向审查，团队的交付速度将更多取决于审查者的可用时间与判断力，而非编码产能。有评论者指出，当开发者不再亲手写代码、对代码缺乏归属感时，愿意且有能力做审查的人可能减少，这会使审查环节进一步承压。

**「社区讨论」** 有开发者表示自己整天都在审查 AI 写的代码，无论来自自己还是同事，并直言并不享受这一过程。另一些人认为这类研究滞后于实践，且常基于过时的模型得出结论；还有人提出应放弃逐次提交的 PR 审查，改为借助启发式方法对整个系统做持续审查，把精力集中在风险最高的代码上。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.ayautomate.com/blog/ai-coding-agents-code-review-bottleneck">AI Coding Productivity Study : 30% More Code , Flat Output</a></li>
<li><a href="https://pondero.ai/news/2026-10-12-harvard-jellyfish-code-review-bottleneck/">Harvard study of 718 firms finds AI coding agents &#x27; output... | Pondero</a></li>
<li><a href="https://www.aimodeling.com/en/news/slug/harvard-coding-agent-review-bottleneck">Harvard Study : AI Coding Agents +30% Code , +49% Merge Delay</a></li>

</ul>
</details>

**标签**: `#AI coding agents`, `#code review`, `#software engineering`, `#developer productivity`, `#research`

---

<a id="item-tech-news-5"></a>
### [SolidJS 发布 2.0，新增服务端 RPC 与实时广播能力](https://www.solidjs.com/blog/solid-2-0-the-long-hold/) ⭐️ 7.0/10

SolidJS 发布 2.0 版本，新增服务端 RPC 以及 live 和 broadcast 原语，并改进了调试诊断能力。该版本面向使用这一响应式 JavaScript UI 框架的前端开发者，属于正式发布的大版本更新。社区讨论中，有开发者称服务端 RPC 与 live、broadcast 的衔接“无缝”，比 LiveView 或 htmx/datastar 用起来更自然；也有人指出，官方宣传中“为 Agent 编写而设计”的改进本质上只是更好的调试诊断，对手写代码同样有帮助。

hackernews · pier25 · 11月17日 18:56 · [社区讨论](https://news.ycombinator.com/item?id=50536387)

**「背景」** Solid 2.0 距 Solid 1.0 发布已有五年，此次稳定版重写了响应式核心，使异步数据成为响应式图中的常规部分，并把服务端函数从 SolidStart 移入核心库、不再保留 SolidStart 作为独立元框架。Horizon 在 8 月 13 日的日报曾报道 Solid 2.0 RC 将 &quot;use server&quot; 作为核心特性，由 @solidjs/web/server-functions 提供带类型的 RPC、流式返回与自定义序列化；本次稳定版在此基础上正式落地。

**「对开发者的影响」** 从 Solid 1.0 升级到 2.0 需要迁移工作：一位评论者提到自己在几个月前基于 2.0 RC 写过迁移经验，说明升级并非完全无感。另有开发者指出，Solid 的组件库生态仍然不多，选型时需自行评估可复用组件的来源。

**「社区讨论」** 有评论者认为，Solid 在前后端之间“中间层”的方案比 Remix 当初的尝试更优雅；也有人表示，如果从零开始构建项目会尝试 Solid，并称它“感觉才是 React 应有的样子”。这些均为个人使用体验和主观评价，并非独立验证的结论。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.solidjs.com/blog/solid-2-0-rc-the-big-reveal/">Solid 2.0 RC: The Big - solidjs.com</a></li>
<li><a href="https://www.solidjs.com/blog/solid-2-0-the-long-hold/">Solid 2.0 - The Long Hold - solidjs.com</a></li>
<li><a href="https://codingislove.com/solid-2-0/">Solid 2.0 released: async reactivity, server functions, no ...</a></li>

</ul>
</details>

**标签**: `#javascript`, `#frontend-frameworks`, `#solidjs`, `#reactive-programming`, `#web-development`

---

<a id="item-tech-news-6"></a>
### [微软 ONNX Runtime 的 GitHub 仓库疑似下线](https://github.com/microsoft/onnxruntime) ⭐️ 7.0/10

微软的 ONNX Runtime GitHub 仓库（github.com/microsoft/onnxruntime）在 2026 年 11 月 17 日前后无法访问，目前没有官方说明解释原因。该仓库此前约有 2.2 万颗星，是机器学习推理领域广泛使用的开源项目。有社区成员指出，微软的 Agent Framework 仓库同样处于离线状态，并援引第三方博客称相关的 PyPI 包遭到入侵，但仓库下线与包被入侵之间是否存在因果关系尚未得到证实。

hackernews · nvader · 11月17日 23:18 · [社区讨论](https://news.ycombinator.com/item?id=50539610)

**「背景」** ONNX Runtime 是微软维护的开源机器学习推理运行时，在 GitHub 上拥有约 2.2 万颗星，被广泛用于在生产环境中运行 ONNX 格式模型。此次仓库下线没有官方说明，社区评论将其与微软 Agent Framework 的 PyPI 包被指遭供应链投毒、以及该框架仓库同样离线联系起来，但这些关联目前只是猜测，未获微软确认。

**「影响」** 依赖 ONNX Runtime 进行模型推理或训练加速的团队目前无法从 GitHub 获取源码、提交 issue 或拉取更新；有评论者称其流水线中的评测任务当天开始失败，且未收到任何提前通知。由于官方尚未说明原因，用户应暂缓基于该仓库的构建与升级，并留意已安装包与镜像的来源是否可信。

**「社区讨论」** 有评论者将此事与微软 Agent Framework 的 PyPI 包被入侵的报道联系起来，推测仓库下线可能是相关处置措施，但这一关联仅为猜测。另有用户称，其流水线中的评测任务当天早上开始失败，且此前没有收到任何预警。还有评论提到 ONNX 默认会收集应用遥测数据、除非自行从源码构建并关闭遥测否则无法退出，这一说法未在本次事件中得到核实。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://github.com/microsoft/onnxruntime">GitHub - microsoft /onnxruntime: ONNX Runtime : cross-platform, high...</a></li>
<li><a href="https://onnxruntime.ai/docs/">ONNX Runtime is a cross-platform machine-learning model accelerator</a></li>

</ul>
</details>

**标签**: `#open-source`, `#supply-chain-security`, `#onnx`, `#microsoft`, `#machine-learning`

---

<a id="item-tech-news-7"></a>
### [Quad9 退出法国：公共 DNS 解析器面临的法律压力](https://blog.cloudflare.com/quad9-withdrawal-from-france/) ⭐️ 7.0/10

Cloudflare 发布分析文章，讨论 Quad9 因法国的 DNS 封锁命令而退出该国，并将其视为对公共 DNS 解析器的警示信号。Quad9 首席技术官在评论中确认，他正在参加 IETF 127 会议，会上对其立场表示支持，同时与会者对 DNS 面临的处境普遍感到担忧。Cloudflare 在文中表达了反对意见，但未承诺采取具体行动。

hackernews · subset · 11月17日 22:13 · [社区讨论](https://news.ycombinator.com/item?id=50538994)

**「背景」** 据 CyberInsider 和 TorrentFreak 报道，瑞士非营利基金会 Quad9 在巴黎法院裁定其必须屏蔽被指传播未经授权体育转播的域名后，宣布将于 2026 年 11 月 24 日停止为法国用户提供解析服务，涵盖其安全过滤与通用 DNS 解析，成为第二家因此退出法国的公共 DNS 解析器。Cloudflare 的文章还提到，比利时法院近期发出命令，若 Cloudflare、Google 和 Cisco 不在 2027 年 1 月初前通过其公共解析器开始屏蔽网站，将面临高额处罚。

**「影响」** 对于在法国依赖公共 DNS 解析器的用户，Quad9 的退出意味着可选的解析服务减少，可能影响解析性能与隐私保护选择。其他公共 DNS 运营商需评估在类似法律压力下的合规与退出策略。

**「社区讨论」** 有评论者批评 Cloudflare 文章立场模糊，要求其明确承诺若上诉失败是否也会从受影响国家退出。另有评论者认为欧洲互联网自由在 2000 年代后出现倒退，并将原因归于过度监管。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://cyberinsider.com/quad9-to-leave-france/">Quad9 to leave France after court orders piracy-related DNS ...</a></li>
<li><a href="https://torrentfreak.com/dns-resolver-quad9-will-leave-france-after-court-orders-piracy-blocking-penalty/">DNS Resolver Quad9 Will Leave France After Court Orders ...</a></li>
<li><a href="https://blog.cloudflare.com/quad9-withdrawal-from-france/">Quad9’s withdrawal from France: A canary in the coal mine</a></li>

</ul>
</details>

**标签**: `#DNS`, `#internet policy`, `#privacy`, `#content blocking`, `#open internet`

---

<a id="item-tech-news-8"></a>
### [《Web Browser Engineering》从零构建浏览器的工程书再获讨论](https://browser.engineering/) ⭐️ 7.0/10

《Web Browser Engineering》是一本讲解如何从第一性原理构建 Web 浏览器的书，作者之一 pavpanchekha 在 Hacker News 讨论中说明，他与 Chris 于 2019 年开始写作，书稿在 2024 年底基本完成，并于 2025 年出版。作者强调书中内容完全没有由 AI 撰写，因为写作开始时相关 AI 工具尚不存在。该条目是这本书的再次转发，讨论中既有作者答疑，也有正在自行实现浏览器的开发者分享进展。

hackernews · ibobev · 11月17日 20:01 · [社区讨论](https://news.ycombinator.com/item?id=50537290)

**「背景」** 《Web Browser Engineering》由作者在讨论中说明于 2019 年开始撰写、2024 年底基本完成、2025 年出版，内容是从零开始实现浏览器的教学。该条目在 Hacker News 上属于再次被提交的旧资源，评论者 kuharich 列出了此前三次讨论的链接，说明这本书此前已在社区流传。

**「实际影响」** 对想理解浏览器内部机制的开发者而言，这本书提供了可跟随的从零实现路径；评论者 coreyp\_1 表示自己正用 C 编写图像格式读取、HTML/XML 与 CSS 解析、文本光栅化等底层库，并已接近布局引擎阶段，说明该书内容可直接对应到实际动手项目。

**「社区讨论」** 作者亲自参与答疑，并澄清了写作时间线与 AI 参与问题。评论者 kuharich 贴出了该书此前在 Hacker News 上的三次讨论链接，表明这是被反复关注的老资源；coreyp\_1 则分享了自建浏览器各模块的实践进度。

**标签**: `#web-browsers`, `#systems-programming`, `#education`, `#open-source`, `#software-engineering`

---

<a id="item-tech-news-9"></a>
### [面向编码代理的外部沙箱模式与三个实现](https://simonwillison.net/2026/Nov/17/external-sandboxes-for-coding-agents/) ⭐️ 7.0/10

Simon Willison 与 AI 研究实验室 Prime Radiant 合作，提出“外部沙箱”（external sandbox）模式：代理执行的代码运行在独立沙箱内，而代理本身位于沙箱之外。为演示该模式，他们发布了三个沙箱服务器实现：external-sandbox-v86 用 Node.js 服务器通过 v86 在 WebAssembly 中运行 Alpine Linux；external-sandbox-container 是 Python Web 服务器，在 Apple Containers 实例中运行 Alpine Linux；external-sandbox-quicksand 同样是 Python Web 服务器，使用微软的 Quicksand 库，该库将 QEMU 和 Alpine Linux 打包进一个 Python 包。三者提供相同的 localhost API，可将 Pi、Claude Code 或 Codex 配置为在需要执行代码时调用该沙箱。

rss · Simon Willison · 11月17日 22:52

**「背景」** 这一模式针对的是编码代理执行代码时的安全边界问题：代理本身运行在沙箱之外，而它生成的代码被送进独立沙箱执行，从而降低提示注入或误操作直接破坏宿主机的风险。作者 Simon Willison 与 Prime Radiant 合作完成该项目，后者是 Superpowers 等代理技能项目的开发方。

**「实际影响」** 沙箱内置可选的 HTTP/HTTPS 允许列表代理，用于限定代理代码可通信的主机，并提供凭据替换机制，使代理能在不持有密钥的情况下发起需认证的 API 调用；该代理策略可在沙箱运行期间通过界面重新配置。对希望试用本地模型的开发者而言，这意味着可以把代码执行与代理进程隔离，降低误操作或提示注入造成破坏的风险。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://github.com/obra/superpowers">GitHub - obra/ superpowers : An agentic skills framework &amp; software...</a></li>
<li><a href="https://ai4coding.ru/skills/obra-superpowers">Superpowers — агентная методология разработки...</a></li>

</ul>
</details>

**标签**: `#ai-agents`, `#sandboxing`, `#security`, `#prompt-injection`, `#local-models`

---

<a id="item-tech-news-10"></a>
### [Datasette Lite 用 Service Worker 在浏览器中运行完整 Datasette 应用](https://simonwillison.net/2026/Nov/17/datasette-lite/) ⭐️ 7.0/10

Simon Willison 发布了 Datasette Lite 的完整重写版本，改用 Service Worker 配合 Pyodide，在浏览器中运行完整的 Datasette Python 应用，作者称其效果已“几乎与真正的服务端应用无法区分”。通过 lite.datasette.io 上构造的 URL，用户可以加载 SQLite 数据库、JSON、CSV 或 SQL 脚本，从 PyPI 选择已发布的 Datasette 版本，加载 GitHub 仓库中的特定 commit、tag 或分支，从 100 多个 SQLite 版本中选择，并通过 PyPI 或 wheel 文件 URL 安装插件（包括 JavaScript 可视化插件）。旧版通过 Pyodide web worker 模拟请求、再用 innerHTML 注入 HTML，导致依赖 JavaScript 的功能失效；新版借助 Service Worker 解决了这一问题。

rss · Simon Willison · 11月17日 16:48

**「背景」** Datasette Lite 并非新项目：作者在 2022 年就发布了第一版，用 Pyodide 在浏览器里运行 Datasette。早期实现依赖 Web Worker 模拟请求，再把生成的 HTML 通过 innerHTML 注入页面，因此任何依赖 JavaScript 的功能都无法执行，插件也加载不了。此次重写改用 service worker 直接拦截并响应请求，让完整的 Datasette ASGI 应用在 Pyodide 中运行，从而保留正常的脚本执行。

**「实际影响」** 对开发者而言，这意味着可以用一条链接复现 bug 或演示开发中的功能，无需部署 Web 服务器；作者本人已在 Datasette 的 issue 中用 ?ref=1.0a42 与 ?ref=1.0a43 的链接对比分页 bug 的修复前后。使用时需注意，通过 &amp;url= 加载的数据库等文件必须带有开放的 CORS 响应头，作者建议用 Gist 托管这类文件。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://devblogs.co/posts/running-python-asgi-apps-in-the-browser-via-pyodide-a-service-worker">Running Python ASGI apps in the browser via Pyodide + a service ...</a></li>
<li><a href="https://simonw.github.io/research/pyodide-asgi-browser/datasette.html">Datasette in the browser</a></li>

</ul>
</details>

**标签**: `#webassembly`, `#pyodide`, `#service-workers`, `#datasette`, `#browser-python`

---

<a id="item-tech-news-11"></a>
### [美国多起技术故障被指源于批量推送 AI 发现的漏洞补丁](https://www.solidot.org/story?sid=85918) ⭐️ 7.0/10

据奇客 Solidot 报道，过去几天美国接连出现技术故障，包括全国航班停飞、银行在线服务中断，以及 NSA 一个机密通信网络瘫痪。华尔街高管和 NSA 向美国国会议员表示，起因是 AI 模型在系统中识别出大量漏洞后，为尽快修复而一次性推送了大批补丁，超出系统的设计承载能力。报道同时指出，摩根大通周一将银行服务中断归咎于软件相关 bug，NSA 周二则将部分网络短暂性能下降归咎于例行维护，与前述归因并不完全一致。该报道篇幅简短，未说明所用 AI 工具、补丁流程或故障的具体技术细节。

rss · 奇客 Solidot · 11月18日 07:19

**「背景」** 据 Politico 和 NBC News 等媒体报道，2026 年 11 月美国在约六天内接连发生多起重大技术故障，涉及 Microsoft、FAA、银行和 NSA 等机构，各方对原因的解释并不一致。网络安全研究者对媒体表示，现有计算机系统本身较为脆弱、容易发生故障，而 AI 的引入并未缓解这一问题。

**「影响与关注点」** 若这一归因成立，受影响的是依赖集中式补丁发布的基础设施运营方：漏洞修复的节奏需要与系统的变更承载能力匹配，否则修复本身可能成为故障源。由于摩根大通和 NSA 给出了不同解释，相关结论目前仍属向议员陈述的说法，尚待进一步核实。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.politico.com/news/2026/11/17/tech-outages-2026-nsa-faa-apple-what-we-know-01170887">6 major outages in 6 days: From Outlook to the NSA, what we ...</a></li>
<li><a href="https://www.masslive.com/news/2026/11/why-does-everything-keep-going-down-every-major-us-tech-outage-in-november.html">November 2026 outages: Microsoft, FAA, banks and NSA ...</a></li>
<li><a href="https://www.nbcnews.com/tech/security/microsoft-faa-chase-nsa-week-major-outages-tech-plan-conspiracy-down-rcna609876">Microsoft, FAA, Chase, NSA: What’s behind a week of major outages</a></li>

</ul>
</details>

**标签**: `#AI security`, `#vulnerability patching`, `#infrastructure reliability`, `#incident report`, `#software engineering`

---

<a id="item-tech-news-12"></a>
### [随机实验：Google AI Overviews 令外链点击减少约四成](https://www.solidot.org/story?sid=85916) ⭐️ 7.0/10

一项随机实验 reportedly 发现，Google 的 AI Overviews 使流向外部网站的搜索点击量减少约 40%。研究对部分美国桌面端用户隐藏了 AI Overviews，再与正常看到该功能的美国用户对比搜索行为，得出上述差异。DataForSEO 跟踪的美国搜索关键词中，超过五成会显示 AI Overviews，而一年前这一比例仅为 6%；用户看到 AI 答案后通常不再点击相关链接，AI 答案给网站带去的流量仅占其总流量的 0.3%。该报道为简短二手摘要，未提供实验方法细节或原始研究链接，因此具体结论仍需以原始研究为准。

rss · 奇客 Solidot · 11月18日 06:36

**「背景」** 此前已有针对 AI Overviews 的随机对照实验：2026 年 4 月发表的一项实地实验通过自定义 Chrome 扩展，将用户随机分配到带 AI Overviews 的标准搜索或不带该功能的版本，发现触发查询上的自然点击减少约 38%，而用户体验评分基本不变。Horizon 2026 年 11 月 2 日的日报也曾报道，Reddit 财报显示来自 Google 搜索的引荐流量显著下滑，其 CEO 将原因归于 Google 向 AI Mode 和 AI Overviews 的转型。此次报道的 40% 点击降幅与 0.3% 流量占比，是在这一已有因果证据基础上的进一步量化。

**「对网站的影响」** 对依赖 Google 搜索获取访问量的网站和发布者而言，这项实验意味着即使关键词排名不变，来自搜索的外链点击也可能明显减少；报道给出的 0.3% 流量占比进一步说明 AI 答案本身难以替代原有导流。由于来源未披露实验样本、时间范围和统计口径，网站运营方在据此调整流量预期前，应先核对原始研究。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.searchenginejournal.com/ai-overviews-cut-organic-clicks-38-field-study-finds/573145/">Study Confirms Google AI Overviews Cut Organic Clicks 38%</a></li>
<li><a href="https://papers.ssrn.com/sol3/papers.cfm?abstract_id=6513059">The Impact of Google AI Overviews on Publisher Traffic and ...</a></li>
<li><a href="https://www.solidot.org/story?sid=85767">2026-11-02 — Reddit 财报证实 Google AI Mode 切断网站引荐流量</a></li>

</ul>
</details>

**标签**: `#AI Overviews`, `#search`, `#web traffic`, `#publishing`, `#Google`

---

<a id="item-tech-news-13"></a>
### [灵晟蝉联 Top500 榜首，成为首个纯 CPU 突破 2 Exaflops 的系统](https://www.solidot.org/story?sid=85913) ⭐️ 7.0/10

2026 年 11 月 Top500 榜单显示，深圳国家超算中心的灵晟以 2.198 Exaflop/s 的 HPL 性能连续第二次排名第一，成为榜单中首个仅靠 CPU 持续实现双精度浮点性能超过 2 Exaflops 的系统。灵晟采用 304 核的 LX2 CPU，总计 1379 万个核心，主频 1.55 GHz，运行麒麟操作系统，功耗 42.2 兆瓦。本期前十名与上期完全一致，依次包括 El Capitan（1.809 Exaflop/s）、Frontier（1.353 Exaflop/s）、Aurora（1.012 Exaflop/s）和 JUPITER Booster（1 Exaflop/s）等。榜单仅收录 27 套新系统，为历史最低更替率；新上榜系统中排名最高的是韩国汉江，位列第 12，性能 342.6 Petaflop/s。

rss · 奇客 Solidot · 11月17日 09:54

**「背景」** 灵晟（LineShine）是部署在深圳国家超算中心的百亿亿次（Exascale）级超算，基于 LingKun 架构和 LX2 CPU，于 2026 年上半年投入运行。据维基百科条目和 DataCenterDynamics 报道，它在 2026 年 6 月的 Top500 榜单中以 2.198 Exaflop/s 的 HPL 性能首次登顶，超过美国的 El Capitan；本次 11 月榜单是它第二次位居第一。

**「影响」** 对 HPC 采购与部署方而言，本期榜单显示头部格局稳定、新系统进入门槛提高，短期内排名变化更多取决于既有系统的调优而非新机上线。灵晟的纯 CPU 路线也提供了一个可对照的能效与架构样本：42.2 兆瓦功耗对应 2.198 Exaflop/s，可与采用 GPU 加速的前列系统直接比较。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/LineShine">LineShine - Wikipedia</a></li>
<li><a href="https://www.datacenterdynamics.com/en/news/lineshine-all-cpu-chinese-supercomputer-named-worlds-most-powerful/">LineShine: All-CPU Chinese supercomputer named world&#x27;s most ...</a></li>

</ul>
</details>

**标签**: `#supercomputing`, `#Top500`, `#hardware`, `#HPC`, `#AI compute`

---

<a id="item-tech-news-14"></a>
### [日本理研富岳超算遭非法访问暂停运行](https://www.solidot.org/story?sid=85911) ⭐️ 7.0/10

日本理化学研究所（RIKEN）宣布，超级计算机“富岳”的运行系统遭到外部非法访问，已暂停富岳运行，恢复时间未定。遭入侵的是用户申请使用富岳时需连接的系统，用户信息可能已经外泄，受害范围取决于用户登记的个人信息数量。理研目前仍在调查非法访问发生的时间及被发现经过。富岳除供大学等研究机构使用外，产业界也可使用。

rss · 奇客 Solidot · 11月17日 08:35

**「背景」** 富岳是日本理化学研究所计算科学研究中心（R-CCS）运营的旗舰超级计算机，除大学等研究机构外，产业界用户也可申请使用。据理研公告，11 月 12 日外部第三方对参与富岳运行的一个系统实施了非法访问，11 月 13 日得到确认，调查发现用户存储的文件可能受影响。此次事件与近期其他基础设施安全事件并无直接关联，但同属外部未授权访问导致服务中断的情形。

**「影响」** 富岳暂停运行意味着依赖该超算的大学研究机构和产业界用户暂时无法提交或执行计算任务，且恢复时间未定。由于被入侵系统涉及使用申请，登记过个人信息的用户需关注理研后续的调查结论与通知。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.riken.jp/en/news_pubs/news/2026/20261116_2/index.html">Notice regarding a possible personal information leak ... - Riken</a></li>
<li><a href="https://www3.nhk.or.jp/nhkworld/news/20261116de76835/">Japan&#x27;s supercomputer suffers unauthorized access</a></li>
<li><a href="https://mainichi.jp/english/articles/20261116/p2g/00m/0bu/027000c">Japan&#x27;s Fugaku supercomputer hit by unauthorized access</a></li>

</ul>
</details>

**标签**: `#security`, `#supercomputing`, `#Fugaku`, `#incident`, `#research infrastructure`

---

<a id="item-tech-news-15"></a>
### [arXiv 预印本提出“程序即权重”编程范式](https://arxiv.org/abs/2607.02512) ⭐️ 7.0/10

一篇 arXiv 预印本（编号 2607.02512）提出名为“程序即权重”（program-as-weights）的编程范式，面向模糊函数（fuzzy functions）。目前可获取的信息仅为论文链接，缺少摘要、技术细节与实验结果，因此该范式的具体机制、适用条件和效果均无法核实。

rss · Lobsters · 11月17日 12:55

**「背景」** 该预印本提出的 PAW 方案中，一个 4B 规模的编译器在作者发布的 1000 万样本数据集 FuzzyBench 上训练，为冻结的轻量级解释器生成参数高效适配器，使模糊函数被一次性编译成小型神经二进制文件并在本地执行。这一思路与近期关于直接读写神经网络权重的讨论相关：Horizon 2026 年 11 月 4 日的日报曾报道，有研究者将小型游戏策略网络的原始浮点权重作为提示词输入，测试大模型能否识别网络训练的任务，但那只是单例博客演示而非严格基准。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://arxiv.org/abs/2607.02512">[2607.02512] Program-as-Weights: A Programming Paradigm for ...</a></li>
<li><a href="https://arxiv.org/pdf/2607.02512">Program-as-Weights: A Programming Paradigm for Fuzzy Functions</a></li>
<li><a href="https://simonwillison.net/2026/Nov/3/qwen-can-interpret-model-weights/">2026-11-04 — Qwen 3.8 27B 在笔记本上也能解读模型权重</a></li>

</ul>
</details>

**标签**: `#programming paradigms`, `#machine learning`, `#fuzzy functions`, `#research preprint`

---

<a id="item-tech-news-16"></a>
### [用 E-Graph 自动检查编译器正确性](https://stng.substack.com/p/automatic-checking-of-compiler-correctness) ⭐️ 7.0/10

该条目仅指向一篇关于用 E-Graph 自动检查编译器正确性的技术文章，并附有 Lobsters 评论链接，未包含文章正文。因此，文章提出的具体方法、所针对的编译器、版本、实验数据或可用性条件均无法从现有材料中核实。目前只能确认其主题属于编译器与形式验证交叉领域，尚不能判断这是已实现并验证的工具，还是方法性讨论或厂商主张。

rss · Lobsters · 11月17日 18:18

**「背景」** e-graph 是一种数据结构及配套算法，用于高效探索代数表达式的多种等价写法，此前已被用于程序验证和程序优化。据工具结果中该系列文章的说明，这篇新文章是同一系列中在介绍 e-graph 之后的续篇，主题转向用 e-graph 自动检查编译器正确性。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://stng.substack.com/p/automatic-checking-of-compiler-correctness">Automatic Checking of Compiler Correctness with E-Graphs</a></li>

</ul>
</details>

**标签**: `#compilers`, `#e-graphs`, `#formal verification`, `#programming languages`

---

<a id="item-tech-news-17"></a>
### [Red Hat Quay 被曝严重漏洞：可读取并覆盖私有镜像](https://thehackernews.com/2026/11/critical-red-hat-quay-flaw-lets.html) ⭐️ 7.0/10

有报道称 Red Hat Quay 存在一个严重漏洞，攻击者可借此读取并覆盖某个镜像仓库中的全部私有容器镜像。但所提供的来源内容仅包含一个指向评论页的链接，没有给出 CVE 编号、受影响版本、技术细节或修复与缓解指引，因此目前无法核实漏洞的具体机制和影响范围。该报道的标题性描述尚未得到独立确认，相关用户应等待 Red Hat 的官方安全公告后再评估处置方案。

rss · Lobsters · 11月17日 14:38

**「背景」** Red Hat Quay 是用于托管和分发容器镜像的私有镜像仓库，其默认配置允许匿名访问。据 The Hacker News 报道，当匿名访问保持开启时，攻击者无需任何账户即可利用该漏洞读取并覆盖所有仓库中的私有镜像。目前公开信息尚未给出 CVE 编号、受影响版本或修复方案。

**「影响」** 该漏洞被追踪为 CVE-2026-2377，影响 Red Hat Quay 以及 Mirror Registry for Red Hat OpenShift。由于来源内容未提供受影响版本范围、修复版本或缓解措施，运维方应直接查阅厂商公告与参考链接，确认自身部署是否在受影响范围内并获取补丁指引。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://thehackernews.com/2026/11/critical-red-hat-quay-flaw-lets.html">Critical Red Hat Quay Flaw Lets Attackers Read and Overwrite ...</a></li>
<li><a href="https://www.strix.ai/cve/CVE-2026-2377">CVE-2026-2377: A flaw was found in Red Hat Quay and mirror registry...</a></li>

</ul>
</details>

**标签**: `#security`, `#container-registry`, `#red-hat-quay`, `#supply-chain`, `#vulnerability`

---

<a id="item-tech-news-18"></a>
### [Valve 发布新版 AMDGPU 内核补丁，瞄准 Steam Play 游戏卡顿](https://www.phoronix.com/news/AMDGPU-Sparse-Gaming-Valve) ⭐️ 7.0/10

Valve Linux 图形驱动团队的 Natalie Vock 于 11 月 17 日发出了新版 AMDGPU 内核驱动补丁，目标是让部分较新的 Windows 游戏通过 Steam Play（Proton）在 Linux 上运行时出现“显著减少的卡顿”。目前公开信息仅来自补丁提交说明，尚未给出具体实现细节、性能数据或合入主线的时间表，因此这仍属于待评审的补丁而非已落地的能力。

rss · Phoronix · 11月17日 14:05

**「背景」** 这批补丁由 Valve 的 Natalie Vock 提交，是一组共十个补丁的 AMDGPU 稀疏绑定（sparse binding）重做，目标是避免稀疏内存更新阻塞 GPU 的渲染队列——这被认为是 Proton 运行较新 Windows 游戏时出现卡顿的一个已知来源。Vock 此前也参与过 Linux 显存管理改进工作，相关改动已随内核 7.3 及后续版本推进。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://hwbusters.com/news/valves-amdgpu-sparse-binding-rework-targets-stutter-in-proton-games/">Valve &#x27;s AMDGPU Sparse Binding Rework Targets Stutter in Proton...</a></li>
<li><a href="https://www.gamingonlinux.com/2026/08/linux-vram-management-set-for-more-improvements-with-kernel-7-3/">Linux VRAM management set for more... | GamingOnLinux</a></li>

</ul>
</details>

**标签**: `#Linux`, `#AMDGPU`, `#Valve`, `#Proton`, `#graphics drivers`

---

## 财经新闻

<a id="item-finance-news-1"></a>
### [工信部委托中汽协评估 17 家车企 60 天账期](http://www.caam.org.cn/chn/5/cate_68/con_5237404.html) ⭐️ 7.0/10

中国汽车工业协会 11 月 16 日发布通知称，受工信部委托作为第三方机构，对一汽、上汽、比亚迪、理想、蔚来、小鹏、小米汽车、零跑等 17 家重点车企的供应商账款支付情况开展调研评估，核查对中小企业的 60 天账期是否落地，并要求非中小企业以现金和银行承兑汇票支付的比例不低于 80%。

telegram · zaihuapd · 11月18日 01:15

**「背景」** 2025 年 6 月，17 家重点车企响应国务院修订后的《保障中小企业款项支付条例》，公开承诺供应商支付账期不超过 60 天；同年 9 月，中汽协发布《汽车整车企业供应商账款支付规范倡议》，明确 60 天账期的起算时间，相关车企相继表态落实。

**「影响」** 此次评估直接关系到向这 17 家车企供货的零部件供应商，尤其是中小企业：若核查确认 60 天账期落地，其回款周期和现金流将受到直接影响。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://m.bjnews.com.cn/detail/1757938284168209.html">中 汽 协 明确“ 60 天 账 期 ” 支 付 规范， 17 家 车 企 响 应</a></li>
<li><a href="https://news.qq.com/rain/a/20260212A06GZY00">中 汽 协 ：绝大多数重点 车 企 已把 账 期 压缩至 60 ...</a></li>
<li><a href="https://news.qq.com/rain/a/20250829A029G000?suid=&amp;media_id=">车 企 “ 60 天 账 期 ”执行 现 状 调查报告：四大问题亟待改进_腾讯新闻</a></li>
<li><a href="https://www.bjnews.com.cn/detail/1756431636168405.html">车 圈圆桌派｜ 车 企 “ 60 天 账 期 ”承诺兑 现 落地要闯几道难关？ — 新京报</a></li>
<li><a href="https://info.10000link.com/newsdetail.aspx?doc=2025090390003">不足两成！ 车 企 “ 60 ...”</a></li>

</ul>
</details>

**标签**: `#auto industry`, `#supply chain finance`, `#payment terms`, `#industrial policy`, `#China`

---

<a id="item-finance-news-2"></a>
### [美国芯片新规致 4.8 亿美元字节跳动 GPU 贷款暂停](https://www.bloomberg.com/news/articles/2026-11-17/banks-pause-480-million-chip-loan-tied-to-china-s-bytedance) ⭐️ 7.0/10

美国最新 AI 芯片管制出台后，五家评估贷款的银行暂停推进一笔 4.8 亿美元融资，该融资原计划为字节跳动在马来西亚的数据中心采购英伟达先进 GPU。借款方为新加坡云服务商 Aolani Cloud，星展集团担任牵头安排行；Aolani 表示正与监管机构及融资伙伴评估新规以确保合规，银行业者称在全面评估新规前这笔融资难有进展。

telegram · zaihuapd · 11月18日 05:11

**「背景」** 美国商务部对 AI 芯片的出口管制按国家安全风险把国家分级，马来西亚属于中间层级，先进芯片可在当地进口和运行，不受针对中国、俄罗斯或伊朗的直接限制。字节跳动此前与新加坡云服务商 Aolani Cloud 合作，在马来西亚建设 AI 数据中心，涉及约 3.6 万颗英伟达 Blackwell B200 芯片，投资规模超过 25 亿美元。

**「影响」** 若融资持续冻结，字节跳动在马来西亚数据中心获取英伟达先进 GPU 的计划可能延后，为其提供云服务的相关项目进度也将受影响。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://abhs.in/blog/bytedance-36000-nvidia-b200-chips-malaysia-us-export-controls-2026">ByteDance Routes 36,000 Nvidia B200 Chips Through Malaysia to...</a></li>
<li><a href="https://www.linkedin.com/posts/swipeline_bytedance-has-partnered-with-aolani-cloud-activity-7438223192789344257-zlz-">ByteDance invests $2.5B in Malaysia AI data center with Nvidia ...</a></li>
<li><a href="https://www.crowdbyte.ai/topics/bytedance-builds-massive-ai-supercluster-in-malaysia-with-nvidia-chips">ByteDance Builds Massive AI Supercluster in Malaysia with NVIDIA ...</a></li>
<li><a href="https://www.zerohedge.com/ai/first-domino-falls-us-ai-chip-crackdown-freezes-480-loan-linked-chinas-bytedance">First Domino Falls: US AI Chip Crackdown Freezes $480MM Loan ...</a></li>

</ul>
</details>

**标签**: `#US chip export controls`, `#ByteDance`, `#GPU financing`, `#bank lending`, `#AI data centers`

---