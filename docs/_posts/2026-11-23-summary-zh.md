---
layout: default
title: "Horizon Summary: 2026-11-23 (ZH)"
date: 2026-11-23
lang: zh
---

> 从 135 条内容中筛选出 15 条重要资讯。

---

**科技新闻**
1. [PostgreSQL 19 发布：新增 REPACK 命令与 pg\_plan\_advice 扩展](#item-tech-news-1) ⭐️ 8.0/10
2. [XNU Linux 项目尝试在 Linux 上运行完整 OS X 图形用户空间](#item-tech-news-2) ⭐️ 7.0/10
3. [OpenAI 发文论述困惑度与智能的关系，引发评测有效性讨论](#item-tech-news-3) ⭐️ 7.0/10
4. [Lean 形式化进度图追踪 Masullo 手稿，数学家警告证明可能有重大漏洞](#item-tech-news-4) ⭐️ 7.0/10
5. [研究估计 Anthropic 2028 年 98% 电力来自化石燃料](#item-tech-news-5) ⭐️ 7.0/10
6. [AWS 推出 TorchNeuron，称可在 Trainium 上直接运行 PyTorch 模型](#item-tech-news-6) ⭐️ 7.0/10
7. [首个 Rust WMI Linux 驱动正在开发，面向 Clevo 笔记本](#item-tech-news-7) ⭐️ 7.0/10
8. [Phison 推出太空级 SSD，488 TB 将随 StarVault-001 入轨](#item-tech-news-8) ⭐️ 7.0/10
9. [谷歌搭建模拟互联网 Mirror Dimension 测试 Chrome AI 代理](#item-tech-news-9) ⭐️ 7.0/10
10. [Windows Server 2028 默认移除 WoW64，32 位应用需手动装回](#item-tech-news-10) ⭐️ 7.0/10
11. [开源工具 nospeaker 用触控板振动合成语音](#item-tech-news-11) ⭐️ 7.0/10

**科技博客**
1. [在不确定时，不妨四处乱撞](#item-tech-blog-1) ⭐️ 6.0/10
2. [解读 OpenAI 公开的困惑度曲线](#item-tech-blog-2) ⭐️ 5.0/10

**财经新闻**
1. [美股科技股大跌，亚洲多地出台稳市措施](#item-finance-news-1) ⭐️ 9.0/10
2. [蚂蚁集团领投 Simplexity Robotics 1 亿美元融资，投后估值 16 亿美元](#item-finance-news-2) ⭐️ 7.0/10

---

## 科技新闻

<a id="item-tech-news-1"></a>
### [PostgreSQL 19 发布：新增 REPACK 命令与 pg\_plan\_advice 扩展](https://www.solidot.org/story?sid=85960) ⭐️ 8.0/10

PostgreSQL 项目发布了 v19。主要变化包括：新增 REPACK 命令用于回收磁盘空间并重组表内容，以提升查询性能；REPACK\(CONCURRENTLY\) 可在不中断现有操作的情况下优化表。新增的 pg\_plan\_advice 扩展用于更好地控制计划稳定性并提升查询性能。此外，该版本改进了 I/O 工作进程数量的自动伸缩、外键检查以及规划与执行优化；当 wal\_level 设为 replica 时，无需重启服务器即可启用逻辑复制，并支持序列值的逻辑复制。

rss · 奇客 Solidot · 11月23日 06:30

**「背景」** Horizon 2026 年 11 月 4 日的日报曾提到，Snowflake 工程博客称 Postgres 19 将内置 REPACK 在线清理表膨胀，但当时该说法仅来自厂商博客，缺少版本细节与独立验证，只能视为宣称。Horizon 2026 年 11 月 13 日的日报则记录了 PostgreSQL 各分支的集中更新，其中包含 19 RC2，说明 19 版在正式发布前已进入候选版本阶段。如今正式版释出，REPACK 与 REPACK\(CONCURRENTLY\) 已成为发布公告列出的实际功能。

**「影响」** 对于运维人员，REPACK\(CONCURRENTLY\) 提供了一种在业务持续运行期间整理表数据的方式；对于需要逻辑复制的部署，将 wal\_level 设为 replica 后无需重启即可启用，可减少变更窗口。计划使用 pg\_plan\_advice 的团队需要额外安装该扩展，并评估其对现有执行计划的约束。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.snowflake.com/en/blog/engineering/postgres-19-repack-table-bloat/">2026-11-04 — Postgres 19 拟内置 REPACK 在线清理表膨胀</a></li>
<li><a href="https://www.phoronix.com/news/PostgreSQL-52-CVEs">2026-11-13 — PostgreSQL 多版本更新修复 52 个安全漏洞及 140 余项缺陷</a></li>

</ul>
</details>

**标签**: `#PostgreSQL`, `#databases`, `#open source`, `#release`, `#logical replication`

---

<a id="item-tech-news-2"></a>
### [XNU Linux 项目尝试在 Linux 上运行完整 OS X 图形用户空间](https://github.com/AFK-surf/xnulinux) ⭐️ 7.0/10

GitHub 项目 AFK-surf/xnulinux 试图在 Linux 上运行 XNU 内核与完整的 OS X 图形用户空间，该项目在 Hacker News 上引发讨论。现有信息仅来自项目链接和评论，尚无经过验证的细节说明其完成度、实际可用性或具体实现范围。评论者指出，该项目仍然需要 Apple 硬件才能运行。

hackernews · mmastrac · 11月23日 03:49 · [社区讨论](https://news.ycombinator.com/item?id=50607261)

**「背景」** XNU 是苹果开源的 macOS 内核，而 macOS 的图形用户空间长期与苹果硬件和内核紧密绑定。该项目的基本思路是把 XNU 作为可加载内核模块（xnulinux 仓库描述为“XNU as a loadable kernel module inside Linux”）载入未修改的 arm64 Linux 内核，从而让 macOS 进程原生运行；外部检索结果也将其概括为在 arm64 Linux 内核中加载 XNU 模块。需要说明的是，这些检索摘要仅是对项目定位的转述，项目实际完成度与可用性仍以仓库内容为准。

**「实际影响」** 对潜在使用者而言，最直接的约束是它仍依赖 Apple 硬件，因此并不能让 OS X 用户空间脱离苹果设备运行。评论者还提到，类似项目曾从 GitHub 消失，例如 Stela 已被完全移除，这提示此类项目可能面临下架或难以持续维护的风险。

**「社区讨论」** 有评论者认为，与其做这个项目，不如改进 GNUstep，并分享了自己在 IUP 分支中让同一 Cocoa 驱动为 macOS 和 Linux/BSD 上的 GNUstep 编译的经验，但指出该驱动因部分 API 未实现而混入 ifdef，且需要打补丁。另有评论者推测，未来操作系统可能以加密形式发布、密钥只存在于硬件中，从而限制可执行文件只能在 Apple 芯片上运行；也有人讨论类似思路能否用于 Windows 的 NTOSKRNL。

<details><summary>参考链接</summary>
<ul>
<li>AFK-surf/xnulinux: XNU as a loadable kernel module inside Linux - TLDR</li>
<li>XNU Linux: Full OS X GUI Userspace on Linux | daily.dev</li>

</ul>
</details>

**标签**: `#xnu`, `#linux`, `#macos`, `#operating-systems`, `#reverse-engineering`

---

<a id="item-tech-news-3"></a>
### [OpenAI 发文论述困惑度与智能的关系，引发评测有效性讨论](https://openai.com/index/perplexity-and-intelligence/) ⭐️ 7.0/10

OpenAI 发布一篇题为《Perplexity and Intelligence》的文章，主张困惑度（即下一词预测损失）与模型智能水平相关。该文在 Hacker News 上获得 570 分、389 条评论，讨论焦点是交叉熵损失是否仍是衡量模型能力的有效指标。由于提供的材料仅有标题、链接和评论，文章的具体论证、数据与结论无法核实，上述主张应视为 OpenAI 的论述而非独立验证的结果。

hackernews · acossta · 11月22日 17:06 · [社区讨论](https://news.ycombinator.com/item?id=50601525)

**「背景」** 困惑度（perplexity）是语言模型预训练交叉熵损失经指数化后的常用指标，数值越低表示模型对下一 token 的预测越不“意外”，理论上最优为 1、最差等于词表大小。OpenAI 的这篇文章由 Jakub Pachocki 等人主张，预训练交叉熵（以困惑度衡量）仍与模型能力高度相关，并据此提出将其作为跨模型比较的共同基准。这一主张出现在业界评测基准日益繁杂、且强化学习后训练被广泛采用的背景下，因此引发了对该指标是否仍有解释力的讨论。

**「对模型评测的影响」** 微软已率先在 OpenAI 的评测集上公开其 MAI-2 Base 模型的 log-perplexity 为 0.819，并称该数值与 GPT-5.6 Sol 基础模型处于同一量级；不过现有来源未给出 GPT-5.6 Sol 的具体分数。若更多实验室跟进共享同一 held-out 评测集，开发者将获得一个比日益复杂的基准更简单、可横向比较的模型能力指标。

**「社区讨论」** 有评论者指出文章并未定义困惑度，并补充说明：困惑度衡量模型预测下一词时的意外程度，最差情况等于词表大小，最好情况为 1。jrflo 表示，在强化学习日益普及的背景下，交叉熵损失仍呈现如此清晰的趋势令人意外，同时认为一个简单基准比层出不穷的复杂评测更有价值。d\_burfoot 则认为预测率即压缩率恰好刻画了从原始数据中提取世界模型的能力，并援引自己 2008 年的论文支持这一观点。另有评论者提到，微软的 Mustafa Suleyman 称 MAI-2 Base 在 OpenAI 的评测集上 log-perplexity 为 0.819，但该说法来自社交媒体转述，未经独立确认。

<details><summary>参考链接</summary>
<ul>
<li>Perplexity and Intelligence - OpenAI Developer Community</li>
<li>OpenAI is proposing perplexity as a shared measure of AI progress. Before comparing models with it, let&#x27;s follow how LLM perplexity turns next-token probabilities into one score! T - Facebook</li>
<li><a href="https://x.com/mustafasuleyman/status/2124663594449318173">Mustafa Suleyman on X: &quot;We fully support OpenAI&#x27;s ...</a></li>
<li><a href="https://www.computelabs.ai/research/2026-11-22/microsoft-disclosed-mai-2-base-model-achieved-0-819-log-perplexity-openai">Microsoft disclosed its MAI-2 base model achieved 0.819 log ...</a></li>
<li><a href="https://cellcog.ai/blog/microsoft-mai-2-perplexity-openai/">Microsoft Puts MAI-2 on OpenAI&#x27;s Perplexity Chart | CellCog</a></li>

</ul>
</details>

**标签**: `#machine-learning`, `#language-models`, `#model-evaluation`, `#perplexity`, `#openai`

---

<a id="item-tech-news-4"></a>
### [Lean 形式化进度图追踪 Masullo 手稿，数学家警告证明可能有重大漏洞](https://claude.ai/artifact/CtQyX8qfYAF822bgHJHHE3) ⭐️ 7.0/10

Hacker News 上出现了一份针对 Alessandro Masullo 手稿的 Lean 形式化进度图，用于追踪该手稿在 Lean 证明助手中的形式化进展。参与该仓库的数学家 kopje\_koffie 表示，勘误列表中已记录数百个问题，其中有些较轻微、有些则不那么轻微，目前还远不能判断核心思路是否存在重大漏洞。另一位评论者 ion\_trapper 指出，最初代 Masullo 发布这一声明的 Ravi Vakil 教授如今称自己根本没有看过 Masullo 的文档，而据《科学美国人》询问，唯一似乎为该声明背书的 Brian Conrad 教授表示手稿需要“重大修订”。该进度图本身只是形式化工作的追踪记录，并不构成对证明正确性的确认。

hackernews · Qision · 11月22日 23:12 · [社区讨论](https://news.ycombinator.com/item?id=50605045)

**「背景」** Horizon 2026 年 11 月 21 日的日报曾报道，Ravi Vakil 在博客中公布 Alessandro Masullo 的广义黎曼猜想证明草案，称 Brian Conrad 已审阅数月并给出大量反馈，但该草案尚未经过正式验证（tool-1-3）。同一期日报还记录了 Levent Alpöge 声称与 Claude 合作完成黎曼猜想证明并已用 Lean 形式化，以及陶哲轩博客称给出广义黎曼猜想证明（tool-1-1、tool-1-2）。当前条目所涉的 Lean 形式化进度图，正是围绕 Masullo 这份草案展开的后续工作。

**「对参与者的实际影响」** 参与该仓库的数学家 kopje\_koffie 表示，勘误列表中数百个问题有的轻微、有的并不轻微，目前还远不能判断核心思路是否存在重大漏洞，并呼吁有余力者把 AI 代理指向该项目。另一位评论者 hodgehog11 提醒，进度条不能作为证明大体正确的依据，因为只要有一个漏洞就足以让整个证明崩塌。

**「社区讨论」** 评论者 hodgehog11 提醒，进度条不能作为证明大体正确的依据，因为只要有一个漏洞就足以让整个证明崩塌，并称据其他评论判断该证明存在重大漏洞。kopje\_koffie 则呼吁不要过度解读数百条勘误，并邀请有余力的人把 AI agent 指向该 GitHub 项目协助工作。ohyes 表达了对数学家的同情，认为投入毕生精力推进数学研究的人，却让一家万亿美元公司的软件产品先到达终点。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://alpo.ge/remark.pdf">2026-11-21 — Levent Alpöge 声称证明广义黎曼猜想，附 Lean 形式化</a></li>
<li><a href="https://terrytao.wordpress.com/2026/11/20/unforced-euler-singularity-unforced-navier-stokes-singularity-and-the-generalized-riemann-hypothesis/">2026-11-21 — 陶哲轩博客称无外力纳维-斯托克斯奇点与广义黎曼猜想获证</a></li>
<li><a href="https://math216.wordpress.com/2026/11/20/hurried-announcement-alessandro-masullo-grh/">2026-11-21 — 数学家匆忙公布广义黎曼猜想证明草案</a></li>

</ul>
</details>

**标签**: `#formal-verification`, `#Lean`, `#mathematics`, `#AI-assisted-research`, `#proof-assistants`

---

<a id="item-tech-news-5"></a>
### [研究估计 Anthropic 2028 年 98% 电力来自化石燃料](https://www.solidot.org/story?sid=85959) ⭐️ 7.0/10

研究人员调查了 Anthropic 的用电需求后估计，到 2028 年该公司约 98% 的电力将来自化石燃料，其中约 87% 来自天然气、11% 来自煤炭。研究指出，Anthropic 未在美国承诺使用任何可再生能源，近期还斥资 34 亿美元承诺采购 1.7 GW 燃气发电设备，与其签署算力合同的美国数据中心提供商也大多依赖化石燃料供电。研究估算，Anthropic 数据中心用电产生的二氧化碳排放可能达到每年 1700 万至 3800 万公吨二氧化碳当量，中值约 3200 万公吨，到 2030 年可能翻倍。这些数字是研究人员的估算，而非已发生的实测结果。

rss · 奇客 Solidot · 11月22日 15:32

**「背景」** Anthropic 并不自建或拥有其运行所依赖的数据中心，而是通过与数据中心提供商及“neocloud”算力供应商签约获得算力，例如与 Fluidstack 的 500 亿美元交易和与 Lambda 的 413 亿美元交易，并与 TeraWulf、Hut 8 等前加密货币矿企合作建设数据中心。因此，其用电来源在很大程度上取决于这些合作方所选择的发电方式，这也解释了为何研究聚焦于其签约数据中心而非自有设施。

**「影响与关注点」** 这一估算把 AI 算力扩张的能源来源问题具体化：若预测成立，Anthropic 的用电结构将高度集中于天然气和煤炭，其年度排放量级可与大型工业设施相比。对关注 AI 供应链碳排放的企业客户和投资者而言，这意味着评估 AI 服务环境成本时，需要把数据中心自建发电设施及其燃料类型纳入考量。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.youtube.com/watch?v=E8TJMZeVtHs">Anthropic does not own the data centers it runs on - YouTube</a></li>
<li><a href="https://www.nytimes.com/2026/11/02/technology/anthropic-ai-computing-power.html">Inside Anthropic ’s Hunt for A.I. Computing Power - The New York Times</a></li>

</ul>
</details>

**标签**: `#AI infrastructure`, `#data centers`, `#energy`, `#emissions`, `#Anthropic`

---

<a id="item-tech-news-6"></a>
### [AWS 推出 TorchNeuron，称可在 Trainium 上直接运行 PyTorch 模型](https://www.infoq.cn/article/XhtWUmaolJECUhPX2jzY?utm_source=rss&amp;utm_medium=article) ⭐️ 7.0/10

亚马逊云科技（AWS）宣布推出 TorchNeuron，据称可让未经修改的 PyTorch 模型直接在 Trainium 芯片上运行。该消息目前仅有厂商声明，所提供的内容未包含版本号、支持的 PyTorch 版本、兼容性条件、性能数据或独立验证结果，因此这一能力是否已实际交付、适用范围多大尚无法确认。

rss · InfoQ 中文 · 11月22日 10:00

**「背景」** AWS 于 2026 年 10 月 20 日宣布 TorchNeuron 进入公开测试阶段，并将其定位为面向 AWS Trainium 的开源原生 PyTorch 后端；Trainium 是 AWS 面向深度学习训练与推理的 AI 芯片系列。据亚马逊介绍，TorchNeuron 在 2026 年北美 PyTorch 大会上开源，目标是让开发者几乎无需改动现有 PyTorch 代码即可在 Trainium 上运行。

**「对迁移与兼容性的影响」** TorchNeuron 目前处于公开测试阶段，支持在 Trainium2 和 Trainium3 上以 eager 模式运行、用 torch.compile 提升生产性能，并可通过 Neuron Kernel Interface 编写自定义内核。因此，计划迁移的团队应把测试版中的兼容性缺口纳入评估，先做小规模迁移验证，再决定是否将现有 GPU 工作负载迁至 Trainium。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://aws.amazon.com/about-aws/whats-new/2026/10/aws-announce-native-pytorch-support-trainium/">AWS announces TorchNeuron: Native PyTorch Support for AWS ...</a></li>
<li><a href="https://www.infoq.com/news/2026/11/aws-torchneuron-trainium-pytorch/">AWS Launches TorchNeuron to Run PyTorch Models on AWS ... - InfoQ</a></li>
<li><a href="https://www.aboutamazon.com/news/innovation-at-amazon/torchneuron-pytorch-aws-trainium-chips-ai">Amazon&#x27;s TorchNeuron runs PyTorch on AWS Trainium chips</a></li>
<li><a href="https://pytorch.org/blog/introducing-torchneuron-native-pytorch-backend-for-aws-trainium/">Introducing TorchNeuron: Native PyTorch backend for AWS Trainium</a></li>
<li><a href="https://techscurrent.com/2026/10/torchneuron-pytorch-trainium-beta-limits-migration/">TorchNeuron Runs PyTorch on Trainium, but Beta Gaps Matter</a></li>
<li><a href="https://aws.amazon.com/about-aws/whats-new/2026/10/aws-announce-native-pytorch-support-trainium/">AWS announces TorchNeuron: Native PyTorch Support for AWS ...</a></li>

</ul>
</details>

**标签**: `#AWS Trainium`, `#PyTorch`, `#AI hardware`, `#machine learning infrastructure`, `#cloud computing`

---

<a id="item-tech-news-7"></a>
### [首个 Rust WMI Linux 驱动正在开发，面向 Clevo 笔记本](https://www.phoronix.com/news/Rust-WMI-Driver-Clevo-Laptops) ⭐️ 7.0/10

正在开发中的新驱动“clevo-laptop”是首个使用 Linux 内核 Rust Windows Management Instrumentation（WMI）抽象接口的驱动，目标硬件是 Clevo 笔记本，包括 TUXEDO Computers、Metabox、Sager、XMG 等品牌销售的机型。目前该驱动处于开发阶段，来源未披露具体功能范围、上游合并状态或可用版本。

rss · Phoronix · 11月22日 10:56

**「背景」** WMI（Windows Management Instrumentation）是 Linux 内核中用于访问主板固件所暴露管理接口的子系统，笔记本厂商常借此提供风扇控制、键盘背光等厂商专属功能。此前内核已加入面向 Rust 驱动的 WMI 抽象层补丁集，使多数 WMI 驱动可以用 Rust 实现，前提是其他依赖也已完成抽象。此次的 clevo-laptop 驱动正是首个实际采用这套 Rust WMI 抽象的驱动。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://lwn.net/Articles/1053707/">rust : WMI abstractions [LWN.net]</a></li>

</ul>
</details>

**标签**: `#Rust for Linux`, `#Linux kernel`, `#drivers`, `#WMI`, `#open source`

---

<a id="item-tech-news-8"></a>
### [Phison 推出太空级 SSD，488 TB 将随 StarVault-001 入轨](https://videocardz.com/newz/phison-announces-488tb-of-ssd-storage-for-space-data-centers-pricing-expected-to-be-astronomical) ⭐️ 7.0/10

Phison 发布面向航天器、卫星和在轨数据中心的 Pascari Space SSD 系列，产品已上市，单盘最高容量 128 TB。该系列分为 Flight Critical、Main Storage 和 Orbital Data Center 三类，Phison 称部分型号采用 pSLC 后可将写入寿命提升至多 60 倍。公司确认 Lonestar Data Holdings 的轨道数据中心 StarVault-001 将搭载合计 488 TB 的 Phison SSD，计划于 2027 年上半年发射，进入低地球轨道后可用容量约 370 TB。上述寿命提升为厂商说法，发射时间和在轨可用容量仍属计划，尚未经过实际飞行验证。

telegram · zaihuapd · 11月22日 10:31

**「背景」** Phison 此次公布的 StarVault-001 部署，是 Lonestar Data Holdings 在轨数据中心计划的延续：该公司此前已把数据中心载荷搭载于 IM-2 着陆器进行测试，说明其路线是先做小规模在轨验证，再推进整机部署。Phison 的 Pascari Space 系列则把存储产品按航天器、卫星和在轨数据中心三类场景划分，本次 488 TB 整机容量对应的是其中面向轨道数据中心的型号。

**「影响」** 对需要在轨存储的卫星与数据中心运营方而言，该系列提供了按任务关键性分级的选型，但 488 TB 与约 370 TB 可用容量要等 StarVault-001 在 2027 年上半年发射后才能验证；采购方还需评估 pSLC 模式在提升写入寿命的同时对可用容量的影响。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://thespacereview.com/article/5043/1">The Space Review: The future of data storage? Look up</a></li>

</ul>
</details>

**标签**: `#storage`, `#hardware`, `#space computing`, `#data centers`, `#SSD`

---

<a id="item-tech-news-9"></a>
### [谷歌搭建模拟互联网 Mirror Dimension 测试 Chrome AI 代理](https://www.landian.news/archives/128701.html) ⭐️ 7.0/10

据蓝点网报道，谷歌为 Chrome 的 AI 代理搭建了一个名为 Mirror Dimension 的隔离模拟互联网，用于测试其打开网站、搜索浏览、登录、加购和完成任务等操作。该环境包含数千个模拟网站，每名工程师单独隔离测试，每天运行超过 1000 个测试案例，重点防御恶意网页的提示词注入等攻击。上述信息来自二手来源的简要转述，尚无谷歌官方说明或独立验证。

telegram · zaihuapd · 11月23日 01:30

**「背景」** 谷歌的 Chrome AI 代理需要在真实网站上完成浏览、登录、加购等任务，因此测试环境必须能模拟真实网页交互，同时暴露于恶意页面可能发起的提示词注入攻击。据 Wired 报道，谷歌为此搭建了名为 Mirror Dimension 的镜像互联网，让代理在其中像在真实互联网上一样操作并接受韧性测试。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.wired.com/story/google-built-a-giant-mirror-dimension-internet-to-test-its-chrome-ai-agents/">Google Built a Giant ‘ Mirror Dimension ’ Internet to Test Its Chrome ...</a></li>

</ul>
</details>

**标签**: `#AI agents`, `#browser automation`, `#prompt injection`, `#AI safety testing`, `#Chrome`

---

<a id="item-tech-news-10"></a>
### [Windows Server 2028 默认移除 WoW64，32 位应用需手动装回](https://www.windowslatest.com/2026/11/23/32-bit-apps-days-are-numbered-as-microsoft-strips-support-bit-by-bit-starting-with-windows-server-2028-but-windows-11-is-safe-for-now/) ⭐️ 7.0/10

微软在 Ignite 2026 上宣布，Windows Server 2028 将默认不再包含 WoW64 兼容子系统，因此系统开箱即无法运行 32 位应用。该版本计划于 2027 年秋季与 Windows 11 27H2 一同发布。需要运行 32 位软件的用户可通过按需功能（FoD）重新安装 WoW64，在 Server Core 上通常使用 PowerShell 或 DISM 添加。微软称此举旨在减少攻击面、阻止 32 位恶意软件；Windows 11 目前仍保留 WoW64，微软未公布移除计划。

telegram · zaihuapd · 11月23日 03:03

**「背景」** WoW64 是 Windows 中负责在 64 位系统上运行 32 位应用的兼容层，此前长期作为系统默认组件存在。微软在 Ignite 2026 上宣布的 Windows Server 2028 改动，意味着这一默认行为首次在服务器版本上被反转，32 位应用需依赖按需功能（FoD）手动恢复支持。

**「影响与应对」** 依赖 32 位旧版软件或驱动的服务器部署在升级到 Windows Server 2028 后，需要额外通过 FoD 安装 WoW64，否则相关程序将无法启动；管理员应提前确认现有应用是否仍为 32 位，并规划在 Server Core 上用 PowerShell 或 DISM 启用该功能的流程。

**标签**: `#windows-server`, `#wow64`, `#32-bit-compatibility`, `#microsoft`, `#operating-systems`

---

<a id="item-tech-news-11"></a>
### [开源工具 nospeaker 用触控板振动合成语音](https://m.mydrivers.com/newsview/1167826.html?ref=https%3A//www.google.com/) ⭐️ 7.0/10

开发者 Cody Collier 开源了 nospeaker，通过驱动 MacBook Force Touch 触控板下的触觉马达以最高 4000 Hz 振动，让玻璃面板发出人耳可闻的声音并重放合成语音。工具先用 macOS 语音合成读入文字，每 10 毫秒提取两个共振峰，连同响度和音高一起重放，听感偏机器人。实测可听范围约 100 Hz 至 4 kHz，1 kHz 附近最清晰。它只念文字，不能播放音乐或视频，且绕开苹果公开的触觉接口、调用私有框架 MultitouchSupport；作者称目前只在 M5 Max 的 MacBook Pro 上跑通。

telegram · zaihuapd · 11月23日 07:16

**「背景」** MacBook 的 Force Touch 触控板本身没有扬声器，玻璃下方只有一个小型触觉马达，通过敲击玻璃来模拟“按下”的点击手感。nospeaker 正是利用这一硬件，把原本用于触觉反馈的马达改作发声源；其 GitHub 仓库说明该工具已签名并通过 Apple 公证，可从最新 release 获取。

**「使用限制」** 使用者需要配备 Force Touch 触控板的 MacBook，并接受依赖私有 MultitouchSupport 框架带来的兼容性风险；由于作者仅在 M5 Max 的 MacBook Pro 上验证，其他机型能否正常工作尚无证据。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.youtube.com/watch?v=YvheuEyHFPo">This Developer Made a MacBook Talk Without Speakers . - YouTube</a></li>
<li><a href="https://github.com/os6/nospeaker">os6/ nospeaker : make your macbook &#x27;s trackpad talk using its haptic ...</a></li>

</ul>
</details>

**标签**: `#haptics`, `#open-source`, `#macOS`, `#speech-synthesis`, `#hardware-hacking`

---

## 科技博客

<a id="item-tech-blog-1"></a>
### [在不确定时，不妨四处乱撞](https://seangoedecke.com/when-in-doubt-flail-about/) ⭐️ 6.0/10

rss · Sean Goedecke · 11月23日 00:00

**「背景」** 当工程师面对缺乏明确指引、不知道什么做法有效的模糊处境时，直觉上会想先谨慎等待、弄清情况再行动。作者认为这通常不是最优解，并承认自己的建议有风险：乱撞得不好，很容易在科技公司里毁掉声誉。

**「方案」** 作者主张在不确定时主动“乱撞”，但要撞得好：大量尝试不同做法，密切关注来自同事、专家和现实指标的反馈，并果断放弃没有获得积极反馈的方案。多试几个方案还有两个作用：既然你缺乏判断力，多数计划本来就会失败，试十个才可能有一个可行；同时手上方案多，就不会对某一个过度投入，能更快止损。他把这种策略分成三类。产品乱撞：在尚未找到产品市场契合的新产品上，围绕核心价值在边缘大量试错。他在 GitHub Models（现已退役）上做过许多不成功的功能和集成，但“用 GitHub Actions token 运行 AI 推理”意外地有黏性，后来成为“Continuous AI”的种子。工程乱撞：面对过于复杂、庞大或已经高度优化的系统，与其先通读全貌再提改动，不如做一批试探性修改看效果，没有改善就立刻放弃，有改善再深挖原因；他还提到 AI 代理可以帮忙快速生成多个重构方案供筛选。组织乱撞：当问题不是技术性的，比如两个团队互不沟通、某团队不满而总监或 VP 说不清原因时，可以尝试自动化部分手工工作、主动接手任务、提出可能大幅改善局面的长期计划。多数尝试不会有用，但至少表明你在努力；此时对反馈尤其敏感，及时放弃失败方案能积累信任，无视反馈继续推进则会让不满转向你。作者强调，从内部感受看这确实像在乱撞、反复失败、出丑，但这种不适是正常的，应当把它当作积极信号而非麻烦的征兆。

**「启示」** 作者的核心论点是：在信息不足的模糊情境中，快速、低成本地试错并严格依据反馈淘汰方案，比先求全懂再行动更有效。许多工程问题本质上是心理问题，能否忍受“像在乱撞”的感觉，往往决定了你能否真正变得有用。

**标签**: `#engineering-practice`, `#decision-making`, `#experimentation`, `#organizational-dynamics`, `#career-advice`

---

<a id="item-tech-blog-2"></a>
### [解读 OpenAI 公开的困惑度曲线](https://seangoedecke.com/notes-on-openais-perplexity-reveal/) ⭐️ 5.0/10

rss · Sean Goedecke · 11月23日 00:00

**「背景」** OpenAI 罕见地公开了一张展示其历代模型困惑度随时间变化的图表，这是外界迄今对前沿实验室内部训练指标最深入的一次窥视。作者 Sean Goedecke 以要点形式记录了自己的观察，既指出这张图的解读边界，也尝试从中读出预训练与强化学习（RL）的走向。

**「方案」** 作者首先强调困惑度必须针对某个特定留出数据集测量，因此即便 Anthropic 公布类似数据，也只能比较曲线斜率而非绝对值。困惑度只反映模型对留出文本的拟合程度，基本只适用于预训练；而据传前沿模型训练中预训练只占一半或更少的时间与算力，其余是 RL，这部分信息图中完全缺失。不过若相信“预训练创造能力、RL 只是引出能力”的观点，困惑度仍可作为能力的粗略代理，只是像随思维链提升的能力这类指标未必与它相关。

读图时作者注意到几点：几乎没有模型共享同一基座，传闻中 4o 与 4.1 被反复后训练的说法看来不成立，实际共享基座的是 o1 和 o3；表现惊艳的 o3 与令人失望的 4.1 竟同源；GPT-4.5 处可见 OpenAI 一度放弃做大预训练模型的痕迹，其困惑度接近 GPT-5.3-Codex 却远不如后者有用。作者不确定这是主动选择还是撞上了内部扩展墙。此外，从 GPT-5.2 起困惑度损失明显加速下降，这与“实验室已基本放弃预训练、全力转向 RL”的流行看法相矛盾——有人甚至因此质疑数据有效性。

在对齐层面，作者认为透明度本身有限：若要监测困惑度的突然骤降，只有 OpenAI 自己能发现，除非持续公布未发布预训练模型的数据；若要据此设定实验室共同遵守的阈值，则必须披露留出数据集的具体细节。最后，作者把曲线与主观体验对照：GPT-3.5 到 GPT-4 的巨大跃升符合体感，之后大致停滞直到 GPT-5.5 才再度加速；但他个人觉得 o3 和 GPT-5.3-Codex 才是“大跳”，这可能是因为这些模型被 RL 训练得更善用思维链、更少陷入谄媚，而这些都不会体现在困惑度里。

**「启示」** 作者的核心结论是：这张图确实揭示了预训练仍在快速进步，但困惑度只是预训练视角的窄窗口，无法说明 RL 与后训练带来的能力增益，因此解读时必须区分数据支持的结论与读图产生的推测。

**标签**: `#LLM pre-training`, `#perplexity metrics`, `#model evaluation`, `#AI safety transparency`, `#commentary`

---

## 财经新闻

<a id="item-finance-news-1"></a>
### [美股科技股大跌，亚洲多地出台稳市措施](https://news.bjd.com.cn/2026/11/22/12039852.shtml) ⭐️ 9.0/10

美国 AI 科技股周五遭大规模抛售，纳斯达克指数单日下跌 5.28%，费城半导体指数重挫近 11%；随后中国内地、韩国和中国台湾地区相继推出稳市措施，包括下调融资保证金最低比例至 80%、放宽回购限制以及禁止平盘以下卖空等。

telegram · zaihuapd · 11月22日 13:24

**「背景」** 这是美股科技股连续第二周大幅下跌：据腾讯新闻报道，11 月 20 日（周五）纳斯达克指数单日下跌 5.28%，抹平了全年涨幅，费城半导体指数单日下跌 10.73%，英伟达当周累计下跌 23%。此前 11 月 5 日，纳斯达克指数也曾单日下跌 5.52%，费城半导体指数跌幅超过 12%（来源：新浪财经）。

**「影响」** 台湾地区自 11 月 23 日起全面禁止平盘以下卖空，并将融券保证金比例由 130%提高至 150%，这会直接提高当地投资者做空股票的资金门槛和操作难度；韩国自 11 月 24 日起放宽上市公司每日回购订单数量限制，为期 3 个月，可能影响当地上市公司回购股票的节奏。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://finance.sina.com.cn/jjxw/2026-11-06/doc-inixucth5597355.shtml">11月5日美股大幅下挫，纳指跌5.52%、费城半导体指数跌超12%，南方基金...</a></li>
<li><a href="https://news.qq.com/rain/a/20261121A0B24800">纳指单日跌5.28% 抹平全年涨幅，英伟达一周大跌23%，AI热潮迎来重新定...</a></li>
<li><a href="https://www.mechrevo.com/">Mechrevo</a></li>

</ul>
</details>

**标签**: `#US tech selloff`, `#market stabilization`, `#short-selling rules`, `#margin requirements`, `#Asian equities`

---

<a id="item-finance-news-2"></a>
### [蚂蚁集团领投 Simplexity Robotics 1 亿美元融资，投后估值 16 亿美元](https://www.bloomberg.com/news/articles/2026-11-22/ant-group-bets-on-simplexity-to-thrive-in-china-s-humanoid-race) ⭐️ 7.0/10

彭博报道，中国具身智能公司 Simplexity Robotics 完成 1 亿美元 pre-A 轮融资，由蚂蚁集团领投，投后估值 16 亿美元；董事长兼联合创始人 Wang Kai 已向彭博确认。

telegram · zaihuapd · 11月23日 02:02

**「背景」** Simplexity Robotics 于 2025 年 7 月在杭州成立，核心团队来自理想汽车；据彭博报道，今年 3 月公司曾披露成立半年内完成五轮融资、累计 20 亿元人民币，当时投后估值已超过 10 亿美元。

**「影响」** 这笔融资为 Simplexity Robotics 提供了与宇树、优必选等已量产厂商争夺市场的资金，也显示蚂蚁、阿里、腾讯等大型互联网公司正通过投资布局中国人形机器人赛道。

**标签**: `#funding`, `#embodied AI`, `#robotics`, `#China tech`, `#venture capital`

---