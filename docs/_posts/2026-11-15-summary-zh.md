---
layout: default
title: "Horizon Summary: 2026-11-15 (ZH)"
date: 2026-11-15
lang: zh
---

> 从 104 条内容中筛选出 13 条重要资讯。

---

**科技新闻**
1. [SpaceX 在 Flight 15 中成功捕获星舰助推器](#item-tech-news-1) ⭐️ 8.0/10
2. [Lovable 生成应用泄露护照信息与逾 20 万条私信](#item-tech-news-2) ⭐️ 8.0/10
3. [Project Zero 将漏洞披露窗口从 90 天逐步缩短至 30 天](#item-tech-news-3) ⭐️ 8.0/10
4. [星舰首次在轨道返回后由发射塔机械臂捕获](#item-tech-news-4) ⭐️ 8.0/10
5. [Google 介绍 Antigravity 的 /teamwork 多智能体功能](#item-tech-news-5) ⭐️ 7.0/10
6. [纯 JAX 约 200 行实现 DeepSeek V3 推理](#item-tech-news-6) ⭐️ 7.0/10
7. [微软 365 全球宕机逾 24 小时，Teams、Outlook 与 Copilot 受影响](#item-tech-news-7) ⭐️ 7.0/10
8. [开发者实测：AI Agent 在 Minecraft 建造大型建筑时，编译校验无法保证空间正确](#item-tech-news-8) ⭐️ 7.0/10
9. [Cloudflare 开源 AI 代理浏览器 Kitesurf](#item-tech-news-9) ⭐️ 7.0/10
10. [意大利以违规读取相册为由对 Meta 罚款 8.05 亿欧元](#item-tech-news-10) ⭐️ 7.0/10
11. [特斯拉 Cybercab 订阅协议：月租 299 美元才能开动](#item-tech-news-11) ⭐️ 7.0/10
12. [FAA 全国停飞：铜线换光纤升级引发路由故障](#item-tech-news-12) ⭐️ 7.0/10

**财经新闻**
1. [Anthropic IPO 据报拒绝中国内地及香港投资者下单](#item-finance-news-1) ⭐️ 8.0/10

---

## 科技新闻

<a id="item-tech-news-1"></a>
### [SpaceX 在 Flight 15 中成功捕获星舰助推器](https://www.spacex.com/launches/starship-flight-15) ⭐️ 8.0/10

SpaceX 在 Flight 15 结束时成功捕获了星舰（Starship）的超重型助推器，公司通过 X 帖子和直播视频公布了这一结果。这是星舰走向完全可重复使用运载器的关键一步，但提交材料本身只包含链接，未提供捕获高度、助推器状态或后续复用计划等技术细节。

hackernews · ls612 · 11月14日 21:22 · [社区讨论](https://news.ycombinator.com/item?id=50500963)

**「背景」** 星舰此前的试飞已多次尝试用发射塔机械臂回收超重型助推器，而 Flight 15 原计划同时回收助推器与飞船上面级，若成功将是星舰上面级首次被捕获、Block 3 助推器首次被捕获，也是航天史上首次在轨道飞行中回收全部级段。不过有报道称本次飞行中 SpaceX 放弃了助推器塔捕，将其改为溅落墨西哥湾，这与提交标题所称的“捕获”存在出入，具体结果仍需以官方信息为准。

**「影响」** 对关注发射成本的一方而言，助推器回收是可复用链条中必须先打通的一环；但评论者指出，真正的成本下降还取决于热防护能否承受再入、同一批飞船能否重复飞行并再次被捕获。在 SpaceX 公布这些数据之前，完全可复用的经济性仍属待验证的预期。

**「社区讨论」** Hacker News 评论普遍祝贺工程团队，并认为若热防护罩经受住考验，下一步应是“双捕获”以及让同一批飞船重复飞行。ChuckMcM 提出，若助推器多带几吨推进剂和氧化剂，或许能同时捕获两者，但他也承认最终入轨质量分数仍不清楚，并以猎鹰 9 助推器加整流罩约占成本 60% 作对比，认为 100% 可复用优于 60% 可复用。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Starship_flight_15">Starship flight 15 - Wikipedia</a></li>
<li><a href="https://interestingengineering.com/space/spacex-starship-15th-flight-booster-catch-skipped">SpaceX Starship 15’s Super Heavy booster skips tower catch ...</a></li>
<li><a href="https://www.spacex.com/launches/starship-flight-15">Starship Flight 15 - SpaceX</a></li>

</ul>
</details>

**标签**: `#spaceflight`, `#reusable-rockets`, `#spacex`, `#hardware`, `#engineering`

---

<a id="item-tech-news-2"></a>
### [Lovable 生成应用泄露护照信息与逾 20 万条私信](https://www.crissyfield.de/research/lovable-en/) ⭐️ 8.0/10

安全研究人员发现，用 AI 应用构建工具 Lovable 生成的应用暴露了敏感用户数据，包括护照信息和超过 20 万条私人消息。研究将主要原因归结为行级安全（Row-Level Security）配置不足。Lovable 安全负责人 Igor Andri 在讨论中回应称，根本原因正是其扫描机制旨在捕获的 RLS 不足问题，并称平台会在发布前自动扫描每个应用，还提供更深入的 SAST 扫描，两者对所有用户免费，用户可选用“Fix”修复或开启后台自动修复。

hackernews · armcat · 11月14日 17:43 · [社区讨论](https://news.ycombinator.com/item?id=50499017)

**「背景」** 行级安全（Row-Level Security，RLS）是 Supabase 所依托的 PostgreSQL 数据库内置的访问控制机制，通过数据库内的授权规则限制每个用户能读取或修改哪些数据行；若未启用或配置不当，任何已认证用户都可能读取库中所有记录。Supabase 官方文档将其描述为提供细粒度授权规则的方式，而第三方教程也指出，缺少 RLS 的应用只能算可运行的演示，不能算可安全上线的产品。

**「影响与应对」** 对使用 Lovable 构建并公开上线的应用而言，默认安全配置是否到位直接决定数据是否可被外部读取；评论者指出，这类应用往往只需在浏览器中检查网络请求即可获取数据，无需复杂攻击手段。开发者应主动核查所建应用的 RLS 策略与数据库默认权限，而不应仅依赖平台扫描结果。

**「社区讨论」** 有评论者认为 Supabase 也负有责任，指出其多年前为降低上手门槛而选择的默认设置，据称在 10 月 30 日已修复，但有报告称既有项目的默认值仍然生效。另有观点认为，数据泄露并非 AI 时代才有，区别在于 AI 生成应用数量庞大、攻击门槛低，且普通用户不清楚自己所用应用的风险，因此平台应提供默认拒绝的数据库、最小权限 API 和自动化鉴权测试等更安全的默认配置。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.rocket.new/blog/how-to-enable-supabase-row-level-security-in-your-ai-built-app">How to Enable Supabase Row - Level Security in Your AI-Built App</a></li>
<li><a href="https://supabase.com/docs/guides/database/postgres/row-level-security">Row Level Security | Supabase Docs</a></li>

</ul>
</details>

**标签**: `#security`, `#AI-generated apps`, `#Supabase`, `#data breach`, `#vibe coding`

---

<a id="item-tech-news-3"></a>
### [Project Zero 将漏洞披露窗口从 90 天逐步缩短至 30 天](https://projectzero.google/2026/11/disclosure-policy.html) ⭐️ 8.0/10

Google Project Zero 宣布调整漏洞披露政策：自即日起维持“Full 90”，即在向厂商报告漏洞 90 天后公开；2027 年 2 月 2 日起改为“Full 60”，即 60 天后公开；2028 年 1 月 3 日起改为“Full 30”，即 30 天后公开。该政策目前是公告中的分阶段计划，尚未进入 60 天和 30 天阶段。

hackernews · hacb · 11月14日 11:13 · [社区讨论](https://news.ycombinator.com/item?id=50496051)

**「背景」** Project Zero 自 2021 年起实行“90 + 30”漏洞披露政策：给厂商最多 90 天修复漏洞，再额外留出 30 天“浸泡期”用于补丁推送，目的是促使厂商更快修补，同时留出向用户分发补丁的时间。该团队在政策说明中称，AI 辅助的漏洞发现与利用改变了威胁态势，因此需要调整这一时间窗口。

**「影响」** 对依赖较长修复周期的厂商和开源项目而言，披露窗口将显著压缩。评论者指出，Android 在补丁发布与向可信厂商分发之间存在较长延迟，Ubuntu 也可能需要远超 30 天的时间，这意味着这些平台可能更频繁地面对漏洞在修复广泛可用前被公开的情况。

**「社区讨论」** 有评论者质疑该政策是否构成一种施压，认为 Google 凭借其市场影响力迫使其他方优先处理相关工作；另有评论者关注 Android 的补丁分发延迟以及 Ubuntu 所需的修复时间。这些均为社区观点，而非已证实的事实。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://projectzero.google/2026/11/disclosure-policy.html">Policy and Disclosure: 2026 Edition - Project Zero</a></li>

</ul>
</details>

**标签**: `#security`, `#vulnerability-disclosure`, `#google`, `#open-source`, `#policy`

---

<a id="item-tech-news-4"></a>
### [星舰首次在轨道返回后由发射塔机械臂捕获](https://www.spacex.com/launches/starship-flight-15) ⭐️ 8.0/10

SpaceX 宣布，星舰第 15 次试飞中，飞船在完成约 22.5 小时飞行、绕地球约 14 圈后返回得克萨斯州发射基地，并首次由发射塔机械臂直接捕获，实现轨道返回后的回收。任务还部署了 26 颗新一代星链 V3 卫星。不过，超重型助推器未能按计划返回发射塔，最终溅落在墨西哥湾，因此本次未实现两级同时回收。上述信息来自 SpaceX 的宣布及一则简短新闻摘要，尚无独立测量数据佐证。

telegram · zaihuapd · 11月14日 23:49

**「背景」** 星舰此前试飞中，超重型助推器已多次被发射塔机械臂捕获，但飞船上级从未完成过轨道返回后的塔捕。据 SpaceX 任务说明，第 15 次试飞原计划让飞船与助推器双双返回发射塔，若成功将是星舰上级首次被捕获、Block 3 助推器首次被捕获，也是航天史上首次在轨道飞行中回收全部级段。本次飞船达成目标，助推器则未按计划返回发射塔。

**「对复用流程的影响」** 飞船首次在轨道返回后被机械臂捕获，意味着后续任务可重点验证捕获后的检查与再飞行流程；但助推器仍以溅落方式结束，两级同时回收尚未实现，完整复用链条仍缺一环。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Starship_flight_15">Starship flight 15 - Wikipedia</a></li>
<li><a href="https://www.spacex.com/launches/starship-flight-15">Starship Flight 15 - SpaceX</a></li>

</ul>
</details>

**标签**: `#spacex`, `#starship`, `#reusable-spacecraft`, `#spaceflight`, `#starlink`

---

<a id="item-tech-news-5"></a>
### [Google 介绍 Antigravity 的 /teamwork 多智能体功能](https://research.google/blog/advancing-science-engineering-with-antigravitys-teamwork-feature/) ⭐️ 7.0/10

Google Research 发布博客，介绍 Antigravity 的 /teamwork 多智能体协作能力，并给出数学、科学、编程和工程领域的应用示例。Google 的 mirrokni 在评论中说明，/teamwork 的部分内容此前已在 Antigravity 官方博客公布，这篇帖子主要用于展示可完成的任务类型，并称团队正在持续改进该功能并推送给外部用户。因此，这更像是对已发布功能的示例展示，而非全新能力的发布。

hackernews · acossta · 11月14日 13:20 · [社区讨论](https://news.ycombinator.com/item?id=50496811)

**「背景」** Google Antigravity 的 /teamwork 并非首次亮相：据 Google 研究员 mirrokni 在讨论中说明，该功能的部分内容此前已在 Antigravity 官方博客公布，此次研究博客主要是补充数学、科学、编程与工程领域的应用示例。Horizon 在 11 月 11 日的日报中曾提到，谷歌旗舰模型 Gemini 4 Carbon 已在 Antigravity 中预览 /swarm 多智能体协作，但当时未披露 /teamwork 的具体机制与效果。

**「实际影响」** 对考虑采用多智能体工作流的开发者而言，评论中提到的成本问题值得关注：mtzaldo 称在使用 oh-my-claudecode 的团队模式时，各智能体重复复制上下文，导致每周 token 额度约两天耗尽，worktree 也占用大量磁盘空间；目前尚不清楚 Antigravity 的 /teamwork 是否采用不同的上下文共享方式。

**「社区讨论」** 有评论者认为团队式工作流能带来更高自主性且质量下降有限，并引用了相关论文和开源项目；也有人质疑 /teamwork 与 Claude 动态工作流的区别，认为 Antigravity 作为 harness 功能偏落后，缺少自动模式。另有评论指出这篇帖子没有说明具体使用方法。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://deepmind.google/models/model-cards/gemini-4-carbon/">2026-11-11 — 谷歌向公众开放旗舰模型 Gemini 4 Carbon</a></li>
<li><a href="https://antigravity.google/blog/teamwork-when-ai-becomes-a-research-partner/">Teamwork : when AI becomes a research... | Google Antigravity Blog</a></li>

</ul>
</details>

**标签**: `#multi-agent systems`, `#AI coding agents`, `#Google Antigravity`, `#developer tooling`, `#LLM orchestration`

---

<a id="item-tech-news-6"></a>
### [纯 JAX 约 200 行实现 DeepSeek V3 推理](https://github.com/Vaibhaav-Tiwari/deepseek-v3-jax) ⭐️ 7.0/10

开发者 VaibhaavTiwari 在 Hacker News 上发布了 deepseek-v3-jax 项目，用约 200 行纯 JAX 代码从零实现 DeepSeek V3 的推理。该项目定位为教学与实验用途，而非生产级推理引擎，其价值在于以极短代码展示模型内部结构。一位评论者称，这是首个在其 RX 7600 XT 16GB 显卡上通过 ROCm 端到端跑通的项目，并指出需要设置 HSA\_OVERRIDE\_GFX\_VERSION=11.0.0 等环境变量。

hackernews · VaibhaavTiwari · 11月14日 15:04 · [社区讨论](https://news.ycombinator.com/item?id=50497589)

**「背景」** DeepSeek V3 的技术报告公开了多头潜在注意力（MLA）、无辅助损失的混合专家（MoE）和多 token 预测等架构设计，但完整实现通常依赖 PyTorch 等框架。据项目仓库说明，这份实现用约 190 行纯 JAX 复现了该架构，不使用 Flax、Equinox 或 PyTorch，参数以普通数组字典表示，并在一台 MacBook Air 上从零预训练。

**「实际影响」** 对没有 CUDA 环境的用户而言，这一实现提供了在 AMD ROCm 上运行 DeepSeek V3 推理的可行起点；评论者报告在 RX 7600 XT 上需手动设置 HSA\_OVERRIDE\_GFX\_VERSION=11.0.0 等环境变量才能跑通，说明兼容性仍依赖具体显卡的配置调整。

**「社区讨论」** 多位评论者称赞从第一性原理重建模型的教学价值，有人表示因此想重新拾起 JAX。也有初学者询问如何系统学习推理实现，并希望获得学习路线建议；另有评论者建议在自建项目中使用他人已用过的数据集，以便对比结果。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://github.com/Vaibhaav-Tiwari/deepseek-v3-jax">GitHub - Vaibhaav-Tiwari/deepseek-v3-jax: DeepSeek V3 (MLA ...</a></li>
<li><a href="https://elsolitario.org/en/2026/11/14/deepseek-v3-jax-190-lines/">DeepSeek V3 JAX Implementation in 190 Lines - elsolitario.org</a></li>

</ul>
</details>

**标签**: `#jax`, `#deepseek`, `#llm-inference`, `#rocm`, `#open-source`

---

<a id="item-tech-news-7"></a>
### [微软 365 全球宕机逾 24 小时，Teams、Outlook 与 Copilot 受影响](https://www.solidot.org/story?sid=85886) ⭐️ 7.0/10

微软周六表示，影响各国企业和政府所用 Microsoft 365 应用的全球服务中断已经结束，此次中断持续超过 24 小时。Teams、Outlook 和 Copilot 等应用受到影响，导致数十个国家出现通信问题。微软称“没有发现”任何可能导致中断的外部干扰，并将问题归咎于服务器故障。这是微软历史上持续时间最长的中断之一，也是今年的第二次。

rss · 奇客 Solidot · 11月14日 13:55

**「背景」** 据外部报道，这次中断始于 11 月 12 日（周四），Outlook、Teams 和 Microsoft 365 Copilot 受到影响，并在亚洲部分地区的周五早晨仍在持续；故障追踪网站 Downdetector 收到了来自 70 多个国家和地区的用户报告。微软随后在周六表示服务已完全恢复，并将原因归为服务器故障，称未发现外部干扰。

**「实际影响」** 英国国家医疗服务体系（NHS）工作人员不得不改用纸质记录，无法调用线上存储的资料；日本政府的 IT 基础设施也受到影响。英国国家网络安全中心前负责人 Ciaran Martin 认为，这次宕机在规模上类似亚马逊 AWS 和 CrowdStrike 事故，影响可能更为严重。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://gulfbusiness.com/en/2026/tech/microsoft-365-outage-disrupts-outlook-teams-and-copilot-worldwide/">Live updates: Microsoft 365 outage disrupts Outlook , Teams and...</a></li>
<li><a href="https://www.theguardian.com/technology/2026/nov/14/microsoft-says-services-fully-restored-after-global-outage">Microsoft says services fully restored after global outage hits...</a></li>

</ul>
</details>

**标签**: `#cloud-outage`, `#microsoft-365`, `#reliability`, `#infrastructure-risk`, `#big-tech-dependence`

---

<a id="item-tech-news-8"></a>
### [开发者实测：AI Agent 在 Minecraft 建造大型建筑时，编译校验无法保证空间正确](https://www.v2ex.com/t/1257186#reply6) ⭐️ 7.0/10

一位开发者以 MinePilot 为实验平台，尝试让 AI Agent 在原生 Minecraft 中建造 15.7 万至 33.4 万方块、玩家可进入的大型建筑，底层使用已开源的体素编译引擎 CraftDAG。他发现编译期校验只能拦住方块 ID、门窗朝向和结构碰撞等错误，无法保证空间正确性：一座 15.7 万方块的山地建筑编译零报错，却有 69 列洞顶未封顶；室内观景台的命令行渲染退出码为 0、相机未卡入方块，但人眼高度正前方 62.49% 的画面被实心石栏杆遮挡。另有 33.4 万方块夜景街区在离线 .schem 静态检查全部合法的情况下，导入原版客户端后因邻居方块更新导致 203 盏灯笼掉落。作者称这些是其实机走查中的具体失败案例，相关长文与多模型对比记录已发布，但内容为个人实验报告且带推广链接。

rss · V2EX · 11月15日 05:42

**「背景」** 文中提到的 CraftDAG 是一个确定性的体素构建计划引擎，负责编译与校验，其 GitHub 说明明确它并非通用 Minecraft 智能体。作者把 MinePilot 当作实验场景，尝试让 AI 智能体在原生 Minecraft 中建造大型建筑；而 MinePilot 本身是面向 Minecraft Java 版的 AI 同伴模组，与“让智能体自主建造大体量结构”的目标并不等同。

**「对 Agent 开发的启示」** 该实验表明，对涉及三维空间的 Agent 任务，仅靠编译器和静态检查通过不足以判定结果可用，还需加入第一人称视角渲染检查、挂点合法性校验等运行时验证。作者还发现，参与建造的同一 Agent 对渲染图自检时认为没有问题，而由不参与建造的独立视觉评审模型盲审才识别出遮挡问题，这提示自评与独立评审应分开。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://github.com/i365dev/CraftDAG">GitHub - i365dev/ CraftDAG : Agent-friendly Minecraft construction...</a></li>
<li><a href="https://github.com/weidakuang/MinePilot">GitHub - weidakuang/MinePilot: Minecraft AI CompanionMod</a></li>

</ul>
</details>

**标签**: `#AI agents`, `#Minecraft`, `#voxel/3D generation`, `#compiler validation`, `#spatial reasoning`

---

<a id="item-tech-news-9"></a>
### [Cloudflare 开源 AI 代理浏览器 Kitesurf](https://www.phoronix.com/news/Cloudflare-Kitesurf-Open-Source) ⭐️ 7.0/10

Cloudflare 以 Apache 2.0 协议开源了面向 AI 代理的无状态浏览器 Kitesurf，代码已发布在 GitHub。它基于 Cloudflare Workers 构建，无需浏览器容器即可解析 HTML、处理 CSS 并执行 JavaScript。Cloudflare 表示，其目标是给 AI 代理一个轻量、高效的浏览器，相比 Chromium 占用更少 CPU 和内存，并能在全球 Workers 网络上按需扩展。上述资源占用优势目前是厂商说法，来源未提供基准测试或独立测量数据。

telegram · zaihuapd · 11月14日 09:33

**「背景」** Kitesurf 是 Cloudflare 面向 AI 代理开发的实验性浏览器引擎，其首个原型由开源无头浏览器 Obscura 移植到 Workers 平台而来。据 Cloudflare 博客介绍，该引擎运行在 Workers 的 V8 isolate 中，不依赖 Chromium，主体用 Rust 编写并编译为 WebAssembly。此次开源意味着外部开发者可以查看代码、在本地运行、修改，并将自己的实例部署到 Cloudflare Workers。

**「对使用者的影响」** Kitesurf 面向的是 AI 代理的抓取与页面交互类负载，而非需要完整视觉保真度的场景；外部技术分析指出它运行在 Workers 的 V8 isolate 中、不含 Chromium，主要用 Rust 编译为 WebAssembly 实现。因此，依赖完整浏览器渲染、复杂前端行为或既有 Chromium 自动化工具链的团队，需要先验证 Kitesurf 对目标页面的兼容性，再决定是否迁移。Cloudflare 目前只给出“相比 Chromium 占用更少 CPU 和内存”的表述，尚无公开基准数据可供评估实际收益。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://blog.cloudflare.com/kitesurf-open-source/">Kitesurf is now open source | Cloudflare Blog</a></li>
<li><a href="https://github.com/h4ckf0r0day/obscura">GitHub - h4ckf0r0day/obscura: The headless browser for AI agents ...</a></li>
<li><a href="https://www.eesel.ai/blog/cloudflare-kitesurf">Cloudflare Kitesurf : the agent browser that trades speed... | eesel AI</a></li>
<li><a href="https://www.eesel.ai/blog/cloudflare-kitesurf">Cloudflare Kitesurf : the agent browser that trades speed... | eesel AI</a></li>
<li><a href="https://www.theainavigator.com/blog/cloudflare-kitesurf-ai-agent-browser-infrastructure">Cloudflare &#x27;s Kitesurf : What It Means for AI Agent Buyers</a></li>
<li><a href="https://pinggy.io/blog/cloudflare_kitesurf_ai_agent_browser/">Inside Kitesurf : Cloudflare Built a Browser Engine Just for AI Agents</a></li>

</ul>
</details>

**标签**: `#AI agents`, `#open source`, `#Cloudflare Workers`, `#browser automation`, `#web rendering`

---

<a id="item-tech-news-10"></a>
### [意大利以违规读取相册为由对 Meta 罚款 8.05 亿欧元](https://www.garanteprivacy.it/home/docweb/-/docweb-display/docweb/10321080) ⭐️ 7.0/10

意大利隐私监管机构 Garante Privacy 对 Meta 处以 8.05 亿欧元罚款，原因是 Facebook 的 Android 应用在未取得具体同意的情况下，读取了约 2000 万意大利用户相册中的照片、视频及元数据。涉事功能是 2023 年上线的相册推荐功能，默认开启，且授权提示笼统。监管机构要求 Meta 在 60 天内将该功能改为默认关闭并单独征得用户同意，否则不得对未有效授权的用户启用该功能。

telegram · zaihuapd · 11月14日 14:37

**「背景」** 意大利隐私监管机构 Garante Privacy 此次处罚针对的是 Facebook Android 应用于 2023 年上线的相册推荐功能：该功能默认开启，授权提示笼统，因而被认定未取得用户的具体同意。多家媒体在 2026 年 11 月 14 日至 15 日的报道中确认了 8.05 亿欧元罚款及 60 天整改期限，与监管机构公告一致。

**「对开发者的影响」** 对开发相册、媒体访问或推荐类功能的团队而言，这一处罚明确了“默认开启＋笼统授权提示”不足以构成有效同意：涉及相册等敏感数据的功能需要默认关闭，并针对该用途单独取得用户同意。面向意大利及欧盟用户的产品需在 60 天整改窗口内检查同类默认设置与授权文案。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.aljazeera.com/news/2026/11/14/italy-fines-meta-880m-over-photo-privacy">Italy fines Meta $880m over photo privacy | Technology... | Al Jazeera</a></li>
<li><a href="https://www.theguardian.com/technology/2026/nov/15/italy-fines-meta-887m-for-accessing-android-users-photos-and-videos">Italy fines Meta $887m for accessing Android users’ photos and videos</a></li>
<li><a href="https://www.cnbce.com/dunya/facebookun-fotograf-ozelligi-pahaliya-patladi-metaya-805-milyon-euroluk-ceza-h41819">Facebook &#x27;un fotoğraf özelliği pahalıya patladı: Meta &#x27;ya 805 milyon...</a></li>

</ul>
</details>

**标签**: `#privacy-regulation`, `#meta`, `#consent`, `#mobile-apps`, `#gdpr`

---

<a id="item-tech-news-11"></a>
### [特斯拉 Cybercab 订阅协议：月租 299 美元才能开动](https://www.tesla.com/configurator/api/v4/terms?category=autonomy_subs&amp;amp;locale=en_US&amp;amp;model=cc&amp;amp;saleType=Sale) ⭐️ 7.0/10

特斯拉公布的 Cybercab 自主驾驶订阅协议显示，车辆售价为 29,990 美元，车主还须每月支付 299 美元订阅费，否则车辆无法运行。特斯拉可提前一个月通知调价；欠费或违规使用可能导致订阅被暂停或取消，累计三次警告将停用自动驾驶一周。协议还规定车辆仅在指定区域运行，未经授权不得接入网约车、配送或租赁平台。上述条款来自特斯拉配置器页面上的协议文本，经 Electrek 与路透社转述，目前尚属公布条款而非独立验证的实际执行情况。

telegram · zaihuapd · 11月15日 01:10

**「背景」** Horizon 2026 年 11 月 7 日的日报曾报道，马斯克称特斯拉将在明年年中逐步停止得州超级工厂的 Cybertruck 生产，为提升 Cybercab 产量腾出空间。此次公布的订阅条款则首次明确了面向个人车主的 Cybercab 购车与使用条件：车价 29,990 美元，另需每月支付 299 美元的“Autonomy Subscription”。

**「对车主的影响」** 按协议，购车并不等于获得完整使用权：车主需持续付费才能保持车辆可运行，且使用范围、接入平台和自动驾驶权限都受特斯拉单方面约束。Electrek 指出，Cybercab 与用于 Robotaxi 的 Model Y 采用相同的 AI4 硬件和自动驾驶软件，但面向普通车主的 FSD 仍需人类监督，这意味着订阅费买到的并非无人监督能力。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.theverge.com/transportation/1028542/tesla-cybertruck-winding-down-production-2027">2026-11-07 — 特斯拉将于明年年中逐步停产 Cybertruck</a></li>

</ul>
</details>

**标签**: `#Tesla`, `#autonomous vehicles`, `#subscription pricing`, `#robotaxi`, `#tech industry`

---

<a id="item-tech-news-12"></a>
### [FAA 全国停飞：铜线换光纤升级引发路由故障](https://www.theverge.com/transportation/1033898/faa-ground-stop-sean-duffy-faa-copper-wire) ⭐️ 7.0/10

美国交通部长 Sean Duffy 于 11 月 14 日表示，周五 FAA 下令的全国停飞源于一处偏远设施将老旧铜线更换为光纤的例行维护。新装路由器随后出现故障，以每 4 到 5 秒逾千次连接请求冲击其他路由器，干扰雷达信号与飞机通信，导致数千航班停飞。Duffy 称根因尚未确认，可能是硬件故障、配置错误或承包商 L3Harris 的失误，并呼吁国会追加空管现代化资金。

telegram · zaihuapd · 11月15日 02:10

**「背景」** 此次停飞发生在承包商 L3Harris 对一处偏远地点的老旧通信系统进行升级之后，美国交通部长 Sean Duffy 在 11 月 14 日（周六）的说明中把初步调查指向这一环节。多家媒体报道称，这次升级涉及把旧铜线更换为光纤，而新装路由器随后出现异常。

**「影响与后续」** 此次停飞直接影响数千架次航班的正常运行，也暴露出空管基础设施在例行升级期间对单点路由故障的脆弱性。由于根因尚未确认，FAA 与承包商 L3Harris 的后续排查结果将决定是否需要调整类似铜线换光纤升级的流程与验证步骤。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.cnbc.com/2026/11/14/faa-ground-stop-flights-resume-delays.html">Nationwide ground stop followed contractor upgrade to ...</a></li>
<li><a href="https://www.npr.org/2026/11/14/nx-s1-6040952/faa-ground-stop-airplane-travel">FAA ground stop ends but passengers stuck at airport : NPR</a></li>
<li><a href="https://nypost.com/2026/11/14/us-news/cause-of-faa-ground-stop-revealed-after-a-million-us-fliers-stranded-chaos-at-airports/">Cause of FAA ground stop revealed after thousands of US ...</a></li>

</ul>
</details>

**标签**: `#networking`, `#infrastructure`, `#aviation`, `#system-reliability`, `#outage`

---

## 财经新闻

<a id="item-finance-news-1"></a>
### [Anthropic IPO 据报拒绝中国内地及香港投资者下单](https://m.economictimes.com/markets/us-stocks/news/anthropic-ipo-share-orders-from-china-are-said-to-be-rebuffed/articleshow/135809948.cms) ⭐️ 8.0/10

据知情人士透露，Anthropic 的首次公开募股（IPO）不接受中国内地和香港投资者下单，限制与 ITAR（国际武器贸易条例）出口管制有关；发行定价日为 11 月 18 日，次日以代码 ANT 上市，拟以 1.4 万亿美元估值募资至多 904 亿美元。

telegram · zaihuapd · 11月14日 10:18

**「背景」** 此前已有类似先例：据 Tech Times 报道，SpaceX 在其创纪录的 IPO 中同样以美国出口规则为由，拒绝中国内地和香港投资者下单（tool-1-1）。Anthropic 此次 IPO 拟以约 1.4 万亿美元估值募资至多 904 亿美元，预计 11 月 19 日开始交易（tool-2-1、tool-2-3）。

**「影响」** 若该限制属实，中国内地和香港的投资者将无法直接参与此次认购，部分资金已转向英属维尔京群岛信托、SPV 和掉期结构等间接渠道；这一限制源于 ITAR 出口管制，该条例对向中国等受限制国家出口及披露技术数据设有严格约束。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://thedailybugle.bartlettpublications.com/p/26-0616-tuesday-s-export-import-daily-bugle">26-0616: Tuesday&#x27;s &quot; Export /Import Daily Bugle&quot;</a></li>
<li><a href="https://www.tipranks.com/news/anthropic-targets-1-4t-valuation-in-90-4b-ipo-next-week-as-u-s-stock-sales-beat-2021-record">Anthropic Targets $ 1 . 4 T Valuation in $ 90 .4B IPO ... - TipRanks.com</a></li>
<li><a href="https://finance.yahoo.com/markets/article/anthropic-seeks-14-trillion-valuation-in-ipo-130300928.html">Anthropic seeks $ 1 . 4 trillion valuation in highly anticipated IPO ...</a></li>
<li><a href="https://www.bseindia.com/corporates/download/303183/IPO+Open/RedHerringProspectus_20261013114855.pdf">Tonbo imaging india limited</a></li>
<li><a href="https://www.cleat.ai/government/contracts/light-navigational-6kai">LIGHT, NAVIGATIONAL, - Department Of Defense | CLEATUS</a></li>

</ul>
</details>

**标签**: `#IPO`, `#Anthropic`, `#export controls`, `#China markets`, `#equity financing`

---