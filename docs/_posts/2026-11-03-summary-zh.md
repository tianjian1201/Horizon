---
layout: default
title: "Horizon Summary: 2026-11-03 (ZH)"
date: 2026-11-03
lang: zh
---

> 从 144 条内容中筛选出 20 条重要资讯。

---

**科技新闻**
1. [Astra 直接读写权重，修复小型 Qwen 的循环并提升数学表现](#item-tech-news-1) ⭐️ 8.0/10
2. [小鼠研究：骨骼在机械应力下释放抗衰老蛋白](#item-tech-news-2) ⭐️ 8.0/10
3. [Linux 7.4-rc1 发布：变更集与贡献者数量创纪录](#item-tech-news-3) ⭐️ 8.0/10
4. [Linux 内核 MPTCP 高危漏洞 CVE-2026-98432 引关注](#item-tech-news-4) ⭐️ 8.0/10
5. [LongCat-2.5 发布：1.6 万亿参数原生多模态模型](#item-tech-news-5) ⭐️ 8.0/10
6. [ChatGPT 分享链接漏洞可致会话代码执行与账号接管](#item-tech-news-6) ⭐️ 8.0/10
7. [vLLM 发布 v0.33.0rc3：升级 PyTorch 2.14，仅保留 CUDA 13.0](#item-tech-news-7) ⭐️ 7.0/10
8. [Ubuntu LTS 内核近三周未修复关键 RCE 漏洞](#item-tech-news-8) ⭐️ 7.0/10
9. [Cloudflare 定向 DNS 区域构建：延迟减半、内存降 85%](#item-tech-news-9) ⭐️ 7.0/10
10. [Subvocal 推出 RF 传感智能眼镜，默读即可转文字](#item-tech-news-10) ⭐️ 7.0/10
11. [LeCun 新论文称 1.09 亿参数模型胜过 720 亿参数模型](#item-tech-news-11) ⭐️ 7.0/10
12. [为改时间越狱雷诺车载导航系统](#item-tech-news-12) ⭐️ 7.0/10
13. [IEEE 论文探讨利用 WiFi 设备识别击键](#item-tech-news-13) ⭐️ 7.0/10
14. [OpenAI 构建 Git 兼容后端 Pando 以支撑 Codex 规模开发](#item-tech-news-14) ⭐️ 7.0/10
15. [WIRED 调查：400 多个普通 AI 应用暗藏色情深伪功能](#item-tech-news-15) ⭐️ 7.0/10
16. [阿布扎比与 OpenAI 签四项协议，推「机器可读政府」](#item-tech-news-16) ⭐️ 7.0/10

**科技博客**
1. [Cloudflare 如何将 DNS 构建延迟减半并降低 85% 内存](#item-tech-blog-1) ⭐️ 8.0/10
2. [LLM 直接读写神经网络权重并非超人能力](#item-tech-blog-2) ⭐️ 7.0/10
3. [受众俘获：当代理指标反噬写作者](#item-tech-blog-3) ⭐️ 7.0/10

**财经新闻**
1. [Anthropic 更新招股书：前三季度营收 332 亿美元，净亏损 1040 亿美元](#item-finance-news-1) ⭐️ 8.0/10

---

## 科技新闻

<a id="item-tech-news-1"></a>
### [Astra 直接读写权重，修复小型 Qwen 的循环并提升数学表现](https://rikiyat.github.io/blog/weight-space-programming/) ⭐️ 8.0/10

一篇博客文章称，名为 Astra 的大语言模型能够解读并直接编辑小型 Qwen 模型的权重矩阵。据文章描述，Astra 将基础模型反复循环、难以给出答案的问题定位到第 15 层和第 19 层 MLP 写出的一个方向，并从这两层各 64 个输出列中共 131,072 个权重里减去该方向，从而消除了循环行为；文章还称这一改动让该小模型的数学能力提升约 5 倍。上述结果来自单一博客文章，且仅针对小型模型，尚未经过独立复现或测量。

hackernews · dbreunig · 11月2日 18:21 · [社区讨论](https://news.ycombinator.com/item?id=50341174)

**「背景」** 这篇博文提出的“权重空间编程”（Weight-Space Programming）指通用大模型直接读取并写入另一个网络的权重，不经过优化器，也不使用梯度下降，而是围绕自然语言规格进行修改，有时甚至不依赖环境反馈。据博文描述，名为 Astra 的前沿模型读取了 Qwen 3.5-0.8B 的权重，诊断出重复/循环的病态行为，并手工编辑了 131,072 个权重（第 15 层和第 19 层 down\_proj 各 64 个 MLP 输出列）来修复它。

**「影响与待验证之处」** 如果该结果可复现，它意味着模型编辑可以绕过微调，直接在权重空间中定位并移除特定失败模式，例如小推理模型的循环输出。但“5 倍”提升目前只是博客中的说法，适用范围限于小型 Qwen 模型，开发者在据此调整训练或部署流程前应先独立验证。

**「社区讨论」** 有评论者认为这令人震惊，并指出 LLM 对自身权重的原生理解可能超出预期；也有人认为这不算全新涌现能力，而可能源于训练数据中包含神经网络权重，类似早期 GPT 因训练数据含棋谱而擅长国际象棋。另有评论引用文章细节，强调 Astra 是通过减去特定方向来消除循环，而非依赖外部工具。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://rikiyat.github.io/blog/weight-space-programming/">Sparks of Weight - Space Programming : LLMs can natively read...</a></li>
<li><a href="https://huggingface.co/akhaliq/Qwen3.5-0.8B-weight-space-programming">akhaliq/ Qwen 3.5-0.8B- weight - space - programming · Hugging Face</a></li>

</ul>
</details>

**标签**: `#interpretability`, `#model-editing`, `#LLM`, `#Qwen`, `#weight-space`

---

<a id="item-tech-news-2"></a>
### [小鼠研究：骨骼在机械应力下释放抗衰老蛋白](https://www.solidot.org/story?sid=85771) ⭐️ 8.0/10

《Cell Metabolism》发表的一项小鼠研究显示，骨骼在运动等身体活动产生的机械应力（推、拉、扭转）下会释放名为骨细胞（osteocytes）的力感知细胞，并促使其分泌具有抗衰老作用的化学物质。研究团队通过轻微挤压小鼠腿骨，使小鼠寿命延长近 3 个月，报道称这相当于人类寿命延长约 9 年。研究负责人、南方医科大学的白晓春（Xiaochun Bai）表示，骨骼是能对机械力作出反应的活跃器官，在很大程度上决定全身衰老进程。研究人员尚未在人体中验证该效应，因此它未必适用于人类。

rss · 奇客 Solidot · 11月2日 08:46

**「背景」** 此前数十年的研究已确认体育锻炼与更长寿命相关，但背后的生物学机制一直不清楚。报道提到，多数科学家过去把线索集中在肌肉上，而这项研究把注意力转向骨骼中的骨细胞（osteocytes）——一种感知机械力的细胞。

**「适用范围与限制」** 目前证据仅来自小鼠，尚不能据此推断人类也能通过类似机械刺激获得延寿效果；该发现提出的是一种新机制假说，即骨骼而非肌肉可能是运动与长寿之间的关键中介，后续需要人体研究验证。

**标签**: `#衰老研究`, `#骨骼生物学`, `#运动生理学`, `#小鼠研究`, `#Cell Metabolism`

---

<a id="item-tech-news-3"></a>
### [Linux 7.4-rc1 发布：变更集与贡献者数量创纪录](https://www.solidot.org/story?sid=85770) ⭐️ 8.0/10

Linus Torvalds 在内核邮件列表宣布发布 Linux 7.4-rc1，合并窗口随之关闭，正式版预计在圣诞节前发布。该版本包含 18,591 个非合并变更集，创下纪录；共有 2,678 名开发者贡献代码，其中 625 人为首次参与。Torvalds 表示乐见 AI 相关补丁在合并窗口期间大量涌入，并认为这显示 AI 修复正逐渐融入常规开发流程。新特性包括 Radeon 核显支持 AMD PerfOpt 以增强 AI/LLM 性能、进一步完善 AMD Ryzen Zen 6 架构支持、默认启用 AMDGPU HDMI 2.1、英特尔 Nova Lake 笔记本支持 IPU8、更多高通 Snapdragon X2 笔记本支持，以及 EXT4 可选支持缓冲 IOma 等。

rss · 奇客 Solidot · 11月2日 07:22

**「背景」** Linux 内核开发采用合并窗口机制：每个新版本周期开始时，子系统维护者将准备好的补丁集中提交，窗口关闭后发布首个候选版本（rc1），随后经过多轮 rc 测试再推出正式版。因此 7.4-rc1 代表的是本周期新代码已基本合入，而非最终稳定版本。

**「影响」** 对硬件用户而言，Zen 6、Nova Lake 与 Snapdragon X2 等新平台的支持意味着相关设备在正式版发布后有望获得上游内核支持；但当前仅为候选版本，功能与稳定性仍可能在后续 rc 中调整，生产环境应等待正式版或发行版内核跟进。

**标签**: `#linux-kernel`, `#open-source`, `#ai-infrastructure`, `#hardware-support`, `#release`

---

<a id="item-tech-news-4"></a>
### [Linux 内核 MPTCP 高危漏洞 CVE-2026-98432 引关注](https://www.v2ex.com/t/1253993#reply6) ⭐️ 8.0/10

V2EX 论坛帖子指出 Linux 内核存在一个被标为 CVE-2026-98432 的高危漏洞，帖子称 Linux 内核 CVE 团队给出的评分为 9.8/10。按帖子描述，攻击者无需凭证、无需用户交互，只要服务器运行受影响内核并暴露 IPv4 TCP 端口即可远程利用；帖子还称 Anthropic 安全团队测试中 AI 模型在 50 分钟内写出利用脚本，攻陷运行 MPTCP 监听器的服务器并获得 root 权限。上述评分、测试与利用细节均来自这篇论坛帖，帖子未提供补丁版本、受影响内核范围或官方公告链接，相关说法尚待核实。发帖者表示已用 AI 连夜修补数台服务器，并计划改用 Tailscale 承载 SSH、用 Cloudflare Tunnel 接收网页流量。

rss · V2EX · 11月3日 00:20

**「背景」** 根据 AWS 与红帽的安全公告，CVE-2026-98432 是 Linux 内核 IPv4 网络子系统中的释放后使用（use-after-free）漏洞，影响 4.4 及之后的内核版本；远程未认证攻击者可在 TCP 连接请求处理过程中利用竞态条件，通过携带 IP 选项的构造数据包触发远程代码执行。红帽将其定为 Critical 并加快发布修复，The Hacker News 报道称 Ubuntu、RHEL 等发行版均受影响，内核 CVE 团队给出的 CVSS 评分为 9.8。

**「影响与应对」** 受影响的是运行未修补内核、且通过 IPv4 TCP 暴露服务的 Linux 服务器；Red Hat 将其定级为 Critical，并称攻击者无需本地权限或用户交互即可造成内核内存破坏或系统崩溃，并正加速发布修复。各厂商评分并不一致：内核 CNA 给出 CVSS 9.8，Red Hat、Oracle、SUSE 为 8.1，Amazon 为 7.0，因此运维方应以自身发行版的安全公告和补丁状态为准，优先升级内核；在补丁到位前，可考虑限制暴露面，例如仅经 Tailscale 等内网通道开放 SSH、用 Cloudflare Tunnel 承接网页流量。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://aws.amazon.com/security/security-bulletins/2026-160-aws/">CVE-2026-98432 - Linux kernel IPv4 TCP use-after-free ...</a></li>
<li><a href="https://access.redhat.com/security/vulnerabilities/RHSB-2026-016">RHSB-2026-016 Use-after-free - kernel IPv4 (CVE-2026-98432 ...</a></li>
<li><a href="https://thehackernews.com/2026/10/linux-kernel-tcp-flaw-with-98-cvss.html">Linux Kernel TCP Flaw With 9.8 CVSS Score Affects Ubuntu, Red ...</a></li>
<li><a href="https://access.redhat.com/security/cve/cve-2026-98432">CVE-2026-98432 - Red Hat Customer Portal</a></li>
<li><a href="https://access.redhat.com/security/vulnerabilities/RHSB-2026-016">RHSB-2026-016 Use-after-free - kernel IPv4 (CVE-2026-98432 ...</a></li>
<li><a href="https://github.com/typhoon1217/cve-2026-98432-mitigation">CVE-2026-98432 temporary mitigation - GitHub</a></li>

</ul>
</details>

**标签**: `#linux-kernel`, `#security-vulnerability`, `#mptcp`, `#ai-exploit`, `#remote-code-execution`

---

<a id="item-tech-news-5"></a>
### [LongCat-2.5 发布：1.6 万亿参数原生多模态模型](https://longcat.ai/blog/longcat-2.5/) ⭐️ 8.0/10

LongCat 团队发布 LongCat-2.5，这是一款面向长程 agent 任务的原生多模态模型，总参数 1.6 万亿，每个 token 激活约 480 亿参数。该模型在 LongCat-2.0 基础上强化了视觉理解与 agentic coding，将视觉信号编码为多级离散 token 并与文本统一处理，可完成视觉编程等任务。目前官网已可试用并接入 API，但 GitHub 与 HuggingFace 版本尚未开放，模型权重暂不可获取。

telegram · zaihuapd · 11月2日 03:08

**「背景」** LongCat-2.5 建立在 LongCat-2.0 之上。据 LongCat 官方博客，2026 年 6 月发布的 LongCat-2.0 是一个总参数 1.6 万亿、每 token 激活约 480 亿的 MoE 语言模型，并已开源。此次 2.5 版沿用相同的参数规模，但将模型扩展为原生多模态，并强化了视觉理解与 agentic coding 能力。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://longcat.chat/blog/longcat-2.0/">Introducing LongCat-2.0</a></li>
<li><a href="https://github.com/meituan-longcat/LongCat-2.0">GitHub - meituan-longcat/LongCat-2.0</a></li>

</ul>
</details>

**标签**: `#multimodal models`, `#large language models`, `#AI agents`, `#model release`, `#agentic coding`

---

<a id="item-tech-news-6"></a>
### [ChatGPT 分享链接漏洞可致会话代码执行与账号接管](https://www.parameter.ai/labs/we-found-a-gap-at-openai) ⭐️ 8.0/10

Parameter 研究团队披露，恶意 ChatGPT 分享链接可在已登录用户的会话中执行代码，读取私密对话并把数据发送到外部服务器；受害者只需打开链接，无需安装任何应用。该漏洞源于预览功能与图表组件之间的消息处理缺陷。OpenAI 已于 10 月 26 日修复，将其定级为 P1，并向研究团队支付 5000 美元赏金。

telegram · zaihuapd · 11月2日 10:24

**「背景」** 该漏洞依赖 ChatGPT 常规的对话分享功能：攻击者先构造恶意对话，用官方分享功能发布，再把链接发给目标用户；受害者打开分享页后，载荷便以 chatgpt.com 的身份在已登录的网页会话中执行。据 Parameter 的披露，团队于 10 月 18 日通过 OpenAI 漏洞赏金计划报告了该问题，OpenAI 随后在 10 月 26 日完成修复。

**「影响与应对」** 由于攻击不依赖用户安装或授权，风险集中在点击来源不明的 ChatGPT 分享链接这一环节；在修复已上线的情况下，用户应避免打开不可信分享链接，并留意会话中是否出现异常对话或数据外泄迹象。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.parameter.ai/labs/we-found-a-gap-at-openai">Do the Math: How We Took Over ChatGPT Accounts - parameter.ai</a></li>
<li><a href="https://thehackernews.com/2026/10/a-shared-chatgpt-link-could-run.html">A Shared ChatGPT Link Could Run Attacker Code in Your Session ...</a></li>

</ul>
</details>

**标签**: `#security`, `#ChatGPT`, `#vulnerability disclosure`, `#AI privacy`, `#account takeover`

---

<a id="item-tech-news-7"></a>
### [vLLM 发布 v0.33.0rc3：升级 PyTorch 2.14，仅保留 CUDA 13.0](https://github.com/vllm-project/vllm/releases/tag/v0.33.0rc3) ⭐️ 7.0/10

vLLM 发布 v0.33.0rc3 候选版本，包含 927 个提交、389 位贡献者（其中 122 位为新贡献者）。该版本将运行时升级到 PyTorch 2.14.0，并配套 torchvision 0.29.0 与 Triton 3.8.0；同时不再发布 CUDA 12.9 的 wheel 和 \`-cu129\`/\`-cu129-ubuntu2404\` 镜像，发布产物只提供 CUDA 13.0。模型侧新增 Reflection Beam-1.0（501B MoE、23B 激活）及其 DFlash2 drafter、Yandex AliceAI-Foundation-80B-A3B、Recursive Flint、Step-5 Preview 等多项集成。作为候选版本，其发布说明中的性能数字均为 PR 内基准，尚非独立验证结果。

github · khluu · 11月2日 10:10

**「背景」** vLLM 是广泛用于大模型推理与服务的框架，其发布产物按 CUDA、ROCm、XPU 等后端分别构建 wheel 与 Docker 镜像。此前用户可选用 CUDA 12.9 的 wheel 和 \`-cu129\` 镜像，本次候选版本将默认构建链整体迁移到 CUDA 13.0，并同步把 ROCm 默认镜像与 wheel 升级到 ROCm 10.0，ROCm 7.2 仍以 \`-rocm72\` 标签发布。

**「影响」** 依赖 CUDA 12.9 产物的部署需要改用默认的 CUDA 13.0 wheel 或镜像，或暂缓升级；使用 ROCm 的用户需注意默认版本已变为 ROCm 10.0，若仍要 ROCm 7.2 应显式拉取 \`-rocm72\` 标签。此外，Medusa 与 MLP speculator、旧版 Ray compiled-graph executor 已被移除，\`--mamba-cache-mode\`、LM Format Enforcer 和 \`--ir-op-priority\` 被弃用，NIXL connector 要求 NIXL 1.5 或更新版本，生成暂停期间收到的请求将返回 HTTP 503。

**标签**: `#vllm`, `#llm-inference`, `#pytorch`, `#cuda`, `#model-serving`

---

<a id="item-tech-news-8"></a>
### [Ubuntu LTS 内核近三周未修复关键 RCE 漏洞](https://freenode.net/article/ubuntu-lts-kernels-still-unfixed-for-critical-cve-2026-98432) ⭐️ 7.0/10

据 Hacker News 上的一篇报道，Ubuntu LTS 内核在关键远程代码执行漏洞 CVE-2026-98432 披露近三周后仍未获得补丁。该报道称 Ubuntu 也未提供任何缓解措施或操作指引，而评论者提到 RHEL 已发布一份安全公告，其中给出一种缓解方法，但同时声明该方法只能降低暴露风险、无法完全阻止攻击。上述说法均来自报道与社区讨论，所给材料中没有 CVE 技术细节、受影响内核版本范围或 Ubuntu 官方回应，因此漏洞的实际影响范围尚未得到独立确认。

hackernews · majorchord · 11月2日 18:39 · [社区讨论](https://news.ycombinator.com/item?id=50341462)

**「背景」** 该漏洞编号为 CVE-2026-98432，位于 Linux 内核 IPv4 TCP 握手路径，属于释放后使用（use-after-free）问题，CVSS 评分为 9.8。据外部报道，该漏洞也影响普通 TCP 连接，但尚未有公开演示证明在未监听 MPTCP 的服务器上可实现远程代码执行；关闭多路径 TCP 并不能修复该缺陷。Ubuntu 官方安全页面已收录该 CVE，而 Red Hat 已于 11 月 1 日为 RHEL 8、9、10 发布修复内核。

**「对运维者的实际影响」** 在 Ubuntu 官方补丁缺位期间，运维者只能依赖第三方手段：Red Hat 公告 RHSB-2026-016 将 CVE-2026-98432 定为 Critical，并称其缓解措施“可降低暴露面但无法完全阻止”该漏洞；另有社区脚本依据包元数据估算内核补丁状态，并在确认后套用该 Red Hat 缓解措施。由于该漏洞可经标准 IPv4 TCP 流量由未认证远程攻击者触发内核内存破坏，未打补丁的 Ubuntu LTS 主机在补丁发布前需自行评估是否采用这些非官方方案。

**「社区讨论」** 有评论者表示，自己原本默认使用 Ubuntu，但在升级时发现没有补丁，因而对它的信任动摇，并称未来新服务器可能不再选择 Ubuntu；也有人追问 Ubuntu 延迟修复的官方原因，认为内核升级并不罕见、补丁似乎并不复杂。另有评论者指出，消费级路由器和无线 AP 普遍运行 Linux，却几乎从不提供内核安全更新，这本身值得担忧；还有人称尚未见到在野利用，认为风险被夸大，并称存在多种缓解选项。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.bleepingcomputer.com/news/security/critical-linux-kernel-flaw-allows-remote-root-attacks-on-mptcp-servers/">Critical Linux kernel flaw allows remote root attacks on MPTCP servers</a></li>
<li><a href="https://ubuntu.com/security/CVE-2026-98432">CVE - 2026 - 98432 | Ubuntu</a></li>
<li><a href="https://atlasum.net/blog/cve-2026-98432-linux-ipv4-tcp-uaf">Linux &#x27;s October 2026 TCP Use-After-Free: CVE - 2026 - 98432 — Atlas</a></li>
<li><a href="https://access.redhat.com/security/vulnerabilities/RHSB-2026-016">RHSB-2026-016 Use-after-free - kernel IPv4 (CVE-2026-98432)</a></li>
<li><a href="https://access.redhat.com/security/cve/cve-2026-98432">CVE-2026-98432 - Red Hat Customer Portal</a></li>
<li><a href="https://github.com/soroushneshati/cve-2026-98432-ubuntu-mitigation">GitHub - soroushneshati/cve-2026-98432-ubuntu-mitigation ...</a></li>

</ul>
</details>

**标签**: `#linux`, `#security`, `#ubuntu`, `#vulnerability`, `#open-source`

---

<a id="item-tech-news-9"></a>
### [Cloudflare 定向 DNS 区域构建：延迟减半、内存降 85%](https://blog.cloudflare.com/dns-targeted-zone-builds/) ⭐️ 7.0/10

Cloudflare 在工程博客中介绍了其 DNS 的“定向区域构建”（targeted zone builds）优化：构建延迟减半，内存占用降低 85%。该文由 Cloudflare 官方发布，属于其自述的工程改进结果，而非第三方独立测量；具体实现细节与适用条件需以原文为准。

hackernews · wondersky · 11月2日 14:47 · [社区讨论](https://news.ycombinator.com/item?id=50337558)

**「背景」** Cloudflare 的 DNS 服务以托管权威域名解析为核心，每个接入的域名（zone）都需要在后台构建对应的解析数据。此次优化针对的是这一“zone 构建”流程，即当域名记录发生变化时重新生成可对外服务的 DNS 数据。博客标题给出的结果是构建延迟减半、内存占用下降 85%，但摘要未说明具体实现方式与测量条件。

**「社区讨论」** 有评论者关注内存稀缺是否会推动软件更注重效率，并追问降低内存占用的研发投入回报率，认为还需考虑未来一两年内存价格可能持续高企的情形。另有评论者质疑每秒约 700 次变更在其规模下是否偏低，也有人好奇这类改进长期会带来哪些缺陷。

**标签**: `#dns`, `#performance-optimization`, `#systems-engineering`, `#memory-efficiency`, `#cloudflare`

---

<a id="item-tech-news-10"></a>
### [Subvocal 推出 RF 传感智能眼镜，默读即可转文字](https://news.ycombinator.com/item?id=50340088) ⭐️ 7.0/10

YC F26 公司 The Subvocal Company 在 Hacker News 发布 Show HN，展示一副通过射频（RF）传感解码无声口型、将其转为文字的智能眼镜，声称解码速度可达正常语速。创始人 Aarush 和 Arnav 表示，他们最初在黑客松上用 EMG 电极做原型，因出汗、电气干扰、佩戴位置不稳定以及用户不愿在脸上贴电极而改用 RF：眼镜框内嵌天线，发射类似蓝牙的无线电波穿过面部，由舌、唇和软腭的无声动作调制信号，再用基础模型解码为文本。团队称通过付费招募受试者朗读提示词来扩大预训练数据，跨用户泛化性能随之提升，视频中演示者仅用约 20 句校准。目前产品仍是原型，计划 2027 年第一季度发货，首批 500 台已开放预购并附 200 美元折扣；帖中未给出错误率、延迟或功耗等可验证指标。

hackernews · aarushyadav · 11月2日 17:16

**「背景」** Subvocal 团队在帖子中说明，其灵感来自 MIT Media Lab 的 AlterEgo 无声语音系统，并曾在黑客松上尝试用 EMG 电极复刻。据 MIT Media Lab 介绍，AlterEgo 项目始于 2018 年，通过采集头部、颈部和下颌的肌肉与神经活动来识别未出声的词语，并于 2025 年初分拆为一家营利公司。Subvocal 表示，由于 EMG 受汗液、电干扰和电极佩戴位置影响，且用户不愿在脸上贴电极，团队改用射频传感，把天线嵌入眼镜框。

**「影响与限制」** 对想在图书馆、办公室或公共场合使用语音听写的人，这套方案的价值在于无需出声即可输入；但当前可依据的信息只有演示视频和团队自述，尚无独立测量结果。预购者实际拿到的是尚未定型的产品：团队称未来数月继续研发，把原型做成官网展示的成品，并扩大数据集以改善边缘情况。

**「社区讨论」** 评论者普遍认可其在无障碍和免手操作上的潜力，但提出了具体顾虑：有人担心 RF 芯片长期贴近眼睛和大脑的健康影响以及电池续航；有戴处方眼镜、头型较大的用户希望产品能做成可夹在现有眼镜上的配件，而不是整套镜框；还有人请求保留产品图中带金属调节的鼻托，以适应非标准鼻型。另有评论认为官网应补充帖文中关于工作原理的细节。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/AlterEgo">AlterEgo - Wikipedia</a></li>
<li><a href="https://www.media.mit.edu/projects/alterego/overview/">Overview ‹ AlterEgo — MIT Media Lab</a></li>
<li><a href="https://www.media.mit.edu/publications/alterego-IUI/">AlterEgo : A Personalized Wearable Silent Speech ... — MIT Media Lab</a></li>

</ul>
</details>

**标签**: `#human-computer-interaction`, `#wearables`, `#silent-speech`, `#accessibility`, `#signal-processing`

---

<a id="item-tech-news-11"></a>
### [LeCun 新论文称 1.09 亿参数模型胜过 720 亿参数模型](https://www.infoq.cn/article/pWwkDpoFHIsfw9aCRkij?utm_source=rss&amp;utm_medium=article) ⭐️ 7.0/10

InfoQ 报道称，Yann LeCun 等人发表了一篇新论文，对 Scaling Law 的假设提出挑战，并声称一个 1.09 亿参数的模型在“理解世界”方面胜过 720 亿参数的模型。目前可获取的内容只有标题和原文链接，没有披露论文的方法、评测基准、对比条件或同行评审状态，因此这一结论尚无法核实。报道将论文定位为对“模型越大越懂世界”这一主流判断的反例。

rss · InfoQ 中文 · 11月2日 15:17

**「背景」** LeCun 长期主张当前大语言模型依赖的“预测下一个词”路线不足以让模型真正理解世界，并推动以联合嵌入预测架构（JEPA）为代表的替代方向。据搜索结果，这篇新论文由 LeCun 与布朗大学的 Randall Balestriero 合作完成，来自其在巴黎的实验室，论文称 1.09 亿参数的文本模型在与图像模型的对齐精度上超过参数量约 660 倍的语言模型，并将这一结果归因于 JEPA 侧重理解而非知识积累，从而大幅降低对参数和数据的需求。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://startupfortune.com/yann-lecuns-tiny-109m-model-aligns-with-vision-better-than-72b-llms/">Yann LeCun&#x27;s tiny 109M model aligns with vision better than ...</a></li>
<li><a href="https://agihunt.info/en/e/1a197fab6db5336aaec7a6e4edf">LeCun&#x27;s New Paper: 109M-Parameter Model Beats… · AGI Hunt</a></li>

</ul>
</details>

**标签**: `#AI research`, `#Scaling Law`, `#Yann LeCun`, `#machine learning`, `#world models`

---

<a id="item-tech-news-12"></a>
### [为改时间越狱雷诺车载导航系统](https://blog.nns.ee/2026/11/02/renault-hack/) ⭐️ 7.0/10

一篇博客文章记录了作者对雷诺车载导航系统进行越狱（jailbreak）的过程，目的是修改系统时钟。文章标题显示这是一次针对嵌入式车机固件的逆向工程实践，涉及嵌入式系统、逆向工程与汽车安全等主题。由于目前仅有标题和链接，具体的破解方法、涉及的车型与固件版本、以及是否成功修改时间等细节尚无法核实。

rss · Lobsters · 11月2日 16:30

**「背景」** 该文属于嵌入式设备固件逆向与“越狱”类实践：作者通过修改车载导航系统的固件来获得原本被厂商限制的功能，这次的目标仅是调整时钟。此类操作通常涉及提取固件、分析启动与更新机制，并绕过签名或校验限制，与 Kindle 等消费设备越狱在思路上相近。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://kindlemodding.org/jailbreaking/">KindleModding - Jailbreaking Your Kindle</a></li>

</ul>
</details>

**标签**: `#embedded systems`, `#reverse engineering`, `#car hacking`, `#firmware`, `#security`

---

<a id="item-tech-news-13"></a>
### [IEEE 论文探讨利用 WiFi 设备识别击键](https://ieeexplore.ieee.org/document/7875144) ⭐️ 7.0/10

该条目仅提供了一条指向 IEEE Xplore 论文《Recognizing Keystrokes Using WiFi Devices》的链接，未附摘要、方法或结果，因此无法从现有材料核实其具体技术细节与结论。条目本身只能确认这是一篇经同行评审、主题为通过 WiFi 信号识别击键的论文，属于无线感知与安全隐私交叉方向。

rss · Lobsters · 11月2日 14:43

**「背景」** 该论文提出名为 WiKey 的击键识别系统，利用两台商用现成 WiFi 设备（如路由器和笔记本电脑）进行信号收发，通过分析信道状态信息的变化来推断击键内容。论文发表于《IEEE Journal on Selected Areas in Communications》，作者为 Kamran Ali、Alex X. Liu、Wei Wang 和 Muhammad Shahzad，DOI 为 10.1109/JSAC.2017.2680998。

**「对安全与隐私的影响」** 该研究说明，普通 WiFi 设备采集的信道状态信息（CSI）可被用于推断键盘输入，这意味着在具备相应接收设备和训练数据的环境中，键盘输入可能通过无线信号侧信道泄露。相关系统 WiKey 使用 TP-Link TL-WR1043ND 路由器与 Lenovo X200 笔记本实现，因此其风险讨论应针对此类可获取的商用硬件，而非假设需要专用传感设备。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://ieeexplore.ieee.org/abstract/document/7875144/">Recognizing Keystrokes Using WiFi Devices | IEEE Xplore</a></li>
<li><a href="https://wellesu.com/10.1109/JSAC.2017.2680998">Recognizing Keystrokes Using WiFi Devices</a></li>
<li><a href="https://dl.acm.org/doi/10.1145/2789168.2790109">Keystroke Recognition Using WiFi Signals | Proceedings of the ...</a></li>
<li><a href="https://ieeexplore.ieee.org/abstract/document/7875144">Recognizing Keystrokes Using WiFi Devices | IEEE Journals ...</a></li>

</ul>
</details>

**标签**: `#wireless-sensing`, `#security-privacy`, `#wifi`, `#research-paper`

---

<a id="item-tech-news-14"></a>
### [OpenAI 构建 Git 兼容后端 Pando 以支撑 Codex 规模开发](https://openai.com/index/scaling-git-at-openai) ⭐️ 7.0/10

OpenAI 发布文章，介绍其构建的 Git 兼容后端 Pando，称其设计目标是支撑 Codex 所带来的开发规模。目前公开内容仅为一句概述，未披露架构细节、性能基准、版本号或可用性信息，因此 Pando 的实际能力与是否已投入生产尚无法从现有材料确认。

rss · OpenAI News · 11月2日 15:30

**「背景」** OpenAI 在官方文章中称，Pando 是一个与 Git 兼容的后端，用于支撑 Codex 带来的开发规模，并已在其内部单仓库（monorepo）的开发中投入使用，同时不改变现有的 Git 工作流。第三方报道称该系统旨在应对更高的并发，并提到推送延迟等性能改善，但这些数字尚未在 OpenAI 的原始说明中得到核实。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://openai.com/index/scaling-git-at-openai/">Scaling Git at OpenAI</a></li>
<li><a href="https://blockchain.news/news/openai-details-pando-git-compatible-backend-for-codex-scale-development">OpenAI details Pando, a Git-compatible backend for Codex ...</a></li>
<li><a href="https://www.explainx.ai/blog/openai-pando-git-backend-codex-monorepo-5x-faster-pushes-petabyte-per-day-2026">OpenAI Pando: The Git Backend It Built for Codex-Scale Work</a></li>

</ul>
</details>

**标签**: `#git`, `#developer-infrastructure`, `#version-control`, `#openai`, `#scaling`

---

<a id="item-tech-news-15"></a>
### [WIRED 调查：400 多个普通 AI 应用暗藏色情深伪功能](https://www.wired.com/story/hundreds-of-mundane-ai-apps-are-hiding-abusive-deepfake-features/) ⭐️ 7.0/10

WIRED 11 月 2 日发布的调查称，一个由 400 多个关联应用与网站组成的网络，以宠物画像、语言学习等普通 AI 工具为掩护，在特定条件下加载色情深度伪造界面，允许用户上传他人照片生成露骨图像或视频。研究人员通过代码、域名和广告追踪确认这些应用与网站之间的关联；截至 9 月，其中 27 款应用仍在 Google Play 上架，累计下载超过 35 万次，不少被标为适合所有年龄。苹果在收到 WIRED 提供的线索后下架了 19 款应用，称开发者在审核通过后替换了远端网页内容；谷歌在被联系前已移除其中多数应用；Meta 表示已阻止相关 209 款应用投放广告。报道依据中文代码、托管信息和域名等线索，将该网络与中文开发者及一家香港注册公司联系起来，但这一关联属于媒体与研究人员的调查判断，相关运营方未回应置评请求。

telegram · zaihuapd · 11月2日 12:45

**「背景」** 此类滥用依赖应用商店审核与远端内容加载之间的时间差：应用以无害功能通过审核，之后在服务端替换页面内容，从而绕过静态审查。深度伪造生成能力已较为普及，使上传他人照片生成露骨图像的门槛显著降低，这也让平台的事后下架和广告拦截成为主要处置手段。

**「影响」** 对普通用户而言，被标为适合所有年龄的应用可能在实际使用中暴露色情深度伪造入口，上传的照片也可能被用于生成未经同意的露骨内容。对开发者与平台而言，该案例说明仅靠上架时审核不足以约束远端加载的内容，苹果、谷歌和 Meta 分别采取了应用下架与广告拦截措施，但报道未说明这些措施是否覆盖全部 400 多个应用与网站。

**标签**: `#AI safety`, `#deepfakes`, `#app store security`, `#trust and safety`, `#platform moderation`

---

<a id="item-tech-news-16"></a>
### [阿布扎比与 OpenAI 签四项协议，推「机器可读政府」](https://thenextweb.com/news/openai-abu-dhabi-deals-machine-readable-government-mubadala) ⭐️ 7.0/10

阿布扎比与 OpenAI 签署四项协议，其中「机器可读政府」计划把政策法规转换为 AI 可读格式，用于协助官员核查许可与证书申请，并已在食品进口场景试点，最终决定权仍由官员保留。其余协议包括：穆巴达拉与 OpenAI、G42 旗下 Inception42 合作开展投资分析；Inception42 另签五年协议，向阿联酋政府、企业和学校提供模型；ADNOC 成为首个使用 OpenAI Frontier 平台的能源公司。上述内容来自单一二手报道，具体部署规模、时间表和合同金额均未披露。

telegram · zaihuapd · 11月2日 15:55

**「背景」** 阿布扎比此前已通过 G42 等本地机构与 OpenAI 建立合作，此次四项协议是在既有关系上扩展到政府流程、能源和投资分析等具体场景。据 CNBC 报道，ADNOC 与 G42 签署协议部署 OpenAI 的前沿技术，穆巴达拉、Inception42 与 OpenAI 则另签协议将先进 AI 用于投资分析；《国民报》称阿布扎比同步启动其称为全球首个「AI 原生机器可读政府」计划，把政策转为 AI 可读格式用于合规任务。

**「影响」** 对阿联酋的政府机构和企业而言，这些协议意味着监管文本将以 AI 可读形式进入许可审查流程，相关方需关注法规转换的准确性与人工复核机制；ADNOC 作为首个接入 OpenAI Frontier 平台的能源公司，其使用范围和条件尚未公开。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.cnbc.com/2026/11/02/openai-abu-dhabi-ai-deals.html">OpenAI deepens Abu Dhabi foothold as Sam Altman inks new deals</a></li>
<li><a href="https://www.thenationalnews.com/business/energy/2026/11/02/adnoc-signs-agreement-with-openai-and-g42-to-deploy-frontier-ai/">Adnoc becomes first energy company to deploy OpenAI Frontier</a></li>

</ul>
</details>

**标签**: `#AI governance`, `#OpenAI`, `#government technology`, `#enterprise AI`, `#regulation`

---

## 科技博客

<a id="item-tech-blog-1"></a>
### [Cloudflare 如何将 DNS 构建延迟减半并降低 85% 内存](https://blog.cloudflare.com/dns-targeted-zone-builds/) ⭐️ 8.0/10

rss · Cloudflare Blog · 11月2日 14:00

**「背景」** Cloudflare 的 Zone Builder 负责把 DNS 记录和区域设置变更转换为边缘可用的数据。2022 年时它每秒处理约 250 条记录变更，如今约 700 条，另有约 100 个区域设置类事件；部分区域已超过 2000 万条记录，并预计向数亿条增长。记录级增量构建早已实现，但区域设置变更仍会触发全量重建，在大区域上既慢又占内存。

**「方案」** 作者的核心思路是：只做能证明安全的最小构建。团队先让事件携带变更字段及前后值，再把每个设置沿代码路径分类；无法确定影响范围时，规划器绝不把不确定性转化为更少的工作，仍回退到全量构建。规划器据此选择五种构建之一：仅资源、资源加元数据、顶点加元数据、清除、全量。关键约束是目标构建写入的每个键必须与全量构建逐字节一致。由于同一域名可能对应多个内部区域，共享元数据键需在写入前从最新发布快照整体重建，并先写记录再写引用它们的元数据。事件到达与数据库副本可见之间存在延迟，因此规划分两次：事件先产生保守工作清单，执行前再读最新快照，必要时升级为全量、降级为清除或跳过。统一调度器合并同一区域的待处理工作，并分别跟踪 DNS 工作与待确认的 Kafka 消息；软提交保证提交位点不越过未完成消息，重启时宁可重放也不丢变更。超过记录数阈值的超大区域不再升级为全量构建，而是重建顶点、元数据和事件涉及的名称，因为全量构建根本无法完成且会阻塞分区。上线前用镜像环境与生产做同事件、同数据库的对照，按区域名哈希灰度，确保同名区域落在同一调度器。24 小时测量中 92.95% 的构建避免了全量重建，全量构建占比从 11.88% 降至 7.04%；聚合工作集内存均值从 49 GiB 降至 7 GiB，峰值从 79 GiB 降至 12 GiB；p99 最大尖峰从 14.6 分钟降至 1.21 分钟。作者也坦承这些数字混合了所有构建类型和套餐，并非单区域延迟保证，且早期百分位因直方图桶过粗而偏高，改用原生直方图后 p90 约 5.5 秒、p99 约 12 秒。

**「启示」** 作者认为，全量构建无法也不应被完全消灭：首次发布、影响全区域的变更和无法说明原因的事件仍需全量，但对小区域而言这很便宜。真正的收益来自让过去会重建超大区域的事件不再触发全量构建，而安全增量构建的关键在于把不确定性默认转化为更多工作，并让消息确认与构建结果严格耦合。

**标签**: `#distributed-systems`, `#dns`, `#incremental-builds`, `#kafka`, `#performance-engineering`

---

<a id="item-tech-blog-2"></a>
### [LLM 直接读写神经网络权重并非超人能力](https://seangoedecke.com/llms-are-not-superhuman-at-reading-and-writing-neural-network-weights/) ⭐️ 7.0/10

rss · Sean Goedecke · 11月3日 00:00

**「背景」** 一篇论文声称，前沿大模型 GPT-6 Astra 能直接读取并修改神经网络权重，表现“远超人类或常规算法”，例如仅凭权重识别小型网络训练的是哪款游戏，并通过原生编辑权重显著提升 0.8B Qwen 模型的数学能力。作者认为，这类能力若属实，可能指向递归自我改进，因此值得认真审视。

**「方案」** 作者的核心论点是：这些任务一名聪明的 ML 研究者同样能完成，并不构成超人能力。识别游戏之所以看似神奇，是因为模型输入通道直接对应 8x8 网格单元且带有“agent”“移动物体”等标签，只需对第一层 32 个权重按输入通道取 L2 范数，三行 Python 就能画出热力图；从热力图中玩家位置和移动物体的分布即可辨认 Breakout、Pac-Man 等游戏。Astra 不执行代码而在“脑中”算出范数确实是一种超人心算，但不是超人的 AI 研究。至于最亮眼的 Qwen 修复，作者指出该模型并非普遍数学差，而是超过 32k token 后会陷入循环，导致长程数学任务必然失败，而所有 32k 以内的题目原本都能解出。作者自己会采用 steering 思路：构造循环与非循环推理文本，计算残差差异，衡量各权重贡献并裁剪高贡献权重，这正是 Heretic 消融（abliteration）的套路；而 Astra 实际做的也正是写四对文本、用 Python 测量导致循环的权重、逐步削减并测试，最终找到停止循环的补丁。作者由此类比：LLM 能输出机器码并修改编译后的二进制固然有趣，但处理二进制的最佳方式仍是写源码再编译；同理，更新模型权重的最佳方式仍是正常训练。

**「启示」** 作者总结，LLM 直接编辑权重是一项令人印象深刻的技巧，而非将改变 AI 研究方式的全新能力；智能 LLM 对 AI 研究的真正帮助将体现在改进训练上，而不是神奇地直接微调权重。

**标签**: `#LLM evaluation`, `#mechanistic interpretability`, `#weight editing`, `#AI research methodology`, `#steering vectors`

---

<a id="item-tech-blog-3"></a>
### [受众俘获：当代理指标反噬写作者](https://seangoedecke.com/audience-capture/) ⭐️ 7.0/10

rss · Sean Goedecke · 11月3日 00:00

**「背景」** 作者坦言，自己有着工程师的本能：看到互动量这类指标，就想把它做上去。而网络写作的环境恰好为此量身定做——阅读数、来源、按点赞排序的评论、平台对互动的现金奖励，都在推着写作者追逐数字。问题在于，这些数字只是代理指标，并不等同于作者真正在意的东西。

**「方案」** 作者真正想要的是：让聪明且了解情况的读者认真思考他的观点、获得有实际经验的读者反馈、参与有意思的行业讨论、说服他人接受自己深信的看法、建立严谨思考者的声誉。但一万个人点进来扫一眼就关掉，对他毫无益处；一百个人在 Hacker News 上只看标题、不点开却留下评论，益处也很有限。这些“点击者”与真正会阅读思考的“读者”几乎不重叠，可在指标上二者无法区分。

于是过度优化代理指标会让它偏离目标价值，导致最可怕的一种受众俘获：被自己其实并不想要的受众俘获。比如写“微服务很蠢”这类热点话题带来大量浏览，作者便有理由继续写，数字持续攀升；但真正细读文章、他真正在乎的那批读者会逐渐流失，而点击者本就不读，所以这其实是失败——用点击者和嘲讽者替换了认真思考的读者。作者把这一洞察推广到工程职业：关键在于知道自己玩的是哪种游戏。看浏览量、Jira 工单指标是代理游戏；赢得自己尊重之人的尊重、做出令自己骄傲的技术工作、说服他人相信你认为真实的事，才是真实游戏。区别不在于目标本身是否客观有价值，而在于你自己是否在乎它。为了孩子上好学校而去讨好不喜欢的人，适度“出卖”是健康且可取的，但必须睁着眼睛做；最糟的是在什么都换不回来的情况下，出于习惯而出卖自己。作者举例说，他写得最尽兴的哲学、历史或枯燥技术解释类文章往往反响平平，而一些关于行业变迁的哀叹之所以流行，只是因为替人提供了宣泄焦虑的出口，并非因为他写了什么。若只为互动量，何必写博客，直接发引战内容和色情内容岂不更有效？他写作是为了那 5% 会认真阅读、思考、与人讨论、发邮件反馈的读者。原始浏览量能帮文章触达更多这样的人，却几乎不能告诉他是否真的吸引了他们；他只能依靠自己的品味，以及少数读者来信和留言带来的微弱信号。

**「启示」** 互动量、工单数、晋升这类代理指标一旦被过度优化，就会与真正在乎的价值脱节，甚至把你俘获进一个你并不想要的受众或角色之中。作者的核心主张是：清楚自己玩的是代理游戏还是真实游戏，可以有意识地做交易，但绝不要出于习惯而出卖自己。

**标签**: `#proxy metrics`, `#Goodhart&\#x27;s law`, `#engineering career`, `#writing`, `#audience capture`

---

## 财经新闻

<a id="item-finance-news-1"></a>
### [Anthropic 更新招股书：前三季度营收 332 亿美元，净亏损 1040 亿美元](https://www.cnbc.com/2026/11/02/anthropic-ant-s-1-quarter-financials.html) ⭐️ 8.0/10

Anthropic 在 11 月 2 日更新的 IPO 招股书中披露，截至 2026 年 9 月 30 日的前三季度营收为 332.4 亿美元，同比增长约 1200%；同期净亏损 1040 亿美元，高于去年同期的 251 亿美元。

telegram · zaihuapd · 11月2日 15:12

**「背景」** 公司称，上半年净亏损主要来自可转换债券及衍生负债的公允价值变动，并不完全代表实际经营现金消耗；招股书还显示，其累计采购及租赁承诺约 8954 亿美元，几乎全部用于算力和基础设施。

**标签**: `#Anthropic`, `#IPO filing`, `#AI industry`, `#corporate earnings`, `#capital commitments`

---