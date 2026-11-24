---
layout: default
title: "Horizon Summary: 2026-11-24 (ZH)"
date: 2026-11-24
lang: zh
---

> 从 154 条内容中筛选出 20 条重要资讯。

---

**科技新闻**
1. [Anthropic 称内部 Claude 模型发现 VP≠VNP 并公开 Lean 4 证明](#item-tech-news-1) ⭐️ 9.0/10
2. [Ladybird 浏览器发布首个 Alpha 版](#item-tech-news-2) ⭐️ 8.0/10
3. [英伟达董事会恢复黄仁勋总裁兼 CEO 职务](#item-tech-news-3) ⭐️ 8.0/10
4. [智谱发布 GLM-5.4：首个循环 Transformer 编码模型](#item-tech-news-4) ⭐️ 8.0/10
5. [黎曼猜想「AI 证明」被指空转，作者承认代码满是垃圾](#item-tech-news-5) ⭐️ 8.0/10
6. [百度开源文心 5.5 Flash Preview：280B 总参数、Apache 2.0](#item-tech-news-6) ⭐️ 8.0/10
7. [Stalwart 宣称可替代 Microsoft Exchange](#item-tech-news-7) ⭐️ 7.0/10
8. [NariQ 发布 10 GB 内保留 BF16 级质量的 Qwen3.8-27B 量化版](#item-tech-news-8) ⭐️ 7.0/10
9. [GrapheneOS 指控 Google 施压合作伙伴并威胁撤销应用授权](#item-tech-news-9) ⭐️ 7.0/10
10. [韦伯望远镜首次直击恒星吞噬伴星并爆发全过程](#item-tech-news-10) ⭐️ 7.0/10
11. [RoboTrack：面向真实机器人操作的点跟踪方法](#item-tech-news-11) ⭐️ 7.0/10
12. [Zstd 1.6.0 发布：多项修复与性能优化](#item-tech-news-12) ⭐️ 7.0/10
13. [AMD EPYC Zen 6 对比 Zen 1：几何均值性能提升 12.1 倍，AI 最高 133 倍](#item-tech-news-13) ⭐️ 7.0/10
14. [XNU Linux 项目让 macOS 用户态程序运行于 Linux](#item-tech-news-14) ⭐️ 7.0/10
15. [Codex2api 疑遭供应链投毒：3.1.10–3.1.12 版本被植入后门](#item-tech-news-15) ⭐️ 7.0/10
16. [Meta 首席 AI 官称超级智能将至，警告人类控制风险](#item-tech-news-16) ⭐️ 7.0/10
17. [4.5 万家企业组织联名致信欧盟，要求对苹果 iPhone 浏览器限制立案](#item-tech-news-17) ⭐️ 7.0/10
18. [黄循财：新加坡不会成为规避美国芯片管制的通道](#item-tech-news-18) ⭐️ 7.0/10

**科技博客**
1. [Cloudflare 用 Flamingo 探测 DNS 传播](#item-tech-blog-1) ⭐️ 6.0/10

**财经新闻**
1. [上海地铁票价 21 年来首次调整，12 月 1 日起实施](#item-finance-news-1) ⭐️ 7.0/10

---

## 科技新闻

<a id="item-tech-news-1"></a>
### [Anthropic 称内部 Claude 模型发现 VP≠VNP 并公开 Lean 4 证明](https://github.com/anthropics/formal-math/blob/main/vp-vnp/README.md) ⭐️ 9.0/10

Anthropic 于 11 月 24 日公开论文《VP ≠ VNP over every field》及配套 Lean 4 形式化证明，仓库称结果由内部研究用 Claude 模型发现，论文与代码均由 AI 撰写。论文给出哈密顿圈多项式的超多项式算术电路下界，据此推出 VP 是 VNP 的真子类；若成立，即解决 Valiant 1979 年的代数复杂度猜想，但该结论仅针对算术电路，不涉及 P 与 NP。形式化部分经三条标准公理审计与独立内核 nanoda 复核，除预留文件外无 sorry。不过目前尚无人类数学家通读，Lean 无法确认形式化陈述与所声称命题一致，附录 Q 列出了出入，结果仍待独立审阅。

telegram · zaihuapd · 11月24日 06:02

**「背景」** Valiant 在 1979 年提出代数复杂度类 VP 与 VNP 的关系问题，它是 P 与 NP 问题在算术电路模型下的类比；此次声称的分离仅针对算术电路，不涉及 P 与 NP。Horizon 11 月 21 日的日报曾报道，Levent Alpöge 声称与 Anthropic 的 Claude 合作证明了黎曼猜想并完成 Lean 形式化，但当时没有任何独立验证或同行评审；11 月 22 日的日报又记录了 Lean FRO 与 Mathlib Initiative 联合声明认证该证明，不过相关说法仍仅来自 Telegram 帖与所引博客。与那次先由个人发布、随后出现社区认证不同，本次 VP≠VNP 结果由 Anthropic 官方仓库发布，并明确标注尚无人类数学家通读。

**「影响与待验证点」** 若该结果经独立审阅成立，它将成为代数复杂度理论中首个由 AI 模型提出并附带机器检查证明的重大下界结论，相关研究者需要重点核对形式化陈述与论文命题之间的对应关系，尤其是附录 Q 列出的出入。在此之前，Lean 检查通过只能说明证明在给定陈述下自洽，不能替代人类数学家对陈述本身是否准确表达 VP≠VNP 的判断。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://leanprover-community.github.io/blog/posts/riemann-hypothesis/">2026-11-22 — Levent Alpöge 发布黎曼猜想 Lean 形式化证明，社区称已通过验证</a></li>
<li><a href="https://alpo.ge/remark.pdf">2026-11-21 — Levent Alpöge 声称证明广义黎曼猜想，附 Lean 形式化</a></li>

</ul>
</details>

**标签**: `#complexity-theory`, `#formal-verification`, `#Lean 4`, `#AI-for-math`, `#Anthropic`

---

<a id="item-tech-news-2"></a>
### [Ladybird 浏览器发布首个 Alpha 版](https://ladybird.org/posts/alpha/) ⭐️ 8.0/10

从零构建的 Ladybird 浏览器发布了首个 Alpha 版，macOS 和 Linux 用户现在可以直接下载安装，无需自行编译。该项目自行实现了 HTML 解析、CSS 引擎、布局、JavaScript 和 WebAssembly 等核心组件，仅复用 HarfBuzz、Skia、ffmpeg 和 SQLite 等外部库。官方明确说明这是 Alpha 版本，部分网站无法正常工作，浏览器也会偶尔崩溃，并鼓励用户通过浏览器内报告功能反馈问题、提交崩溃报告。

hackernews · Lobsters · 11月23日 16:13 · [社区讨论](https://news.ycombinator.com/item?id=50614249)

**「背景」** Ladybird 最初是 Andreas Kling 于 2018 年创建的 SerenityOS 爱好操作系统中的一个浏览器组件，后来发展为独立项目。据外部报道，该项目曾以 2026 年年中发布 alpha 为目标，并组建了七名全职工程师从零开发。

**「实际影响」** 早期试用显示，Ladybird 能正常运行编译为 WebAssembly 的 ffmpeg 和 Pyodide REPL，但依赖 service worker 与 web worker 组合的 Datasette Lite 会报错，源码中对应位置仍留有 FIXME 标注。Ladybird 采用每个标签页独立进程的隔离方式，试用者观察到多标签场景下 WebContent 进程内存占用可达数百 MB，因此现阶段更适合作为测试和反馈对象，而非日常主力浏览器。

**「社区讨论」** 多位评论者报告，他们测试的网站（包括 NoVNC 和 Proxmox 等较复杂的页面）均能正确渲染，有人称 NoVNC 的响应甚至比 Firefox 更流畅，但也有人指出页面滚动略有卡顿。另有评论者希望 Ladybird 未来重视指纹识别问题，提供返回伪造或随机值的非标准 JS 模式、更细粒度的权限控制，并限制网站探测标签页是否处于活动状态。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/SerenityOS">SerenityOS - Wikipedia</a></li>
<li><a href="https://grokipedia.com/page/Ladybird_web_browser">Ladybird (web browser ) — Grokipedia</a></li>
<li><a href="https://thenextweb.com/news/serenityos-creator-building-ladybird-browser">The developer of SerenityOS is challenging the browser duopoly</a></li>

</ul>
</details>

**标签**: `#browsers`, `#open-source`, `#web-engines`, `#software-engineering`

---

<a id="item-tech-news-3"></a>
### [英伟达董事会恢复黄仁勋总裁兼 CEO 职务](https://www.cnbc.com/2026/11/23/nvidia-jensen-huang-ceo.html) ⭐️ 8.0/10

英伟达董事会宣布恢复黄仁勋（Jensen Huang）的总裁、首席执行官及董事会董事职务。公司声明称，董事会在作出决定过程中收到了美国联邦政府高级别官员的意见，并据此认为黄仁勋复职不构成国家安全风险。该声明未说明此前职务变动的原因，也未披露政府意见的具体内容。

hackernews · jaz · 11月23日 14:00 · [社区讨论](https://news.ycombinator.com/item?id=50611576)

**「背景」** Horizon 2026 年 11 月 13 日的日报曾报道，英伟达宣布黄仁勋即日起辞去总裁、CEO 及董事会成员职务，由执行副总裁兼 CFO Colette Kress 出任临时 CEO，董事会同时启动继任者遴选并任命 Harvey C. Jones 为首任董事会主席。此次董事会宣布黄仁勋即刻复职，距其辞任仅约十天，构成同一人事变动的直接反转。

**「影响」** 对英伟达而言，这一决定意味着公司最高管理层在不到两周内完成一次反转，投资者和合作伙伴需以最新公告为准判断公司治理状态。声明中“收到美国政府高级别意见”的表述，也使外界关注企业人事决策与出口管制政策之间的一致性。

**「社区讨论」** 有评论者认为，声明中关于政府意见的句子才是整份公告的关键；也有人援引特拉华州 Caremark 判例标准，推测司法部不予起诉的表态加上该标准可能使董事个人免责，并对董事会从迅速罢免到全票恢复的 180 度转变感到意外。另有评论者批评美国在要求 ASML 和日本芯片企业遵守对华制裁的同时，却对英伟达网开一面，认为这是明显的双重标准。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://apnews.com/article/nvidia-megaspeed-china-singapore-huang-5403f152a601cf82ce939f1d24fffa0f">2026-11-13 — 英伟达宣布黄仁勋辞任 CEO，CFO 临时接任</a></li>

</ul>
</details>

**标签**: `#nvidia`, `#corporate-governance`, `#ai-hardware`, `#export-controls`, `#tech-industry`

---

<a id="item-tech-news-4"></a>
### [智谱发布 GLM-5.4：首个循环 Transformer 编码模型](https://z.ai/blog/glm-5.4) ⭐️ 8.0/10

智谱（Z.ai）发布 GLM-5.4，这是其首个采用循环 Transformer 架构的模型，定位为通用编码。按官方描述，循环 Transformer 让一组共享权重的层在一次前向传播中迭代多次，反复精炼隐藏状态，从而在不增加参数量的情况下加深网络。该模型目前未开放权重，也无法通过常规 API 套餐访问，需订阅 Coding Plan 才能调用；其接口与常规 API 同为 OpenAI 兼容的 Responses API（https://api.z.ai/api/v1）。

hackernews · foohis · 11月23日 10:06 · [社区讨论](https://news.ycombinator.com/item?id=50609685)

**「背景：循环式 Transformer 的近期动向」** 循环式 Transformer 的核心思路是让一组共享权重的层在一次前向传播中重复运行多次，从而在不增加参数量的情况下加深有效网络深度。据 Horizon 11 月 21 日的日报，Thinking Machines 此前发布的开放权重模型 Inkling 2 Mini 就采用了这一架构，其中间层对每个 token 运行三次；外部资料显示该模型总参数 26.4B、激活参数约 3.4B 至 5.4B，可在 MacBook 等设备上本地运行。GLM-5.4 是 Zhipu 首个采用该架构的模型，但与前者的开放权重不同，它目前尚未提供开放权重。

**「对使用者的影响」** 开发者若想试用 GLM-5.4，需要先订阅 Coding Plan，其 API 密钥可在同一 OpenAI 兼容端点上使用；现有工具需先适配新模型，例如 llm-zai 插件尚未支持，Simon Willison 因此临时另写了 llm-glm。

**「社区讨论」** 有评论者赞赏智谱公开架构细节，认为循环 Transformer 是明确的发展方向，只是仍有问题待解决；也有人抱怨部分中国模型“马拉松式思考”在简单任务上反复自我怀疑，完成时间明显长于前沿模型。另有用户询问循环 Transformer 的原理，并得到关于层权重在推理中重复计算的解释。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://thinkingmachines.ai/news/inkling-2-mini/">2026-11-21 — Thinking Machines 发布开放权重模型 Inkling 2 Mini</a></li>
<li><a href="https://thinkingmachines.ai/news/inkling-2-mini/">Introducing Inkling 2 Mini - Thinking Machines Lab</a></li>
<li><a href="https://openrouter.ai/thinkingmachines/inkling-2-mini">Inkling 2 Mini - API Pricing &amp; Benchmarks | OpenRouter</a></li>
<li><a href="https://artificialanalysis.ai/articles/inkling-2-mini">Thinking Machines has released Inkling 2 Mini , an... | Artificial Analysis</a></li>

</ul>
</details>

**标签**: `#LLM architecture`, `#loop transformer`, `#model release`, `#coding models`, `#open source AI`

---

<a id="item-tech-news-5"></a>
### [黎曼猜想「AI 证明」被指空转，作者承认代码满是垃圾](https://x.com/i/web/status/2124987173439209561) ⭐️ 8.0/10

Alpöge 与 Claude 宣称证明了黎曼猜想及其广义版本，但只公开了约 1700 万行 Lean 代码、17.5 万个文件，没有提供人类可读的证明。Lean 与 Mathlib 社区次日表示对代码证明了该命题「有充分信心」，随后有研究者指出关键定义被写成恒真、几何条件形同虚设，证明可能只是空转。23 日 Alpöge 承认「25 万页是玩笑」，代码「满是垃圾但能编译」，并称批评完全合理。

telegram · zaihuapd · 11月24日 01:29

**「背景」** Horizon 11 月 21 日的日报曾记录，Levent Alpöge 声称与 Claude 合作找到了黎曼猜想的证明，并称已在不引入额外假设的情况下完成 Lean 形式化，但文档极其冗长、难以阅读；当时没有任何独立验证或同行评审。11 月 22 日的日报又转述 Lean FRO 与 Mathlib Initiative 的联合声明，称社区已确认命题与 Mathlib 的 RiemannHypothesis 一致、代码库可无错编译，多个独立检查器验证了证明有效，但该说法当时仍属待核实声明。此次争议正针对同一份约 1700 万行、17.5 万个文件的 Lean 代码库：研究者随后指出关键定义被写成恒真、几何条件形同虚设，Alpöge 也承认代码“满是垃圾但能编译”，说明“能编译、能通过检查器”与“数学上证明了目标命题”之间仍存在需要辨析的差距。

**「影响」** 这一事件说明，形式化验证工具只能确认代码符合给定定义，无法保证定义本身有意义；对依赖 Lean 等工具评估 AI 数学成果的研究者而言，需要同时审查定义是否被弱化为恒真，而不能仅凭代码通过编译或社区初步表态就认定命题已被证明。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://alpo.ge/remark.pdf">2026-11-21 — Levent Alpöge 声称证明广义黎曼猜想，附 Lean 形式化</a></li>
<li><a href="https://leanprover-community.github.io/blog/posts/riemann-hypothesis/">2026-11-22 — Levent Alpöge 发布黎曼猜想 Lean 形式化证明，社区称已通过验证</a></li>

</ul>
</details>

**标签**: `#AI for mathematics`, `#Lean theorem proving`, `#formal verification`, `#Riemann Hypothesis`, `#AI research criticism`

---

<a id="item-tech-news-6"></a>
### [百度开源文心 5.5 Flash Preview：280B 总参数、Apache 2.0](https://x.com/Baidu_Inc/status/2125077484442190137) ⭐️ 8.0/10

百度于 11 月 24 日通过官方 X 账号宣布开源文心 5.5 Flash Preview，权重以 Apache 2.0 协议在 Hugging Face 和 ModelScope 开放，支持用 vLLM 或 SGLang 部署与微调。该模型采用 MoE 架构，总参数 280B，每个 token 激活 14B，上下文长度为 1M token，是基于 ERNIE 5.5 Flash Base 训练的首个后训练模型。流传的基准图表显示其 Terminal-Bench 4.0 得 46.5 分、DeepSWE v1.1 得 71.2 分，但百度未说明这些成绩是否经过第三方独立验证。

telegram · zaihuapd · 11月24日 07:32

**「背景」** Horizon 11 月 6 日的日报曾报道，百度开源了文心 5.5 Flash Base 基座模型：同样是 2800 亿总参数、每 token 激活 140 亿参数的 MoE 架构，预训练使用 33.5 万亿 token，预训练上下文最长 128K，微调与推理阶段支持最长 100 万 token 上下文。此次发布的 Preview 版正是基于该基座训练的首个后训练模型，权重以 Apache 2.0 协议开放。

**「实际影响」** Apache 2.0 协议允许商用与修改，配合 vLLM、SGLang 的现成部署路径，团队可直接在自有环境中评估或微调该模型。不过 280B 总参数意味着完整权重对显存和存储要求较高，实际部署需按 MoE 激活 14B 的特性规划推理资源；同时 Preview 版本与未经独立验证的基准分数意味着生产选型前应自行测试。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.news.cn/info/20261105/f3bbdb6854f5441ca9fb34062f213875/c.html">2026-11-06 — 百度开源文心 5.5 Flash Base 基座模型</a></li>

</ul>
</details>

**标签**: `#open-source-llm`, `#mixture-of-experts`, `#baidu-ernie`, `#model-release`, `#apache-2.0`

---

<a id="item-tech-news-7"></a>
### [Stalwart 宣称可替代 Microsoft Exchange](https://stalw.art/blog/microsoft-exchange-replacement/) ⭐️ 7.0/10

开源邮件服务器 Stalwart 在其博客中宣布，它可以作为 Microsoft Exchange 的直接替代品（drop-in replacement）使用。该消息来自厂商博客，未提供具体版本号、兼容协议清单或独立测试数据，因此目前只能视为一项厂商声明，而非已获验证的完整兼容能力。

hackernews · shaunpud · 11月23日 22:32 · [社区讨论](https://news.ycombinator.com/item?id=50620349)

**「背景」** Stalwart 是一款开源邮件服务器，此前主要面向标准邮件协议；此次发布的 1.2.0 版本新增了对 MAPI、EWS、ActiveSync 和 Autodiscover 的支持，使其能够直接对接经典版 Outlook 等客户端。据外部报道，Mozilla 的 Thundermail 已在用 Stalwart 作为邮件服务器。

**「对迁移者的实际影响」** 对考虑迁移的组织而言，最直接的约束来自客户端与合规两端：评论者指出 Stalwart 目前缺少 Kerberos 支持，德国用户还面临 GoBD 要求的十年不可篡改归档，而该功能不在常规或开源版本中。同时，Stalwart 博客称 Exchange 2016 和 2019 已于 2025 年 10 月 14 日结束支持，这意味着仍在运行本地 Exchange 的团队需要先确认 Outlook 连接方式与归档方案，再评估替换可行性。

**「社区讨论」** 评论者指出若干具体缺口：amaccuish 称 Stalwart 缺少 Kerberos 支持，并认为 grommunio 是这一领域另一个具备同等 Exchange 兼容性的替代方案；rmoriz 表示德国企业依 GoBD 需将邮件不可篡改地归档并供税务部门访问最长 10 年，而 Stalwart 的常规方案和开源版本均不含此功能。hobo123 则质疑，若 Outlook 不再支持本地 Exchange，所谓“直接替代”的实际使用路径何在；andreashaerter 认为锁定效应源于协议与客户端本身，扩展 MAPI 等微软邮件协议栈对开放邮件生态未必有利。markstos 补充称，Stalwart 是 Mozilla Thundermail 所使用的邮件服务器。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://stalw.art/blog/microsoft-exchange-replacement/">Stalwart is now a drop-in replacement for Microsoft Exchange</a></li>
<li><a href="https://www.learn.telusko.com/newsletter/stalwart-1-2-0-is-now-a-drop-in-replacement-for-microsoft-exchange">Stalwart 1.2.0 is now a drop-in replacement for Microsoft ...</a></li>
<li><a href="https://www.helpnetsecurity.com/2026/11/24/stalwart-microsoft-exchange-replacement/">Stalwart: Open-source Microsoft Exchange replacement</a></li>
<li><a href="https://stalw.art/blog/microsoft-exchange-replacement/">Stalwart is now a drop-in replacement for Microsoft Exchange | Stalwart</a></li>

</ul>
</details>

**标签**: `#email`, `#open-source`, `#microsoft-exchange`, `#self-hosting`, `#interoperability`

---

<a id="item-tech-news-8"></a>
### [NariQ 发布 10 GB 内保留 BF16 级质量的 Qwen3.8-27B 量化版](https://huggingface.co/nari-labs/Qwen3.8-27B-NariQ-GGUF) ⭐️ 7.0/10

NariQ 发布了 Qwen3.8-27B 的 3-bit 及更低比特 GGUF 量化版本，称其文件约 10 GB，并在智能体、数学、多语言推理和图像理解任务上接近 BF16 水平。作者自报的基准中，3-bit 在 DeepSWE 得 41.0、Terminal-Bench 2.1 得 63.8、AIME 25+26 得 98.3，均与 BF16 的 39.8、62.6、97.7 相当；2-bit 则明显下降，DeepSWE 降至 28.6、AIME 降至 86.0。这些数字均为项目方自测，尚未经独立验证。运行该量化需要 NariQ 自己的 llama.cpp 分支，解码速度在 RTX PRO 6000 上与其他量化相当。

hackernews · toebee · 11月23日 13:42 · [社区讨论](https://news.ycombinator.com/item?id=50611402)

**「背景」** Qwen3.8-27B 是近期自托管社区中较受关注的开放权重模型，此前已有 Q4\_K\_M 等常规量化版本可在笔记本上运行（Horizon 11 月 4 日的日报曾报道以 17GB 的 Q4\_K\_M 版本在本地运行该模型）。NariQ 的不同之处在于把量化位宽压到 3 位及以下，并声称在长程智能体任务上仍保持 BF16 水平；但运行这些文件目前需要 Nari Labs 自己的 llama.cpp 分支，而非上游 llama.cpp。

**「实际影响」** 对自托管用户而言，10 GB 级文件意味着 16 GB 内存的消费级设备也有机会运行 27B 模型，但需注意两点：目前必须使用 nari-labs 的 llama.cpp 分支，且作者称在 M3 Pro（18 GB）上 3.0bpw 文件解码仅约 3.8 tok/s，远慢于 CUDA；此外有评论指出该分支尚不支持 Volta/sm\_70 显卡。

**「社区讨论」** 有评论者表示，此前对高算力 QAT 式量化常因过拟合基准而在真实使用中打折扣持怀疑态度，但认为该项目做了多项长周期任务测试并提到“留出”评估，属于少见的合理验证。也有人追问文件变小时究竟丢失了什么信息，并指出从图表看大部分提升可能来自测试框架差异而非模型本身。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://simonwillison.net/2026/Nov/3/qwen-can-interpret-model-weights/">2026-11-04 — Qwen 3.8 27B 在笔记本上也能解读模型权重</a></li>

</ul>
</details>

**标签**: `#quantization`, `#LLM inference`, `#GGUF`, `#self-hosted models`, `#benchmarking`

---

<a id="item-tech-news-9"></a>
### [GrapheneOS 指控 Google 施压合作伙伴并威胁撤销应用授权](https://www.solidot.org/story?sid=85968) ⭐️ 7.0/10

GrapheneOS 通过社交媒体公开指控 Google 向 Android 手机厂商施压，原因是这些厂商与该项目合作；据其说法，相关厂商遭到质询，甚至被威胁撤销 Google 应用授权。这一指控出现在摩托罗拉与 GrapheneOS 合作推出首款支持该系统的旗舰手机 Signature 27 之后。GrapheneOS 称 Google 的部分行为可能触犯美国刑法，并希望与美国司法部沟通，认为此前针对 Google 的反垄断诉讼未触及最严重的违规行为。上述内容均为 GrapheneOS 单方面说法，目前没有 Google 的回应或独立证据支持。

rss · 奇客 Solidot · 11月23日 13:58

**「背景」** Horizon 2026 年 11 月 6 日的日报曾报道，摩托罗拉宣布推出 Signature 27，称其为第一款官方支持 GrapheneOS 的旗舰手机，售价 1600 美元；当时来源未说明 GrapheneOS 支持的具体实现方式或验证机制。此前 GrapheneOS 官方支持的硬件长期只有 Google Pixel 系列，此次与摩托罗拉的合作是其首次扩展到其他厂商。

**「对合作厂商与生态的影响」** 若 GrapheneOS 的指控属实，直接受影响的是与该项目合作的 Android 手机厂商：它们可能因合作而被质询，甚至面临 Google 应用授权被撤销的风险，这会使其他厂商在考虑类似合作时更加谨慎。GrapheneOS 同时指出，越来越多 Android 功能与更新仅限 Pixel 系列，其他硬件合作伙伴在功能获取上处于落后位置。该项目表示正寻求与美国司法部沟通，并称无论后续如何都有足够资源继续运营。

**「社区讨论」** 暂无社区评论可供总结。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.solidot.org/story?sid=85814">2026-11-06 — 摩托罗拉发布首款官方支持 GrapheneOS 的旗舰手机 Signature 27</a></li>

</ul>
</details>

**标签**: `#Android`, `#GrapheneOS`, `#反垄断`, `#开源`, `#移动安全`

---

<a id="item-tech-news-10"></a>
### [韦伯望远镜首次直击恒星吞噬伴星并爆发全过程](https://www.solidot.org/story?sid=85966) ⭐️ 7.0/10

天文学家利用韦伯空间望远镜首次直接观测到仙女座星系中一颗恒星吞噬伴星并最终爆发的完整过程。哥伦比亚大学团队分析的事件 AT 2025abao 表现为仙女座中的一个爆发性光斑，其前身是双星系统：主星质量约为太阳的 7 倍、半径约为太阳的 350 倍、光度约为太阳的 1.8 万倍，伴星质量约为太阳的 0.7 倍。伴星于 2018 年进入主星外层，此后约 7 年间仅经历约 7 圈轨道运动便向内旋近；2025 年 10 月系统强烈爆发，抛射出约 0.1—0.2 个太阳质量的物质，韦伯望远镜在爆发峰值后约 47 天进行了观测。研究团队据此认为伴星可能已与主星并合，但这一结论仍是基于观测数据的推断。

rss · 奇客 Solidot · 11月23日 10:10

**「背景知识」** 恒星演化到生命晚期时体积会急剧膨胀，可能吞没附近轨道上的天体；在双星系统中，这一阶段被称为“共有包层阶段”，第一颗恒星的外层同时包裹自身核心与第二颗恒星。伴星在包层中不断损失轨道能量和角动量，释放的能量可加热并抛射包层，系统最终要么留下紧密双星，要么两颗恒星彻底并合。此前这一过程多依赖理论模型和间接证据，缺乏对单个系统从旋近到爆发的连续直接观测。

**「观测意义」** 该事件提供了从伴星进入包层、异常增亮到最终爆发的多阶段实测数据，包括质量、半径、光度与抛射物质量等参数，可作为检验共有包层演化与并合模型的直接样本。研究团队在 2023 年从大量数据中发现该系统异常增亮并持续监测，说明此类事件需要长期巡天数据配合后续空间望远镜观测才能完整捕捉。

**标签**: `#天文学`, `#韦伯望远镜`, `#双星系统`, `#科学观测`

---

<a id="item-tech-news-11"></a>
### [RoboTrack：面向真实机器人操作的点跟踪方法](https://huggingface.co/blog/allenai/robotrack) ⭐️ 7.0/10

Hugging Face 博客发布了一篇介绍 RoboTrack 的文章，将其描述为面向真实世界机器人操作的点跟踪方法。但所提供的元数据中没有正文、基准测试结果或实现细节，因此无法核实该方法的具体能力、版本、可用性或与现有系统的兼容性。目前只能确认这是一篇由该平台发布的、面向机器人与机器学习从业者的技术介绍，其新颖性和实际效果尚待原文内容确认。

rss · Hugging Face Blog · 11月23日 17:20

**「背景」** RoboTrack 由 Allen Institute for AI（Ai2）发布，包含一个基准、一套合成训练数据集和两个模型，目标是改善机器人在真实操作任务中对物体的点跟踪。其基准 RoboTrack-Bench 收录了来自 DROID、Ego-Exo4D、MolmoAct 2 和 EgoVerse 的 307 段人工标注视频，覆盖不同机器人、人手、杂乱场景以及第一人称和第三人称视角。训练数据方面，团队扩展了 MolmoSpaces 模拟器，生成约 1500 万条与操作任务对齐的合成点轨迹（RoboTrack-15M）。

**「对机器人视觉研究者的影响」** 据 Ai2 介绍，现有主流点跟踪器在 RoboTrack-Bench 上的 Average Jaccard 指标比在 RoboTAP 上低 3.0 至 6.6 分，即便这些模型在更早的机器人数据集上表现领先。这意味着在真实操作场景中评估或部署跟踪模型的研究者，不能直接沿用旧基准上的排名，需要改用包含 307 段人工标注视频的新基准重新验证。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://allenai.org/blog/robotrack">RoboTrack: Point tracking for real-world robotic manipulation</a></li>
<li><a href="https://allenai.org/papers/robotrack">RoboTrack - allenai.org</a></li>
<li><a href="https://huggingface.co/blog/allenai/robotrack">RoboTrack: Point tracking for real-world robotic manipulation</a></li>
<li><a href="https://allenai.org/blog/robotrack">RoboTrack: Point tracking for real-world robotic manipulation</a></li>
<li><a href="https://huggingface.co/blog/allenai/robotrack">RoboTrack: Point tracking for real-world robotic manipulation</a></li>
<li><a href="https://explainx.ai/blog/allen-ai-robotrack-point-tracking-benchmark-2026">RoboTrack: Ai2 Benchmark and Models for Robot Point Tracking</a></li>

</ul>
</details>

**标签**: `#robotics`, `#point tracking`, `#computer vision`, `#machine learning`, `#manipulation`

---

<a id="item-tech-news-12"></a>
### [Zstd 1.6.0 发布：多项修复与性能优化](https://www.phoronix.com/news/Zstandard-Zstd-1.6) ⭐️ 7.0/10

Zstandard（Zstd）1.6.0 已发布，这是距上一版本 v1.5.7 约一年半后的又一次大版本更新。该版本包含大量修复和新的性能优化。不过，目前公开的信息仅为简短预告，尚未给出具体基准测试数据、修复条目或技术细节，因此其实际性能提升幅度尚无法核实。

rss · Phoronix · 11月23日 23:00

**「背景」** Zstandard 是由 Yann Collet 在 Facebook 开发的无损压缩算法，其 C 语言参考实现 zstd 于 2016 年 8 月以开源形式发布，算法本身在 2018 年作为 RFC 8478 发布，并定义了 &quot;application/zstd&quot; 媒体类型、.zst 文件扩展名和 HTTP 内容编码 &quot;zstd&quot;。据 Phoronix 报道，Meta 工程师认为 Zstd 在进一步优化和提升性能方面已接近平台期，近期更多精力转向面向内容感知压缩的 OpenZL；此次 1.6 版本则汇总了自 2025 年 2 月上一版发布以来的各项改进。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Zstd">zstd - Wikipedia</a></li>
<li><a href="https://www.phoronix.com/news/Zstandard-Zstd-1.6">Zstd 1.6 Released With Many Fixes, New Performance ...</a></li>

</ul>
</details>

**标签**: `#compression`, `#open-source`, `#zstd`, `#performance`, `#systems`

---

<a id="item-tech-news-13"></a>
### [AMD EPYC Zen 6 对比 Zen 1：几何均值性能提升 12.1 倍，AI 最高 133 倍](https://www.phoronix.com/review/amd-epyc-9006-7601) ⭐️ 7.0/10

Phoronix 将本月上市的 Zen 6 架构 EPYC 9006“Venice”SP7 服务器处理器与初代 Zen 1 旗舰 EPYC 7601 进行对比测试，在真实工作负载中测得几何均值约 12.1 倍的性能提升，AI 相关负载最高达 133 倍。测试对象为 EPYC 9996 和 EPYC 9686F 两款 Zen 6 型号，评测同时覆盖性能与能效。这些数字来自 Phoronix 的独立基准测试，而非 AMD 官方声明；具体测试项目构成与配置条件需以原文为准。

rss · Phoronix · 11月23日 16:35

**「背景」** 本次对比的基准是 2017 年 6 月发布的初代 EPYC“Naples”旗舰 EPYC 7601，它拥有 32 个 Zen 1 核心、64 线程，基础频率 2.2GHz、最高加速 3.2GHz，并配备 64MB L3 缓存。作为对照的新平台是本月开始出货的 EPYC 9006“Venice”SP7 系列；Horizon 11 月 11 日的日报曾报道该系列正式可用、OEM/ODM 系统同步出货，Phoronix 当时已发布基于 256 核 EPYC 9996 的首测。

**「实际影响」** 对仍在运行 Naples 世代 EPYC 7601 的服务器用户而言，这组数据给出了整机替换的量化参考：同等工作负载下可获得约一个数量级的吞吐提升，AI 场景差距更大。但跨代对比涉及核心数、内存通道与平台（SP7）的整体变化，升级需同步评估主板、内存与散热配套，不能仅按倍数推算单核收益。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.phoronix.com/review/amd-epyc-9996">2026-11-11 — AMD EPYC 9006“Venice”SP7 处理器开始出货，Phoronix 发布首测</a></li>
<li><a href="https://www.phoronix.com/review/amd-epyc-9006-7601">AMD EPYC Zen 6 vs. Zen 1 Performance: 12.1x Geo Mean... - Phoronix</a></li>

</ul>
</details>

**标签**: `#amd-epyc`, `#server-cpus`, `#zen-6`, `#benchmarks`, `#hardware-performance`

---

<a id="item-tech-news-14"></a>
### [XNU Linux 项目让 macOS 用户态程序运行于 Linux](https://www.phoronix.com/news/XNU-Linux) ⭐️ 7.0/10

开源项目 XNU Linux 尝试让 macOS 用户态软件在 Linux 上运行：它基于苹果开源的 XNU 内核组件进行改造，将其作为可加载的 Linux 内核模块加载，目标平台是未做其他改动的 ARM64 Linux 系统。目前该项目仅有简短的项目介绍，尚未披露版本号、成熟度、性能数据或具体兼容范围，因此其可用性仍属未经验证的早期状态。

rss · Phoronix · 11月23日 13:14

**「背景」** XNU 是苹果开源的 macOS 内核，其源码公开发布，因此第三方可以基于这些代码进行改造。XNU Linux 正是从苹果公开的 XNU 源码构建，并将其打包为可加载内核模块 xnu.ko，在未经修改的 ARM64 Linux 内核中加载运行，从而为 macOS 用户态程序提供运行环境。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://github.com/AFK-surf/xnulinux">AFK-surf/xnulinux: XNU as a loadable kernel module inside Linux ...</a></li>

</ul>
</details>

**标签**: `#operating systems`, `#macOS`, `#Linux kernel`, `#open source`, `#ARM64`

---

<a id="item-tech-news-15"></a>
### [Codex2api 疑遭供应链投毒：3.1.10–3.1.12 版本被植入后门](https://github.com/WormW/codex2api-incident-2026-11) ⭐️ 7.0/10

据 Telegram 频道转述的事件复盘，Codex2api 项目作者账号被入侵，攻击者绕过 main 分支直接推送 tag，使 Release 构建出带后门的版本 v3.1.10–3.1.12。其中 v3.1.11 移除了鉴权，等同于可无密码远程执行命令；另有 workflow 将仓库的 16 个 Actions secrets 外传，波及同一账号下至少 21 个仓库。报告建议已安装或更新至 3.1.10–3.1.12 的用户立即停用并回退到 3.1.9，同时轮换 GitHub token、SSH key、数据库及 DeepSeek 等相关密钥。上述内容来自一份简短的社群转述，尚非独立的技术分析或官方确认。

telegram · zaihuapd · 11月23日 11:21

**「背景」** 此次事件的关键机制是攻击者绕过 main 分支、直接推送 tag 触发 Release 构建，从而让带后门的版本以正常发布流程流出。Horizon 在 11 月 12 日的日报中曾介绍过锁定 GitHub Actions 依赖的实践：通过工作流锁文件把 action 调用固定到具体提交哈希，以降低标签被移动带来的供应链风险，但该机制只覆盖普通 action 调用，可复用工作流仍需手动哈希固定。

**「影响与处置」** 使用受影响版本的用户应视为凭据已泄露：除回退到 3.1.9 外，还需轮换 GitHub token、SSH key、数据库和 DeepSeek 等密钥，并检查同一账号下其他仓库的 Actions secrets 是否被滥用。由于攻击通过 tag 推送绕过 main 分支，仅审查主分支代码不足以发现此类后门。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://hugovk.dev/blog/2026/lock-github-actions/">2026-11-12 — 锁定 GitHub Actions 依赖的实践与局限</a></li>

</ul>
</details>

**标签**: `#supply-chain-security`, `#github-actions`, `#secrets-exposure`, `#open-source`, `#incident-report`

---

<a id="item-tech-news-16"></a>
### [Meta 首席 AI 官称超级智能将至，警告人类控制风险](https://thenextweb.com/news/metas-ai-chief-says-superintelligence-is-arriving-and-control-is-at-risk) ⭐️ 7.0/10

Meta 首席 AI 官、超级智能实验室负责人 Alexandr Wang 在 X 发长文表示，超级智能已不再是“未来某天”的议题。他以数学家 Levent Alpöge 借助 Anthropic 的 Claude 完成、并于周六经 Lean 与 Mathlib 社区机器校验的黎曼猜想证明为例，认为 AI 与顶尖人类的差距只剩具体知识、工程整合与实验三块。他警告人类很难继续掌控可无限自我改进、或比自己聪明 1000 倍的系统，呼吁紧急投入安全、对齐与防护研究。该证明目前尚无人类可读版本，相关说法也未在现有材料中获得独立验证。

telegram · zaihuapd · 11月23日 12:49

**「背景」** Alexandr Wang 是 Meta 首席 AI 官，同时领导其超级智能实验室。据 explainx.ai 的梳理，他的这篇长文于 2026 年 11 月 22 日至 23 日经 BusinessToday 等媒体传播，内容与其在 X 上的公开帖一致，属于高管观点表达，而非新模型发布。他在文中把 Claude 辅助完成的黎曼猜想形式化与 2024 年 12 月的 AIME 突破并列为两个标志性节点。

**「影响与待确认事项」** 若该证明的机器校验结果成立，它将成为 AI 辅助数学研究的一个具体案例，但缺少人类可读版本意味着数学家目前难以审阅其论证思路，社区仍需等待可读版本或独立复核。对关注 AI 安全的人来说，Wang 的呼吁指向对齐与防护研究的投入，而非已落地的监管或技术方案。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://explainx.ai/blog/alexandr-wang-superintelligence-arriving-riemann-hypothesis-essay-november-2026">Wang: Superintelligence Arriving After Riemann (2026 ...</a></li>

</ul>
</details>

**标签**: `#AI safety`, `#superintelligence`, `#Meta`, `#automated theorem proving`, `#AI research`

---

<a id="item-tech-news-17"></a>
### [4.5 万家企业组织联名致信欧盟，要求对苹果 iPhone 浏览器限制立案](https://appleinsider.com/articles/26/11/23/eu-urges-to-challenge-apples-grip-on-iphone-browsers?utm_source=rss) ⭐️ 7.0/10

包括 Mozilla 和 Shopify 在内的企业与民间组织联名致信欧盟委员会，要求就苹果对 iPhone 浏览器的限制正式立案。信方称署名方合计代表约 4.5 万至 5.5 万家欧盟企业组织，联署将持续到 2026 年 12 月 3 日。联名方认为，苹果虽已按《数字市场法》允许欧盟竞品浏览器使用自有引擎，但技术与法律要求使厂商无法把现有欧盟用户迁出 WebKit，企业也更依赖 App Store 触达用户。联名方测算，若半数原生 iOS 应用转为 Web 应用，欧盟企业每年可节省 110 亿欧元开发成本和 13 亿欧元 App Store 费用；这些数字与联署规模均来自信方自述，尚未经独立核实。

telegram · zaihuapd · 11月24日 03:02

**「背景」** 《数字市场法》（DMA）自 2024 年起要求苹果在欧盟允许用户选择默认浏览器，并允许第三方浏览器使用自有引擎。Mozilla 曾指出，尽管欧盟用户已可更换默认浏览器，iPhone 上仍没有真正采用非 WebKit 引擎的浏览器。此次联名信正是针对这一落差，要求欧盟委员会就苹果是否履行 DMA 第 5\(7\) 条启动正式调查。

**「潜在影响」** 若欧盟委员会据此立案，苹果在欧盟的浏览器引擎与 App Store 分发规则可能面临进一步审查；对浏览器厂商和开发者而言，当前的关键障碍是现有用户难以迁出 WebKit，以及应用分发对 App Store 的依赖。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://blog.mozilla.org/en/mozilla/internet-policy/apple-ios-browser-engine-rules/">Why there are still no non- WebKit browsers on iOS</a></li>
<li><a href="https://open-web-advocacy.org/blog/question-and-answer-with-simonetta-vezzoso--the-open-web--apple-and-the-dma/">Q&amp;A with Simonetta Vezzoso: The Open Web, Apple , and the DMA</a></li>

</ul>
</details>

**标签**: `#Apple`, `#EU DMA`, `#browsers`, `#antitrust regulation`, `#WebKit`

---

<a id="item-tech-news-18"></a>
### [黄循财：新加坡不会成为规避美国芯片管制的通道](https://www.bloomberg.com/news/articles/2026-11-24/singapore-won-t-be-conduit-to-skirt-us-chip-curbs-wong-says) ⭐️ 7.0/10

新加坡总理黄循财表示，新加坡不会被用作企业规避美国芯片出口管制的通道，当局正在调查 Megaspeed 采购英伟达芯片的交易。此前一天，美国商务部已将 Megaspeed 及另外 6 家东南亚企业列入贸易黑名单，《联邦公报》称这些企业存在向未获授权用户转移先进计算产品的「重大风险」，名单包括其在马来西亚、泰国的关联实体。路透社报道，阿里巴巴新加坡子公司 Apex Enterprise Solutions 同样在列，阿里称从未转移受管制的先进计算芯片。

telegram · zaihuapd · 11月24日 05:03

**「背景」** 美国商务部此次将 Megaspeed 及另外 6 家东南亚企业列入实体清单，理由是这些企业存在向未获授权用户转移先进计算产品的「重大风险」，名单涵盖其在马来西亚、泰国的关联实体，以及阿里巴巴新加坡子公司 Apex Enterprise Solutions。Horizon 11 月 22 日的日报曾援引英国《金融时报》报道称，Megaspeed 马来西亚子公司 2024 年 12 月至 2025 年 12 月的进口货物申报价值约 46 亿美元，部分芯片据称流入中国黑市；该报道基于匿名消息源，相关指控尚未得到独立证实。

**「影响」** 被列入黑名单的 Megaspeed 及其东南亚关联实体将面临美国出口限制，与其有芯片采购或转售往来的企业需要核查交易对象是否在名单内。新加坡总理的表态意味着当地监管机构可能加强对英伟达芯片采购交易的审查，相关企业在新加坡经手的先进计算产品流向将受到更严格的合规审视。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.ft.com/content/f3ad8a81-3890-4a8a-8853-ff0a94b08ba9?syn-25a6b1a6=1">2026-11-22 — 英媒指太子集团关联人员涉英伟达芯片对华走私</a></li>
<li><a href="https://uz.kursiv.media/en/2026-11-24/us-blacklist-megaspeed-alice-huang/">US blacklists Megaspeed , once led by China spy suspect Alice Huang</a></li>
<li><a href="https://finance.yahoo.com/technology/ai/articles/us-blacklists-alibaba-owned-company-014536273.html">US Blacklists Alibaba-Owned Company in Setback to AI Ambitions</a></li>

</ul>
</details>

**标签**: `#chip export controls`, `#AI hardware`, `#Nvidia`, `#Singapore`, `#US-China tech policy`

---

## 科技博客

<a id="item-tech-blog-1"></a>
### [Cloudflare 用 Flamingo 探测 DNS 传播](https://blog.cloudflare.com/probing-dns-at-cloudflare/) ⭐️ 6.0/10

rss · Cloudflare Blog · 11月23日 14:00

**「背景」** Cloudflare DNS 团队曾遇到一次发布事故：负责向边缘发布 DNS 记录的服务出现调度缺陷，部分记录变更数小时未发布，服务本身健康，但新主机名解析缓慢、证书无法签发。DNS 故障慢、分布广且影响局部，单元测试和仪表盘难以捕捉，团队需要像客户一样从每个数据中心持续对生产环境做测试。

**「方案」** 作者介绍的做法是扩展现有的端到端测试框架 Flamingo，而不是另建探测服务。Flamingo 原本围绕 HTTP 的多步测试设计，使用 setup-request-response 的 DSL，让测试失败时不必同时调试被测系统和测试代码；其 Rust 实现把中间步骤抽象为 Action，用强类型枚举区分 HTTP 查询与 DNS 查询，并通过动态分发的 ActionHandler 把具体执行逻辑与调度、资源管理解耦，因此 DNS 团队只需编写查询逻辑，就能复用既有的调度、上报和指标管道。DNS 模块持续用时间戳更新一条 TXT 记录，从每个数据中心向三个权威 nameserver IP 和公共解析器 1.1.1.1 发起查询，断言权威侧记录在 90 秒内、解析器侧在 600 秒内保持新鲜，示例还检查 RCODE 为 NOERROR、响应带 AA 标志。这些合成探测数据被用于计算 SLO 和错误预算：同样消耗 10% 预算，三天内发生可能只是长期问题，一小时内发生则意味着正在发生事故；发布系统据此决定推进还是回滚，若某个金丝雀数据中心传播延迟突增，可自动暂停新版本铺开。文章也提到 Flamingo 已有 TCP、UDP、WebSockets 等模块，但未给出传播延迟的实测数字、事故前后对比，也未讨论误报、探测成本或局限。

**「启示」** 作者的核心论点是：把 DNS 传播这类分布式、部分可见的故障纳入持续的生产合成探测，并用 SLO 燃烧率驱动发布门禁，比单纯依赖单元测试更能提前拦住影响客户的问题。其更大意义在于，模块化的测试框架可以让新协议以较低成本获得同等的可观测性和自动化发布保护。

**标签**: `#DNS`, `#synthetic monitoring`, `#SLO/error budgets`, `#release gating`, `#distributed testing`

---

## 财经新闻

<a id="item-finance-news-1"></a>
### [上海地铁票价 21 年来首次调整，12 月 1 日起实施](https://weibo.com/1699432410/5368461393397183) ⭐️ 7.0/10

上海轨道交通将于 12 月 1 日起实施 21 年来首次票价调整，起乘价定为 3 元、覆盖 0 至 4 公里，之后按 4、4、4、7、7、10、10 公里分段加 1 元，50 公里以上每 15 公里加 1 元。

telegram · zaihuapd · 11月23日 10:45

**「背景」** 这是上海地铁自 2005 年前后以来首次调整票价；同步推出的计次票和满额优惠，目的是减少调价对高频出行人群的影响。

**「影响」** 经常乘地铁的通勤者将直接受影响：四档计次票（35 次 190 元、45 次 210 元、60 次 270 元、90 次 390 元）于 11 月 26 日开售，同一支付渠道当月累计满 90 元后可享 9 折。

**标签**: `#public transit`, `#pricing`, `#Shanghai`, `#consumer policy`, `#urban transport`

---