---
layout: default
title: "Horizon Summary: 2026-11-04 (ZH)"
date: 2026-11-04
lang: zh
---

> 从 142 条内容中筛选出 16 条重要资讯。

---

**科技新闻**
1. [《PostgreSQL 内部原理》在线书再获关注](#item-tech-news-1) ⭐️ 8.0/10
2. [Qwen 3.8 27B 在笔记本上也能解读模型权重](#item-tech-news-2) ⭐️ 8.0/10
3. [Postman 被指静默安装 AI 插件并尝试共享全部 API 数据](#item-tech-news-3) ⭐️ 8.0/10
4. [币安披露黑客借虚假面试与篡改安装包入侵工程师设备](#item-tech-news-4) ⭐️ 8.0/10
5. [NIKKE PC 启动器被指遭供应链投毒植入远控](#item-tech-news-5) ⭐️ 8.0/10
6. [Stringman：800 美元的开源房间级线缆驱动机器人](#item-tech-news-6) ⭐️ 7.0/10
7. [C++26 未获批准，社区质疑 Contracts 与语言复杂度](#item-tech-news-7) ⭐️ 7.0/10
8. [在任意规模下运行 Mac：iOS 构建基础设施的实践](#item-tech-news-8) ⭐️ 7.0/10
9. [纽约时报等出版商起诉 Brave 绕过付费墙并向 AI 公司提供内容](#item-tech-news-9) ⭐️ 7.0/10
10. [InfoQ 报道称 Codex 11 天生成 13.9 万行内核并启动 Rocky Linux 10](#item-tech-news-10) ⭐️ 7.0/10
11. [Anthropic 团队零 Rust 经验，借 Claude 重构核心 API](#item-tech-news-11) ⭐️ 7.0/10
12. [Postgres 19 拟内置 REPACK 在线清理表膨胀](#item-tech-news-12) ⭐️ 7.0/10
13. [StateBench：评估语言模型长文档状态追踪能力](#item-tech-news-13) ⭐️ 7.0/10
14. [腾讯混元 Hy4 发布，首次引入视觉与电脑操作能力](#item-tech-news-14) ⭐️ 7.0/10

**财经新闻**
1. [美国 2026 年中期选举：民主党赢下参众两院](#item-finance-news-1) ⭐️ 8.0/10
2. [韩国拟拨款 4.7 万亿韩元开发主权 AI 模型](#item-finance-news-2) ⭐️ 7.0/10

---

## 科技新闻

<a id="item-tech-news-1"></a>
### [《PostgreSQL 内部原理》在线书再获关注](https://www.interdb.jp/pg/index.html) ⭐️ 8.0/10

《The Internals of PostgreSQL》是一本详细讲解 PostgreSQL 内部架构的在线书籍，此次在 Hacker News 上被重新分享，并非新发布内容。讨论中，读者指出可重点阅读 HoT 更新路径，并结合 zHeap 与 TOAST 的实现说明来建立对 PostgreSQL 行为边界的整体理解。另有评论提到，书中第 12 章（全文检索）在 PostgreSQL 18 下已悄然变化：FTS 改为通过集群默认排序规则提供方读取字典和配置，而不再固定使用 libc，因此使用 ICU 或新的内置 PG\_UNICODE\_FAST 的集群可能在 FTS 和 pg\_trgm 上看到不同行为，发布说明明确要求在 pg\_upgrade 后重建相关索引。评论还提到，18 版中非确定性排序规则下的 LIKE 不再报错。

hackernews · ibobev · 11月3日 21:51 · [社区讨论](https://news.ycombinator.com/item?id=50358702)

**「背景」** 《The Internals of PostgreSQL》是 Hironobu Suzuki 自 2018 年起在 interdb.jp 上持续维护的在线技术文档，面向数据库管理员和系统开发者讲解 PostgreSQL 的内部机制。此次在 Hacker News 上重新出现的是这份长期存在的资料，而非新版本发布；讨论中 dang 列出了该链接此前在 2019 年、2022 年和 2025 年 3 月被多次分享的记录。

**「对使用非 libc 排序规则的集群的影响」** 对于默认使用 ICU 或 builtin 等非 libc 排序规则提供者的集群，PostgreSQL 18 的全文检索函数和 pg\_trgm 扩展可能表现出与以往不同的行为，因为 FTS 现在通过集群的默认排序规则提供者读取字典和配置。PostgreSQL 18 发布说明建议在 pg\_upgrade 之后重建相关索引，以规避排序规则差异带来的不一致。

**「社区讨论」** 有评论者建议跳过通读、直接看 HoT 更新路径一节，再读 zHeap 和 TOAST 的实现说明，以形成对 PostgreSQL 能力与局限的心智模型；也有人指出书中未涵盖新的 MVCC 方案，并指向 OrioleDB。关于 PostgreSQL 18 的 FTS 与排序规则变化，评论者提醒升级后需重建相关索引，并称非确定性排序规则下的 LIKE 不再报错。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.interdb.jp/pg/">interdb . jp /pg</a></li>
<li><a href="https://e-booksdirectory.com/listing.php?category=427">PostgreSQL - Free Books at EBD</a></li>
<li><a href="https://www.postgresql.org/docs/release/18.0/">Release Notes - PostgreSQL</a></li>

</ul>
</details>

**标签**: `#postgresql`, `#databases`, `#database-internals`, `#mvcc`, `#technical-reference`

---

<a id="item-tech-news-2"></a>
### [Qwen 3.8 27B 在笔记本上也能解读模型权重](https://simonwillison.net/2026/Nov/3/qwen-can-interpret-model-weights/) ⭐️ 8.0/10

Simon Willison 复现了 Rikiya Takehi 等人“Weight-Space Programming”博文中的实验：把四个小型网格游戏（Breakout、Pong、Pac-Man、Freeway）策略网络的原始浮点权重直接作为提示词输入，要求模型在不使用任何工具的情况下判断网络训练的是哪个游戏。他在笔记本上以 17GB 的 Q4\_K\_M 量化版本运行 Qwen 3.8 27B，经 LM Studio 和 llm-lmstudio 插件、把上下文窗口调大并延长超时后，模型用 46 分 12 秒、43,506 个推理 token 识别出 Pac-Man，自报置信度 72%，随后又识别出 Pong。作为对照，Kimi K3.1 Pro 通过 OpenRouter 用 9 分 41 秒、19,493 个推理 token 猜中 Breakout。这只是一次博客式的单例演示，并非严格基准测试；原论文本身也被作者归类为“博文”。

rss · Simon Willison · 11月3日 16:29 · [社区讨论](https://news.ycombinator.com/item?id=50355251)

**「背景」** Simon Willison 测试所依据的是 Rikiya Takehi 等人于 2026 年 11 月初发布的《Sparks of Weight-Space Programming》，该文提出“权重空间编程”（Weight-Space Programming）一词，指通用 LLM 不借助梯度下降或训练循环，直接读取、解释并改写另一个神经网络的原始权重。论文的核心演示是 GPT-6 Astra 仅修改 Qwen3.5-0.8B 约 0.016% 的权重，就把 MATH-500 从 7.9% 提升到 48.1%，但作者自己将其归类为“博客文章”式的论文，且 spaCy 作者 Matthew Honnibal 等人批评其把“无工具读权重”与“借助代码改权重”混为一谈。Willison 的测试正是取自该论文 GitHub 仓库 exp1\_which\_game 中四个 10x10 网格游戏（Breakout、Pong、Pac-Man、Freeway）的提示词，这些提示词除权重外完全相同。

**「实际影响」** 对本地部署者而言，这一演示说明无需工具、仅凭原始权重文本进行推理在消费级硬件上已可复现，但代价是极长的推理时间：Qwen 3.8 27B 在笔记本上耗时 46 分 12 秒、消耗 43,506 个推理 token 才给出 Pac-Man 判断，且需将上下文窗口调至 8192 以上并延长超时。同时，spaCy 作者 Matthew Honnibal 批评原论文把“无工具读权重”与“借助代码改权重”混为一谈，Sean Goedecke 也认为 Qwen3.5-0.8B 的改进案例只是重复了人类研究者会采取的步骤，因此这类结果目前更适合作为探索性演示而非可依赖的能力指标。

**「社区讨论」** 有评论者借用《亨利四世》中“我能召唤深渊中的幽灵”的台词质疑：模型给出的解释是否真的正确，而非看似合理。一位自称从事机制可解释性研究的网友认为原博文确有夸大，指出关键结果与提升 Qwen 数学能力无关，只是减少了推理循环。另有评论追问 Qwen 3.8 能否修改自身权重，以及已知神经元、引导向量和 LoRA 在其中扮演什么角色，并建议用“让模型调权重画出骑自行车的鹈鹕”作为新基准。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Weight-space_programming">Weight-space programming - Wikipedia</a></li>
<li><a href="https://elsolitario.org/en/2026/11/02/mit-csail-astra-edits-0-016-of-qwen3-weights/">Weight-Space Programming: How Astra Edits Weights</a></li>
<li><a href="https://simonwillison.net/2026/Nov/3/qwen-can-interpret-model-weights/">Qwen 3 .8 27 B on my laptop can interpret model weights , too</a></li>
<li><a href="https://honnibal.dev/blog/astra-read-write-misleading">The &#x27;Astra can read and write weights to improve Qwen &#x27; post is...</a></li>

</ul>
</details>

**标签**: `#LLM interpretability`, `#model weights`, `#local models`, `#Qwen`, `#research`

---

<a id="item-tech-news-3"></a>
### [Postman 被指静默安装 AI 插件并尝试共享全部 API 数据](https://github.com/postmanlabs/postman-app-support/issues/14370) ⭐️ 8.0/10

一个 Postman GitHub 支持仓库的 issue 指控该工具静默安装 AI 插件，并尝试共享用户的 API 数据，在开发者社区引发大量讨论。该指控目前来自 issue 提交者和评论者，尚无独立验证或 Postman 官方回应作为佐证。讨论同时涉及遥测、隐私合规和工具臃肿等问题。

hackernews · sidgarimella · 11月3日 17:22 · [社区讨论](https://news.ycombinator.com/item?id=50354960)

**「背景」** 该问题指向 Postman 桌面版 12.33.4：据 GitHub issue \#14370 的记录，打开应用后触发了 \`auto-existing-upgrade\`，日志显示 \`claude-code:installed\` 与 \`codex:installed\`，即向 Codex 和 Claude Code 安装了插件，并写入了自身启动钩子的信任记录。相关报道还提到同时出现用户级 Postman 插件、远程 MCP 连接和单独安装的 Postman CLI。上述细节来自 issue 提交者与外部报道，尚未见 Postman 官方确认或独立验证。

**「对使用者的实际影响」** 若该问题中的指控成立，使用 Postman 的团队需要重新评估其数据流向：评论者称，通过 \`\{\{some\_secret\}\}\` 模板填入的查询参数会以明文内容发送到 Postman 服务器，且阻断该日志端点会导致应用无法正常工作。已有医疗行业从业者表示其安全团队因此取消了 Postman 的使用资格并迁移到 Bruno，而 Bruno 将请求集合以纯文本形式保存在本地文件系统并支持纳入 Git 管理。需要注意的是，这些均为 GitHub issue 与评论中的说法，尚无独立验证；Postman 官方博客则于 2026 年 5 月宣称已获得 HIPAA 合规认证。

**「社区讨论」** 有评论者称 Postman 会记录每次 API 请求的详细信息，包括查询参数，即使用模板变量填入的密钥也会以实际内容发送到其服务器，且屏蔽该日志端点会导致应用无法正常工作；该评论者表示是在调查 HIPAA 合规性时发现此问题，并认为 Postman 不合规。另有医疗行业从业者称其网络安全团队因此取消了 Postman 的使用资格，团队转而采用 Bruno；也有评论者批评 Postman 变得缓慢臃肿，并提到 Bruno 可将请求定义存入 Git。这些均为个人经验陈述，未经独立核实。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://github.com/postmanlabs/postman-app-support/issues/14370">[SEVERE] Desktop auto-installs Codex/Claude plugins ... - GitHub</a></li>
<li><a href="https://aiweekly.co/alerts/postman-desktop-silently-installs-plugins-into-codex-claude-code">Postman Desktop Silently Installs Plugins Into Codex, Claude ...</a></li>
<li><a href="https://explainx.ai/blog/postman-desktop-auto-installs-codex-claude-code-plugins-self-approved-hook-issue-14370-2026">Postman Auto-Installs Codex and Claude Code Plugins: What to ...</a></li>
<li><a href="https://github.com/kapami/usebruno-bruno">GitHub - kapami/usebruno-bruno: Opensource IDE For Exploring ...</a></li>
<li><a href="https://www.usebruno.com/">Bruno - The Git-Native API Client</a></li>
<li><a href="https://blog.postman.com/postman-is-hipaa-compliant/">Postman is HIPAA-Compliant | Postman Blog</a></li>

</ul>
</details>

**标签**: `#privacy`, `#security`, `#developer-tools`, `#api-testing`, `#open-source`

---

<a id="item-tech-news-4"></a>
### [币安披露黑客借虚假面试与篡改安装包入侵工程师设备](https://www.solidot.org/story?sid=85789) ⭐️ 8.0/10

币安官方博客发布初步调查报告，称攻击者通过篡改的 Homebrew 安装程序、虚假求职面试和零日恶意软件，入侵钱包团队工程师的笔记本电脑，并最终触及钱包签名操作。报告给出的时间线是：2026 年 6 月，工程师 A 在搜索下载一款热门 AI 编程工具时安装了被篡改的 Homebrew 安装包，安全团队发现异常后更换设备并轮换凭证，但工程师 A 及其钱包基础设施同事的信息已暴露；9 月，工程师 B 在正规求职平台被冒充项目总监者联系，经过两轮视频与聊天面试后被要求下载含恶意代码的“作业”仓库，终端安全工具未能检出该零日恶意软件；10 月 20 日，攻击者借工程师 B 的设备通过内部 AI 工具控制另外两名工程师的设备，并发现工程师 A 电脑上存有容器部署权限令牌；10 月 30 日凌晨，攻击者用窃得凭证部署容器并执行恶意脚本，发起此次攻击。报告称黑客窃取了价值 63 亿美元的加密货币，但这是币安的单方面初步说法，尚未见独立验证。

rss · 奇客 Solidot · 11月4日 06:07

**「背景」** 币安此次披露的是针对一起大规模加密货币窃取事件的初步调查报告，报告按时间线还原了从 2026 年 6 月供应链投毒到 10 月 30 日渗透钱包签名操作的完整攻击链。外部报道指出，攻击者被认为与朝鲜有关联，并在数月内逐步攻陷币安员工与内部系统，最终利用以太坊 EIP-7702 机制攻击其热钱包签名基础设施；币安方面则表示 2026 年已检测并阻止了 57 起疑似与朝鲜有关的网络威胁。

**「实际影响」** 对使用 Homebrew 和开发工具链的工程团队而言，这起事件说明仅靠终端安全软件不足以拦截经过混淆、替换正规组件并清除痕迹的零日恶意软件；报告特别指出，攻击者还滥用内部 AI 工具横向控制其他工程师设备，因此企业需要限制此类工具可触达的设备范围，并收紧容器部署令牌等高风险凭证的存放与使用条件。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.coindesk.com/business/2026/11/03/binance-s-usd6-3-billion-hack-began-with-a-fake-job-interview-exchange-says">North Korea-linked hackers infiltrated Binance for months before...</a></li>
<li><a href="https://www.koreatimes.co.kr/world/20261104/binance-hackers-used-fake-job-interview-in-63-bil-attack">Binance hackers used fake job interview in $6.3 bil. attack</a></li>

</ul>
</details>

**标签**: `#security`, `#supply-chain-attack`, `#social-engineering`, `#malware`, `#cryptocurrency`

---

<a id="item-tech-news-5"></a>
### [NIKKE PC 启动器被指遭供应链投毒植入远控](https://github.com/WormW/nikke_malware_analysis) ⭐️ 8.0/10

玩家与独立研究者分析称，《胜利女神：NIKKE》PC 启动器加载的官方 CDN 文件被植入加载器，会下载并运行远控木马；该程序包含 19 条命令，可执行任意命令、截屏，并窃取开发者与 AI 工具凭据以及 28 个钱包扩展的数据。Level Infinite 已于 11 月 3 日替换两个被修改的文件，但尚未公开回应。上述指控目前来自玩家和独立研究者，证据为单一分析仓库，厂商未公开确认。

telegram · zaihuapd · 11月4日 07:00

**「背景」** 据独立研究者整理的记录，Level Infinite 的 CDN 上四个官方 JavaScript 文件自 2026 年 9 月 27 日起就含有攻击者代码，另有报道称 10 月 23 日及之后打开启动器的玩家可能已暴露于恶意程序。截至目前，SHIFT UP 与 Level Infinite 均未发布官方声明。

**「影响与自查」** 玩家可在 debug.log 中搜索 k2f\_chan 进行自查，相关建议是暂不启动 PC 版。由于厂商未公开说明，受影响用户目前无法从官方渠道确认事件范围或获得修复指引。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://gist.github.com/MotherSphere/d6c049a09ba8ac3085c51ee9df24a4e5">NIKKE PC launcher compromise ( Nov 2026 ): Level Infinite CDN files...</a></li>
<li><a href="https://game8.co/articles/latest/nikke-pc-launcher-files-were-reportedly-compromised-for-over-a-month-to-spread-malware">NIKKE PC Launcher Files Were Reportedly Compromised for Over...</a></li>
<li><a href="https://www.youtube.com/watch?v=tTYWfazp0TM">DO NOT OPEN YOUR NIKKE PC CLIENT [Check the...] - YouTube</a></li>

</ul>
</details>

**标签**: `#supply-chain-security`, `#malware`, `#security`, `#gaming`, `#credential-theft`

---

<a id="item-tech-news-6"></a>
### [Stringman：800 美元的开源房间级线缆驱动机器人](https://neufangled.com/) ⭐️ 7.0/10

Stringman 是一款售价 800 美元的开源房间级抓取机器人，采用线缆驱动，在 Hacker News 上发布后获得 557 分和 192 条评论。创作者 Nathaniel（用户名 nhnifong）在讨论中说明，该机器人设有张力上限：拉力过大时线缆会被放出，因此“大概不会”致人死亡；在有吊扇的房间里通常也能使用，因为可以把工作区域的天花板调低以避开吊扇。目前该项目的具体规格、开源许可和购买方式在现有材料中未作说明。

hackernews · nharada · 11月3日 16:47 · [社区讨论](https://news.ycombinator.com/item?id=50354358)

**「背景」** Stringman 是 Neufangled Robotics 推出的开源硬件平台，其机械 CAD、PCB 和控制软件均已公开，并已获得 OSHWA 认证。该机器人可在本地 Wi-Fi 上离线运行，界面由本地提供，AI 模型在用户自有硬件上运行，数据不离开本地网络。它兼容 Lerobot AI 框架，用户可直接从界面录制数据集；目前能自主抓取小物体并放入指定位置的箱子或堆中，更复杂的物体分类仍依赖对 YOLOv8 的进一步微调。

**「对使用者的影响」** 对想复现或改造该机器人的开发者而言，张力限制机制是安全设计的关键前提，部署时还需根据房间结构（如吊扇位置）调整工作区域高度。

**「社区讨论」** 有评论者分享了自己用两台高速绞盘和铝制部件搭建的类似线缆系统，用于在菜园中升降自己；也有人设想让两台此类机器人同步协作，在空中操作物体。另有评论以调侃口吻表示要等“全身人形版本”，还有人对“Tension is all you need”这一说法会心一笑。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://neufangled.com/">Stringman from Neufangled Robotics</a></li>
<li><a href="https://neufangled.com/stringman">Stringman | Neufangled Robotics</a></li>
<li><a href="https://nhnifong.github.io/neufangled-site/">Neufangled Robotics</a></li>

</ul>
</details>

**标签**: `#robotics`, `#open-source-hardware`, `#cable-driven-robots`, `#hacker-news`, `#diy-hardware`

---

<a id="item-tech-news-7"></a>
### [C++26 未获批准，社区质疑 Contracts 与语言复杂度](https://andreasfertig.com/blog/2026/11/cpp26-dis-failed-how-does-cpp-survive/) ⭐️ 7.0/10

一篇博客文章报告称，C++26 标准未获批准，但现有材料仅包含标题、链接和评论，未提供投票细节、具体原因或后续时间表。文章引发的讨论集中在 C++ Contracts 的实际价值、语言持续膨胀的复杂度，以及静态分析和形式化验证等替代路径上。由于缺少一手来源内容，C++26 被否决的具体范围与官方状态仍不明确。

hackernews · thatxliner · 11月4日 00:33 · [社区讨论](https://news.ycombinator.com/item?id=50360164)

**「背景」** C++26 草案在 ISO 国家机构投票中未获通过，这是该语言历史上首次 DIS（国际标准草案）表决失败；争议焦点是 Contracts（契约）特性，反对票使其未能达到所需的三分之二多数。公开的 WG21 文件 P4433R0 显示，DIS 投票于 2026 年 10 月 22 日结束，当时尚不清楚是否满足 ISO/IEC 指令规定的批准条件。

**「社区讨论」** 有长期编写高可靠性 C++ 的开发者认为，在 C++20 concepts 之后，Contracts 并未清晰解决真实代码库中的问题，对已经采用高可靠性惯用法的团队收益难以量化。另一些评论者则主张，可在分析阶段由静态分析器、模型检查器或定理证明器验证的契约标注非常有价值，并分享了在 C 语言中用 CBMC 和自定义宏实现组合式形式化验证的经验。也有声音希望 C++ 减少新特性，先处理 char8\_t 和 std::filesystem 等遗留问题，并质疑 C/C++ 的 ISO 标准化流程相比 Rust 等语言过于官僚。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://news.lavx.hu/article/c-26-dis-fails-in-historic-vote-contracts-dispute-stalls-standardization">C++26 DIS fails in historic vote, contracts dispute stalls ...</a></li>
<li><a href="https://www.open-std.org/jtc1/sc22/wg21/docs/papers/2026/p4433r0.pdf">P4433R0 Do not remove Contracts from C++26 - open-std.org</a></li>
<li><a href="https://byteiota.com/cpp26-iso-ballot-disapproved-contracts/">C++26 ISO Ballot Disapproved: Contracts Win, C++ Loses</a></li>

</ul>
</details>

**标签**: `#c++`, `#programming-languages`, `#standards`, `#software-engineering`, `#formal-verification`

---

<a id="item-tech-news-8"></a>
### [在任意规模下运行 Mac：iOS 构建基础设施的实践](https://namespace.so/blog/mac-at-any-scale) ⭐️ 7.0/10

Namespace 发布的一篇博客文章介绍了如何在大规模数据中心环境中运行和管理 Mac，以支撑 iOS 应用的构建与测试工作负载。文章重点描述了为绕开 Apple 平台自身的缺陷与限制而搭建的多项变通方案，涉及 CI/CD 与基础设施运维层面。该文在 Hacker News 上获得 375 分、210 条评论，讨论中出现了关于 Apple 工具链局限性的争论，以及用交叉编译工具链替代 Mac 的具体反例。

hackernews · Lobsters · 11月3日 14:53 · [社区讨论](https://news.ycombinator.com/item?id=50352758)

**「背景」** Apple 的 iOS 应用构建与签名流程长期依赖 macOS 与 Xcode，因此需要持续集成 iOS 应用的团队通常必须维护真实的 Mac 硬件。社区评论中，shepherdjerred 指出“没有 Mac 就无法构建 iOS 应用”并非绝对，并给出其在 Linux 主机上交叉编译 C/C++/Fortran 到 macOS 的工具链项目；相关工具结果也显示，存在在 Linux 上为 macOS 编译二进制的开源方案。

**「实际影响」** 对依赖 Mac 完成 iOS 构建与测试的团队而言，这篇文章的价值在于把数据中心级 Mac 运维中的具体坑点与绕行方案集中呈现出来，可作为自建 CI 基础设施时的参考。评论者 shepherdjerred 则指出“没有 Mac 就无法构建 iOS 应用”这一前提并不成立，并给出了自己从 Linux 主机交叉编译 C/C++/Fortran 到 macOS 的工具链站点，供需要评估替代路径的团队参考。

**「社区讨论」** 多位评论者认为文章反映出大量工程投入其实是在弥补 Apple 自身的平台缺陷：kccqzy 推测即便 Apple 推出性能与 Mac mini 相当、价格翻倍的新 Xserve，仍会有人购买，因为自建数据中心运维的成本很高；borschtplease 则批评 Xcode Cloud 与 Apple 的自动化能力，认为签名、证书等流程令人不堪重负。shepherdjerred 对文章“没有 Mac 就无法构建 iOS 应用”的说法提出反驳，并分享了自己的交叉编译工具链。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://news.ycombinator.com/item?id=39409816">Show HN: macOS- cross - compiler – Compile binaries... | Hacker News</a></li>
<li><a href="https://github.com/shepherdjerred/macos-cross-compiler?ref=upstract.com">GitHub - shepherdjerred /macos- cross - compiler at upstract.com</a></li>

</ul>
</details>

**标签**: `#macos`, `#ci-cd`, `#infrastructure`, `#apple`, `#build-systems`

---

<a id="item-tech-news-9"></a>
### [纽约时报等出版商起诉 Brave 绕过付费墙并向 AI 公司提供内容](https://www.solidot.org/story?sid=85788) ⭐️ 7.0/10

《纽约时报》、《芝加哥论坛报》和《奥兰多哨兵报》等美国出版商起诉 Brave Software，指控其未经许可抓取网站内容，并通过 Paywall blocker 功能帮助用户绕过数百家新闻媒体的付费墙。诉状称，Brave 将其抓取内容构成的索引数据库 Brave Index 提供给 Anthropic、Perplexity、Mistral、xAI 和 Cohere 等 AI 公司。《纽约时报》发言人 Graham James 表示，该报曾多次要求 Brave 停止侵权行为但未获回应，因此提起诉讼追究其责任。上述指控来自出版商的起诉主张，目前尚无法院裁决。

rss · 奇客 Solidot · 11月3日 16:58

**「背景」** Brave 以隐私浏览器和内置广告拦截著称，其付费墙拦截功能此前一直是产品争议点之一。此次诉讼将争议从浏览器功能延伸到 AI 数据供应链：起诉方不仅指控 Brave 抓取内容，还指控其把 Brave Index 提供给 Anthropic、Perplexity、Mistral、xAI 和 Cohere 等 AI 公司。据 TechCrunch 报道，原告寻求禁令和损害赔偿。

**「影响」** 此案将 Brave 的浏览器付费墙绕过功能与其向第三方 AI 公司提供索引数据的行为直接关联，可能影响依赖 Brave Index 或类似抓取索引获取新闻内容的 AI 公司，并促使相关方重新审视数据来源的授权链条。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://techcrunch.com/2026/11/02/new-york-times-and-other-outlets-sue-web-browser-brave-over-alleged-content-scraping/">New York Times and other outlets sue web browser Brave over ...</a></li>
<li><a href="https://tradersunion.com/news/companies/show/4067296-nyt-lawsuit-brave-ai-content/">New York Times lawsuit targets Brave over alleged AI content ...</a></li>

</ul>
</details>

**标签**: `#AI copyright`, `#web scraping`, `#paywalls`, `#Brave`, `#AI training data`

---

<a id="item-tech-news-10"></a>
### [InfoQ 报道称 Codex 11 天生成 13.9 万行内核并启动 Rocky Linux 10](https://www.infoq.cn/article/OiyNEtFwV05opvsLTcvK?utm_source=rss&amp;utm_medium=article) ⭐️ 7.0/10

InfoQ 的一篇简讯称，OpenAI Codex 在 11 天内编写了一个约 13.9 万行的新内核，并成功在 Rocky Linux 10 上启动。该报道目前只提供了标题和摘要，没有给出代码仓库、构建与启动日志、测试方法或独立验证信息，因此这一说法仍属未经核实的厂商或作者主张，无法判断其技术完整性与可复现性。

rss · InfoQ 中文 · 11月4日 15:30

**「背景」** 据 Slashdot 报道，该项目名为 Ginux，由 Rocky Linux 创建者发起，使用一个持续运行的 OpenAI Codex 任务（运行 GPT-5.6 Sol）历时 11 天，产出约 13.9 万行保留的实现与测试代码，分布在 1000 多次提交中。Ginux 并非 Linux 分支，但能引导 Rocky Linux 10 直至 systemd。据俄语媒体 itzine.ru 援引的补充消息，在 Linux 6.12 面向 x86-64 的 375 个系统调用中，Ginux 完整实现 82 个，另有 245 个部分可用、48 个被有意屏蔽，因此成功启动并不等于与 Linux 完全兼容。

**「对开发者的实际影响」** 据外部报道，该项目由 Rocky Linux 创始人 Gregory M. Kurtzer 以“人类主导的智能体工程”方式完成，Codex 在持续任务中产出约 13.9 万行保留的实现与测试代码，项目名为 Ginux。Kurtzer 本人将其定位为研究原型，而非可用于生产的 Linux 内核或替代品，因此开发者目前不宜将其用于生产环境或据此评估内核级 AI 生成代码的可靠性。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://tech.slashdot.org/story/26/11/02/0317207/rocky-linux-creator-built-a-new-not-linux-kernel-in-11-days-using-ai">Rocky Linux Creator Built a New &#x27;Not Linux &#x27; Kernel in 11 Days Using...</a></li>
<li><a href="https://t.me/canal_telegram_proyectotictac/217854">Canal: Linuxverso + Educación STEAM – Telegram</a></li>
<li><a href="https://itzine.ru/news/ai/soosnovatel-centos-sozdal-yadro-zapuska-rocky-linux-10.html">Сооснователь CentOS создал за 11 дней ядро для запуска Rocky ...</a></li>
<li><a href="https://itsfoss.com/news/ginux/">Rocky Linux Creator Built a New &quot;Not Linux&quot; Kernel in 11 Days ...</a></li>
<li><a href="https://x.com/gmkurtzer/status/2114958282481910115">Gregory M. Kurtzer on X: &quot;In 11 days, I built a new Linux ...</a></li>

</ul>
</details>

**标签**: `#AI code generation`, `#Linux kernel`, `#Codex`, `#systems software`, `#Rocky Linux`

---

<a id="item-tech-news-11"></a>
### [Anthropic 团队零 Rust 经验，借 Claude 重构核心 API](https://www.infoq.cn/article/IMWM7ZXDi99sMiUVZBIF?utm_source=rss&amp;utm_medium=article) ⭐️ 7.0/10

InfoQ 报道称，Anthropic 团队在没有任何 Rust 经验的情况下，借助 Claude 将核心 API 重写为 Rust，并声称 CPU 占用降低 40%、延迟降低 20%。目前可获取的内容仅为文章链接摘要，未披露具体 API 名称、代码规模、迁移方法、测试方式或性能数据的测量条件，因此这些数字属于厂商方面的说法，尚无法独立核实。

rss · InfoQ 中文 · 11月3日 12:51

**「背景」** Claude 是 Anthropic 开发的 AI 助手，可用于编写代码、分析数据和完成复杂工程任务。此次报道的核心是 Anthropic 团队在自身没有 Rust 经验的情况下，借助 Claude 将核心 API 从原有语言迁移到 Rust，并声称 CPU 占用降低 40%、延迟降低 20%。由于所给材料仅为链接摘要，缺少迁移方法、基准测试条件和独立验证，这些性能数字目前只能视为厂商说法。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://claude.com/">Claude by Anthropic | The AI for problem solvers</a></li>
<li><a href="https://claude.ai/">Claude</a></li>

</ul>
</details>

**标签**: `#AI-assisted coding`, `#Rust`, `#code migration`, `#performance optimization`, `#LLM tooling`

---

<a id="item-tech-news-12"></a>
### [Postgres 19 拟内置 REPACK 在线清理表膨胀](https://www.snowflake.com/en/blog/engineering/postgres-19-repack-table-bloat/) ⭐️ 7.0/10

Snowflake 工程博客发文称，Postgres 19 将引入名为 REPACK 的内置功能，用于在线清理表膨胀。该说法目前仅来自这篇博客，所给材料没有提供版本细节、实现范围、可用条件或独立验证，因此应视为厂商的宣称而非已确认的发布能力。

rss · Lobsters · 11月3日 22:44

**「背景」** PostgreSQL 中清理表膨胀长期依赖 VACUUM FULL 或 CLUSTER，两者都会在操作期间对表加锁，导致无法在线写入；外部扩展 pg\_repack 则提供了在线重建的替代方案。据 PostgreSQL 19 官方文档，REPACK 被定位为主要用于消除膨胀、并可通过 USING INDEX 实现聚簇的命令，执行需要表上的 MAINTAIN 权限。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://dev.to/mafiree/postgresql-19-repack-removing-table-bloat-online-45gk">PostgreSQL 19 REPACK: Removing Table Bloat Online</a></li>
<li><a href="https://www.postgresql.org/docs/19/sql-repack.html">PostgreSQL: Documentation: 19: REPACK</a></li>

</ul>
</details>

**标签**: `#postgresql`, `#databases`, `#open-source`, `#table-bloat`, `#storage`

---

<a id="item-tech-news-13"></a>
### [StateBench：评估语言模型长文档状态追踪能力](https://huggingface.co/blog/allenai/statebench) ⭐️ 7.0/10

Hugging Face 博客发布了一篇由 Allen AI 撰写的文章，介绍 StateBench——一个用于评估语言模型在长文档中追踪状态变化能力的基准测试。该基准针对的是长上下文模型可靠性中的一个具体能力缺口：随着文档推进，模型能否正确跟踪实体或变量的状态更新。由于目前仅有标题和来源信息，尚无公开的方法细节、测试结果或可用性说明，因此无法判断其难度设置、评测规模或与其他长上下文基准的差异。

rss · Hugging Face Blog · 11月3日 17:15

**「背景」** StateBench 由 Allen 人工智能研究所（Ai2）发布，用于衡量长上下文中的状态跟踪能力，即语言模型在长文档中能否持续跟踪实体的信息变化。据 Ai2 博客介绍，该基准按四个难度等级组织测试，并同时公开了数据集与代码。

**「对长上下文评估的影响」** StateBench 将评估重点放在实体信息随长文档演进时的状态跟踪能力上，而非单纯的检索或问答准确率，这为开发者衡量模型在代码阅读等需要变量反复赋值与重赋值的任务中的可靠性提供了更贴近实际用途的测试维度。由于目前仅有基准介绍、尚无公开的模型得分或方法细节，开发者暂时无法据此比较不同模型的表现，需等待基准数据与评测结果发布后才能用于选型。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://allenai.org/blog/statebench">StateBench: Testing how language models track state changes ...</a></li>
<li><a href="https://www.unite.ai/ai2-releases-statebench-to-measure-long-context-state-tracking/">Ai2 Releases StateBench to Measure Long-Context State ...</a></li>
<li><a href="https://huggingface.co/blog/allenai/statebench">StateBench : Testing how language models track state changes over...</a></li>

</ul>
</details>

**标签**: `#benchmarks`, `#long-context`, `#LLM evaluation`, `#state tracking`, `#AI research`

---

<a id="item-tech-news-14"></a>
### [腾讯混元 Hy4 发布，首次引入视觉与电脑操作能力](https://mp.weixin.qq.com/s/JrQeiqx3PXBDSGish2IzwA) ⭐️ 7.0/10

腾讯混元于 11 月 4 日正式发布 Hy4，首次为该系列引入视觉能力，并支持电脑操作，还针对 Blender、CAD 等专业软件做了专项训练。官方称在 579 个真实金融任务的众测中，Hy4 以 3.04 分位居开源模型第一，幻觉率从 15.76% 降至 5.45%。模型已在腾讯云和 OpenRouter 上线，API 价格不变；官方计划开源权重，并将在近期推出 Hy4 flash。上述基准成绩均为厂商自报，尚未见到独立复现。

telegram · zaihuapd · 11月4日 07:33

**「背景」** 腾讯混元此前已发布 Hy4 preview 版本；据腾讯混元官方介绍，11 月 4 日发布的 Hy4 正式版相比 preview 显著扩大了预训练和后训练规模，并首次引入视觉能力，同时提升了指令遵循、长文理解、长程任务和深度研究等综合能力。

**「对使用者的影响」** 现有 API 调用方无需因价格调整而改动计费方案，但若要用上视觉与电脑操作能力，需确认所用渠道（腾讯云或 OpenRouter）已提供对应模型版本。计划自建部署的团队则要等官方开源权重落地后才能评估，Hy4 flash 的具体规格与上线时间目前也未公布。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://hy.tencent.com/research/hy4">Hy4 正式发布</a></li>
<li><a href="https://www.moomoo.com/hans/news/post/1003450914/tencent-hunyuan-officially-launches-its-next-generation-large-language-model">腾讯混元正式发布新一代大语言模型Hy4 首次引入视觉能力</a></li>
<li><a href="https://news.qq.com/rain/a/20261104A06OU500">腾讯混元发布Hy4：跻身开源最强，实测四大实用场景_腾讯新闻</a></li>

</ul>
</details>

**标签**: `#LLM`, `#multimodal`, `#open-source`, `#benchmarks`, `#Tencent`

---

## 财经新闻

<a id="item-finance-news-1"></a>
### [美国 2026 年中期选举：民主党赢下参众两院](https://apnews.com/live/midterm-election-2026) ⭐️ 8.0/10

据美联社和 CBS 新闻报道，民主党在 2026 年美国中期选举中赢下众议院并夺回参议院，在堪萨斯、艾奥瓦、得州、俄亥俄、缅因、北卡、南卡等至少 7 个参议院席位获胜。特朗普在采访中表示祝贺民主党获胜，并称期待合作。

telegram · zaihuapd · 11月4日 08:00

**「背景」** 美国中期选举在总统任期的第二年举行，众议院全部席位和参议院部分席位改选；据《卫报》报道，民主党在此次选举前持有 212 个众议院席位，而控制众议院需要 218 席。

**「影响」** 若民主党同时掌控参众两院，特朗普任内最后两年的立法议程将受阻，其人事任命可能被否决，政府也将面临国会调查。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.theguardian.com/us-news/ng-interactive/2026/nov/03/midterm-elections-full-results-senate-house-governor-races">US midterm elections 2026 : live results from Senate , House and...</a></li>
<li><a href="https://www.cnbc.com/2026/11/03/midterm-elections-congress-trump-democrats-republicans.html">Midterms elections : What&#x27;s at stake for Trump on Election Day</a></li>
<li><a href="https://www.euronews.com/2026/11/03/us-midterm-elections-results-2026-live-updates-in-maps-and-charts">Live - US midterm elections results 2026 : Live updates in... | Euronews</a></li>

</ul>
</details>

**标签**: `#US midterm elections`, `#US politics`, `#Congress control`, `#policy outlook`, `#Trump administration`

---

<a id="item-finance-news-2"></a>
### [韩国拟拨款 4.7 万亿韩元开发主权 AI 模型](https://mp.weixin.qq.com/s/EldaEmYwi1eXuqkR2il-2A) ⭐️ 7.0/10

韩国总统李在明宣布拨款 4.7 万亿韩元，用于开发力争达到全球最高性能的主权 AI 模型，该计划被纳入韩国史上规模最大的政府预算案。据财联社报道，2027 年韩国政府总支出拟提高 12.8%至 820.9 万亿韩元，其中半导体、物理 AI 与 AI 数据中心投资达 21.3 万亿韩元，接近今年的两倍。

telegram · zaihuapd · 11月4日 03:07

**「背景」** 韩国总统李在明此前已推动大规模 AI 投入，SK、GS、Naver 三家本土企业宣布未来投资 550 万亿韩元，第一阶段建设总规模 8.4GW 的 AI 数据中心（来源：tool-1-2）。此次 4.7 万亿韩元主权 AI 模型拨款被纳入 2027 年预算案，属于这一产业政策方向的延续。

**「影响」** 若该预算案获批，韩国半导体企业、AI 数据中心运营商及 AI 人才培训相关机构将直接获得政府资金支持；但该预算目前仍属拟议方案，尚需经国会审议。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://news.ifeng.com/c/8uNw8anUS1T">李 在 明 把 韩 国 未来二三十 年 都赌上了_凤凰网</a></li>
<li><a href="https://www.cnbc.com/2026/11/02/south-korea-ai-spending-budget.html">South Korea targets world-leading sovereign AI model</a></li>

</ul>
</details>

**标签**: `#AI policy`, `#South Korea`, `#government budget`, `#semiconductors`, `#industrial policy`

---