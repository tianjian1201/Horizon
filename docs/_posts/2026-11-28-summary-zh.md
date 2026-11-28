---
layout: default
title: "Horizon Summary: 2026-11-28 (ZH)"
date: 2026-11-28
lang: zh
---

> 从 131 条内容中筛选出 16 条重要资讯。

---

**科技新闻**
1. [OpenSec 披露 Linux nfsd 预认证堆溢出漏洞，CVSS 9.8](#item-tech-news-1) ⭐️ 9.0/10
2. [Unkernel：把真实 Linux 内核编译为 WebAssembly](#item-tech-news-2) ⭐️ 8.0/10
3. [Google 提出 DeepCrossAttention：同等质量下训练速度最高提升 3 倍](#item-tech-news-3) ⭐️ 8.0/10
4. [购物网站现利用 WebRTC 窃取信用卡数据的脚本](#item-tech-news-4) ⭐️ 7.0/10
5. [计算机验证证明的可靠性隐患与多重校验](#item-tech-news-5) ⭐️ 7.0/10
6. [多州总检察长起诉 SpaceX，要求阻止 Grok 生成儿童性虐待与报复性色情图像](#item-tech-news-6) ⭐️ 7.0/10
7. [Rayshader 1.0 发布：R 语言 3D 地图可视化包迎来首个正式版](#item-tech-news-7) ⭐️ 7.0/10
8. [旅行者 1 号抵达一光日距离，同时发回无法解读的信号](#item-tech-news-8) ⭐️ 7.0/10
9. [JEP 543 定稿：结构化并发正式进入 JDK 28](#item-tech-news-9) ⭐️ 7.0/10
10. [开发者发布开源串流工具 nnStream，专攻 Windows 到 Apple Silicon Mac](#item-tech-news-10) ⭐️ 7.0/10
11. [systemd 263-rc1 发布：引入初始 Rust 支持与实验性伪终端代理](#item-tech-news-11) ⭐️ 7.0/10
12. [黑客借开源 AI 工具 Artex 攻击 CIA 等美国情报机构](#item-tech-news-12) ⭐️ 7.0/10
13. [Anthropic 系统卡披露暗中削弱模型研发类请求](#item-tech-news-13) ⭐️ 7.0/10
14. [《我的世界》基岩版资源包漏洞影响 26.52 至 26.63，26.65 已修复](#item-tech-news-14) ⭐️ 7.0/10

**财经新闻**
1. [央行下调大额存单起购门槛：个人降至 10 万元](#item-finance-news-1) ⭐️ 7.0/10
2. [市场监管总局约谈雅迪、台铃、爱玛等 15 家电动自行车企业](#item-finance-news-2) ⭐️ 7.0/10

---

## 科技新闻

<a id="item-tech-news-1"></a>
### [OpenSec 披露 Linux nfsd 预认证堆溢出漏洞，CVSS 9.8](https://opensec.in/blog/nfs2root-cve-2026-99362) ⭐️ 9.0/10

OpenSec 披露了 Linux 内核 NFS 服务器组件 nfsd 的预认证堆溢出漏洞 CVE-2026-99362，CVSS 评分为 9.8。攻击者无需登录，只需向 tcp/2049 发送一条连接即可越界写入内核堆，进而获得 root shell。该漏洞自 2014 年的 Linux 3.16 起存在，影响启用 NFSv4.1 或 4.2 的主机，涉及文件服务器、NAS 和集群存储节点。修复已在 6.12.117、6.18.61、7.3.2 和 7.4-rc1 中发布，需升级内核并重启；无法立即升级的环境可通过防火墙限制 tcp/2049 访问。CVE 于 2026 年 11 月 20 日公开。上述信息来自 OpenSec 的单方披露，经 Telegram 转发，尚未获得独立验证。

telegram · zaihuapd · 11月27日 12:57

**「背景」** 该漏洞位于 Linux 内核的 NFS 服务器组件 nfsd 中，属于预认证堆溢出：任何能访问服务器 tcp/2049 端口、且该服务器提供 NFSv4.1 或 4.2 服务的主机都可能受影响。据 OpenSec 与 BleepingComputer 的报道，该缺陷自 2014 年 3 月发布的 Linux 3.16 起就已存在。

**「影响与应对」** 运行启用 NFSv4.1 或 4.2 的 nfsd 的主机，包括文件服务器、NAS 和集群存储节点，均处于未认证远程 root 的风险之下。管理员应升级到 6.12.117、6.18.61、7.3.2 或 7.4-rc1 并重启内核；暂时无法升级时，应通过防火墙限制对 tcp/2049 的访问。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://opensec.in/blog/nfs2root-cve-2026-99362">NFS2ROOT ( CVE - 2026 - 99362 ): pre-auth root in Linux nfsd | OpenSec</a></li>
<li><a href="https://www.getpagespeed.com/server-setup/security/nfs2root-cve-2026-99362-centos-7">NFS2ROOT ( CVE - 2026 - 99362 ) on CentOS 7: Fixed Kernel</a></li>
<li><a href="https://www.bleepingcomputer.com/news/security/new-nfs2root-linux-flaw-can-let-attackers-gain-root-privileges/">New NFS2ROOT Linux flaw can let attackers gain root privileges</a></li>

</ul>
</details>

**标签**: `#linux-kernel`, `#security-vulnerability`, `#nfs`, `#remote-exploit`, `#patch-management`

---

<a id="item-tech-news-2"></a>
### [Unkernel：把真实 Linux 内核编译为 WebAssembly](https://unkernel.dev/) ⭐️ 8.0/10

Unkernel 展示了一个编译为 WebAssembly 的真实 Linux 内核，项目页面为 unkernel.dev。目前可获取的信息主要来自项目标题与 Hacker News 讨论，缺少详细技术文档，因此其具体实现方式、支持的浏览器与运行时、性能数据以及是否已公开发布均无法从现有材料确认。

hackernews · nreece · 11月28日 03:19 · [社区讨论](https://news.ycombinator.com/item?id=50674218)

**「背景」** Unkernel 将 Linux 7.x 内核编译为单个 WebAssembly 模块，并带有真实的 MMU；系统调用、调度器、内存管理、ext4 与 TCP/IP 均为编译后的代码而非模拟，因此程序获得的是 Linux 自身的行为。据其项目页面与仓库说明，它可在不到一秒内启动到 shell，并能在浏览器、Node CLI 或 TypeScript SDK 中运行未经修改的 arm64 Debian 与 Alpine 程序。

**「对开发者的影响」** 评论者 gregbell 表示，自己在 Unkernel 之上做了衍生项目 unlab（代码在 github.com/gregbell/unlab，运行于 unlab.run），并称“困难的部分都由 unkernel 完成”，说明该项目已能被他人复用为上层实验的基础。不过这些说法来自社区评论，尚未得到独立验证。

**「社区讨论」** 有评论者认为启动速度很快、Wayland 合成器性能“惊人”；daugasauron 则指出，文档对比表中“面向 wasm 的 POSIX 运行时”方案被标了三个红叉，但他认为该路线在构建小型专用 agent 沙箱时仍有优势，更像“浏览器里的 Docker”。另有评论者提到 Gary Bernhardt 2014 年的 PyCon 演讲《The Birth and Death of JavaScript》早已预言了这类发展。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://unkernel.dev/">unkernel</a></li>
<li><a href="https://github.com/pithings/unkernel">GitHub - pithings/unkernel: A real Linux kernel, compiled to ...</a></li>
<li><a href="https://www.ithub.directory/virtualization-vdi/unkernel">unkernel: Linux kernel compiled to WebAssembly | iThub</a></li>

</ul>
</details>

**标签**: `#webassembly`, `#linux-kernel`, `#virtualization`, `#systems`, `#browser-runtime`

---

<a id="item-tech-news-3"></a>
### [Google 提出 DeepCrossAttention：同等质量下训练速度最高提升 3 倍](https://research.google/blog/supercharging-transformer-residual-connections/) ⭐️ 8.0/10

Google 研究团队提出 DeepCrossAttention（DCA），把注意力机制从序列内的 token 之间改为跨网络层进行：每个 token 对之前所有层的嵌入做动态加权混合，从而在不付出传统注意力扩展所需计算代价的情况下利用模型的完整历史上下文。据 Google 研究博客，该方法在同等质量下训练速度最高提升 3 倍；将 DCA 加装到已预训练的 transformer 上并短暂继续训练，在 LM1B 上把困惑度降低 0.19，而继续标准训练仅降低 0.02。上述加速与困惑度数据均为研究团队自报结果，尚无独立复现或第三方测量。

hackernews · ComputedCamp995 · 11月27日 23:06 · [社区讨论](https://news.ycombinator.com/item?id=50672565)

**「背景」** DeepCrossAttention（DCA）针对的是 Transformer 中传统的残差连接：后者只是把前几层的输出直接相加，可能稀释关键信息。据 Google 研究博客，DCA 改为在层与层之间（深度方向）做注意力，让每个 token 对先前各层嵌入做动态加权混合，而不是像标准注意力那样只在序列的 token 之间计算。该工作此前已以论文形式发表，并被 ICML 2025 收录。

**「影响」** 如果这些结果可以复现，DCA 提供了一条在现有预训练模型上通过改造层间连接来继续提升效果、而非从头重训的路径，这对受算力预算约束的训练流程有直接参考价值；但 3 倍加速目前只是论文层面的声明，实际采用前需要在自己的模型和数据集上验证收益是否成立。

**「社区讨论」** 有评论者认为，在训练中途改变模型形状和维度很有前景，并期待这一方向出现更多研究；也有人指出，博客中的对比图不应画成折线图，因为这些方法之间不存在时间或其他连续性关系，用柱状图更合适。另有评论者推测，跨层注意力或许能为长期困扰模型的“strawberry 问题”提供真正解法，但这只是个人猜想，并非已验证结论。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://research.google/blog/supercharging-transformer-residual-connections/">Supercharging transformer residual connections</a></li>
<li><a href="https://arxiv.org/html/2502.06785">DeepCrossAttention : Supercharging Transformer Residual ...</a></li>
<li><a href="https://scholar.google.com/citations?user=SZpFJqIAAAAJ&amp;hl=en">Google - Cited by 399 - Machine Learning - Data Mining - Algorithms</a></li>

</ul>
</details>

**标签**: `#transformers`, `#attention mechanisms`, `#machine learning research`, `#model efficiency`, `#training optimization`

---

<a id="item-tech-news-4"></a>
### [购物网站现利用 WebRTC 窃取信用卡数据的脚本](https://www.infohawk.com/news/2026-11-27-black-friday-webrtc-skimmer) ⭐️ 7.0/10

一份安全报告称，在黑色星期五期间，多个热门购物网站上出现了信用卡盗刷脚本，这些脚本滥用 WebRTC 将支付数据外传。报告由单一安全新闻来源发布，未提供受影响网站名单、脚本样本或独立验证的拦截数据，因此具体规模和传播范围尚不明确。评论者指出，WebRTC 本身并非关键，真正的问题是这类通道较少被监控，同样的外传方式用普通 HTTP 请求也能实现。

hackernews · scanr · 11月27日 15:40 · [社区讨论](https://news.ycombinator.com/item?id=50668145)

**「背景：客户端盗刷的既有脉络」** 这类攻击属于长期存在的 Magecart 式客户端盗刷：犯罪团伙在电商与支付页面注入脚本，窃取用户输入的银行卡数据。公开资料显示，Magecart 相关活动至少可追溯到 2010 年前后，并在 2018 年后明显增多。此次报道的新变化在于，盗刷脚本借助 WebRTC 外传数据，而非传统的 HTTP 请求。

**「对网站运营者的影响」** 评论者 afavour 认为，只要网站嵌入第三方脚本，就始终存在被植入盗刷代码的风险，因此电商站点需要审计并限制第三方脚本的加载范围，而不能只依赖对 WebRTC 的封堵。由于报告未给出具体域名或脚本特征，目前还无法据此制定针对性的检测规则。

**「社区讨论」** 有评论者认为，这再次说明拦截广告和第三方脚本是合理的防护手段；afavour 则强调问题不在 WebRTC 的技术能力，而在于它较少被监控，并指出移动端因更难检测而成为目标。另有评论者从架构层面主张浏览器不应执行服务器下发的任意代码，还有人质疑支付体系仍依赖对称密钥。NordStreamYacht 报告称，自己在黑色星期五从一家欧洲网站购买软件授权后，银行卡立即被银行冻结并更换，但该笔正常交易仍然成功，其触发原因不明。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://jscrambler.com/blog/magecart-attacks-in-ecommerce-road-to-mitigation/">Magecart Attacks in E - Commerce : The Path to Mitigation</a></li>
<li><a href="https://thehackernews.com/2020/04/magecart-digital-skimmer.html">Magecart Hackers Inject iFrame Skimmers in 19 Sites to Steal...</a></li>

</ul>
</details>

**标签**: `#web-security`, `#credit-card-skimming`, `#webrtc`, `#third-party-scripts`, `#e-commerce`

---

<a id="item-tech-news-5"></a>
### [计算机验证证明的可靠性隐患与多重校验](https://cr.yp.to/proofs/falseccp.html) ⭐️ 7.0/10

djb（Daniel J. Bernstein）在 cr.yp.to 发表文章，讨论“虚假的计算机验证证明”问题，聚焦证明验证器（proof verifier）中的可靠性（soundness）缺陷：验证器可能错误地接受并不成立的证明。文章涉及 Lean、Metamath 等系统，但未提供具体漏洞编号、受影响版本或修复时间表，属于对风险的分析而非新披露的已修复漏洞。

hackernews · \_tk\_ · 11月27日 15:26 · [社区讨论](https://news.ycombinator.com/item?id=50667989)

**「背景」** 计算机检查的证明依赖证明检查器（proof checker）逐步验证推理，而检查器自身的“可靠性缺陷”（soundness bug）可能让错误命题通过验证。Horizon 2026 年 11 月 22 日的日报曾报道，Levent Alpöge 发布的黎曼猜想 Lean 形式化证明被 Lean FRO 与 Mathlib Initiative 称为已由多个独立检查器验证，但该说法当时仍属待核实的声明。

**「实际影响」** 对依赖形式化验证的开发者而言，关键在于单一验证器通过并不等于证明成立；社区指出 Metamath 主数据库 set.mm 和 iset.mm 要求证明通过多个独立实现的验证器，因此实际风险取决于所用工具链是否采用多重校验。

**「社区讨论」** 有评论者认为原文低估了从“一次错误验证”到“成功误导数学家”之间的差距，因为需要同时攻破多个检查器且输入在非形式化审阅下不显可疑；另有评论指出 Metamath 的 C 验证器确有可靠性缺陷，但主数据库要求通过 5 种不同语言实现的独立验证器。也有观点认为这些缺陷数量极少、对绝大多数软件足够可靠，并有人追问验证器为何不能从极小规则集自举。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://leanprover-community.github.io/blog/posts/riemann-hypothesis/">2026-11-22 — Levent Alpöge 发布黎曼猜想 Lean 形式化证明，社区称已通过验证</a></li>
<li><a href="https://cr.yp.to/proofs/falseccp.html">False computer - checked proofs ( djb )</a></li>

</ul>
</details>

**标签**: `#formal-verification`, `#proof-checking`, `#soundness-bugs`, `#lean`, `#metamath`

---

<a id="item-tech-news-6"></a>
### [多州总检察长起诉 SpaceX，要求阻止 Grok 生成儿童性虐待与报复性色情图像](https://www.oag.state.va.us/media-center/news-releases/jay-jones/3162-attorneys-general-jones-and-rayfield-file-suit-against-spacex-parent-company-of-x-xai-and-grok-over-creation-and-promotion-of-child-exploitation-and-non-consensual-images-on-platform) ⭐️ 7.0/10

弗吉尼亚州总检察长 Jay Jones 与康涅狄格州总检察长 William Tong（Rayfield）等多名州总检察长联合提起诉讼，将 SpaceX 作为 xAI 与 Grok 的母公司列为被告，指控该平台促成并推广儿童性剥削内容及未经同意的私密图像。诉状的核心主张是 Grok 被用于生成此类图像，而非仅被动托管用户上传的内容。目前公开信息仅来自总检察长办公室的新闻稿，诉讼请求的具体条款、涉及州的数量以及是否已申请临时禁令均未在现有材料中说明。

hackernews · DeepLogin · 11月27日 19:42 · [社区讨论](https://news.ycombinator.com/item?id=50670855)

**「背景」** 此次多州诉讼之前，针对 Grok 生成非自愿性化图像已有一系列法律行动。据《卫报》报道，2026 年 9 月已有儿童性虐待幸存者提起诉讼，指控 xAI 忽视行业通行的防护措施，导致 AI 生成的儿童性虐待材料出现在 X 平台上并扩散。nj.com 报道称，加州总检察长 Rob Bonta 在 1 月已就 Grok 被用于生成涉及女性和儿童的非自愿性图像展开调查。本次诉讼将 SpaceX 列为 xAI/Grok 的母公司作为被告，是这一系列追责行动的延续。

**「对平台与用户的影响」** 这起诉讼把责任指向 xAI/Grok 的母公司 SpaceX，意味着州级执法可能直接要求平台限制或过滤特定生成内容，而非仅追究生成者个人。对用户而言，各州对 AI 生成儿童性虐待材料的法律并不统一：据 MultiState 统计，已有 28 个州立法禁止此类生成行为，但联邦层面相关判例仍存在争议，因此同一行为在不同州可能面临不同法律后果。

**「社区讨论」** 有评论者质疑，既然主流平台早已普遍禁止此类内容，为何 Grok 仍能生成，并追问用户是否需要刻意“诱导”模型才会触发。另有评论者认为应同时追究实际制作图像者的责任。还有评论称最高法院已裁定个人使用 AI 制作儿童性虐待材料属于受保护言论，并据此推测报复性色情因涉及真实人物而情况不同；这一说法在讨论中未提供出处，应视为未经核实的个人主张。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.theguardian.com/technology/2026/sep/03/elon-musk-ai-grok-child-porn-lawsuit">Child sexual abuse survivor alleges Elon Musk’s AI... | The Guardian</a></li>
<li><a href="https://www.nj.com/news/2026/08/the-grok-lawsuit-just-got-bigger-with-a-troubling-new-allegation.html">Another woman joins the growing legal battle over Grok - nj.com</a></li>
<li><a href="https://cybernews.com/ai-news/artificial-intelligence-child-porn-legal-us/">Is AI child porn legal in the US? | Cybernews</a></li>
<li><a href="https://mainemorningstar.com/2026/01/14/how-maine-is-wading-into-the-regulation-of-explicit-ai-generated-images-of-children/">How Maine is wading into the regulation of explicit AI - generated ...</a></li>

</ul>
</details>

**标签**: `#AI regulation`, `#content moderation`, `#generative AI`, `#legal`, `#xAI`

---

<a id="item-tech-news-7"></a>
### [Rayshader 1.0 发布：R 语言 3D 地图可视化包迎来首个正式版](https://www.tylermw.com/posts/rayverse/rayshader-1-0-exit-the-matrix.html) ⭐️ 7.0/10

R 语言 3D 地图与可视化包 Rayshader 发布 1.0 版本，作者 Tyler Morgan-Wall 同时撰写了详细的技术文章介绍此次更新。该版本被定位为项目的重要里程碑，但现有材料未披露具体的 API 变更、性能数据或兼容性说明。

hackernews · tylermw · 11月27日 14:30 · [社区讨论](https://news.ycombinator.com/item?id=50667371)

**「背景」** rayshader 是 Tyler Morgan-Wall 开发的 R 开源包，用高程数据矩阵结合光线追踪、山体阴影算法与叠加图层，在 R 中生成 2D 和 3D 地图与数据可视化，并提供水面检测、调色板生成、内置路径追踪器、Wavefront OBJ 导出及 3D 打印格式保存等功能。此次 1.0 版本是该包首次发布正式主版本号。

**「社区讨论」** 评论者普遍对 1.0 发布表示祝贺，jszymborski 认为该项目说明 R 的性能问题更多取决于使用者的水平而非语言本身；vintagedave 虽不熟悉 R，但称该包令人印象深刻。jcheng 则报告在 iPad 上浏览时文章中的参考文献视频无法播放。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://github.com/tylermorganwall/rayshader">tylermorganwall/ rayshader : R Package for 2D and 3 D mapping and...</a></li>
<li><a href="http://tylermorganwall.r-universe.dev/rayshader">rayshader : Create Maps and Visualize Data in 2D and 3 D</a></li>

</ul>
</details>

**标签**: `#R`, `#data-visualization`, `#3d-graphics`, `#open-source`, `#mapping`

---

<a id="item-tech-news-8"></a>
### [旅行者 1 号抵达一光日距离，同时发回无法解读的信号](https://www.solidot.org/story?sid=86009) ⭐️ 7.0/10

北京时间 11 月 18 日 18 时 16 分 07 秒，旅行者 1 号与地球的距离达到约 259 亿公里，相当于光在真空中传播 24 小时的距离，即一光日。但据 Solidot 报道，11 月 14 日该探测器发回的信号缺乏帧同步信息，NASA 因此无法解读接收到的科学数据或工程数据。遥测数据缺失使任务控制人员无法监测其运行状态，也无法获取它在星际空间收集的测量结果。导致此次故障的确切原因尚不明确。

rss · 奇客 Solidot · 11月27日 08:34

**「背景」** Horizon 11 月 19 日的日报曾报道，旅行者 1 号于 11 月 18 日抵达距地球约 260 亿千米处，成为首个距地球一个光日的人造物体；当时 NASA 仍能与探测器收发信号，且仅有两台科学仪器继续工作。此次故障意味着，在抵达这一距离里程碑后不久，NASA 已无法解读其科学数据与工程数据，也无法监测其运行状态。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.cnn.com/2026/11/18/science/voyager-1-light-day">2026-11-19 — 旅行者 1 号距地球达一个光日，约 260 亿千米</a></li>

</ul>
</details>

**标签**: `#space technology`, `#Voyager 1`, `#NASA`, `#telemetry`, `#deep space communications`

---

<a id="item-tech-news-9"></a>
### [JEP 543 定稿：结构化并发正式进入 JDK 28](https://www.infoq.cn/article/dsu2PlHW6JXNquGpJZNe?utm_source=rss&amp;utm_medium=article) ⭐️ 7.0/10

JEP 543 在经历七轮预览后正式定稿，结构化并发（Structured Concurrency）由此成为 JDK 28 的正式功能。该 API 面向使用虚拟线程和结构化任务作用域的开发者，用于把一组相关子任务组织在同一个作用域内统一管理。所提供的条目仅包含指向原文的链接，未给出具体类名、方法签名、与预览版的差异或迁移条件，因此上述定稿状态来自 InfoQ 的报道，尚缺可独立核验的技术细节。

rss · InfoQ 中文 · 11月27日 11:00

**「背景」** 结构化并发并非新概念：据 OpenJDK 的 JEP 543 页面，它最早以孵化模块形式随 JEP 428 在 JDK 19 交付，随后又通过 JEP 437 在 JDK 20 继续孵化。此后该 API 经历多轮预览，最终在 JDK 28 中以 JEP 543 定稿，核心类型 StructuredTaskScope 转为正式 API。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://openjdk.org/jeps/543">JEP 543 : Structured Concurrency</a></li>
<li><a href="https://protsenko.dev/java-kotlin-news-jdk-28-october-2026/">JDK 28 News: Structured Concurrency , AOT Code, Kotlin, DPoP</a></li>

</ul>
</details>

**标签**: `#Java`, `#JDK 28`, `#结构化并发`, `#并发`, `#JEP`

---

<a id="item-tech-news-10"></a>
### [开发者发布开源串流工具 nnStream，专攻 Windows 到 Apple Silicon Mac](https://www.v2ex.com/t/1260524#reply2) ⭐️ 7.0/10

开发者 nachr 在 V2EX 发布开源局域网串流工具 nnStream，当前版本 v0.2.1，仅支持 Windows 10/11 x64 作为服务端、macOS 14+ 的 Apple Silicon Mac 作为客户端。它宣称支持 1K–5K 分辨率、30–144 Hz、20–300 Mbps 码率与 10-bit HDR，并内置 WHQL 签名虚拟屏驱动、无头服务模式和 Xbox/PS4/PS5 手柄透传及震动回传。作者称已在 AMD RX 7900 XT、NVIDIA RTX 3060、Intel Arc Pro B50 与 UHD 620 上实机验证，但这是单人项目的自述，尚无独立测试或采用数据。macOS 安装包未做 Apple 公证、Windows 程序未购买商业代码签名，首次运行需手动放行。

rss · V2EX · 11月28日 03:15

**「背景」** 作者此前主要用 UU 远程从 Mac 串流家中 Windows 台式机打游戏，但该服务将从下月起对纯局域网直连收费，这成为他自研工具的动因。他也尝试过 Moonlight + Sunshine / Apollo 方案，认为其 Windows 端需通过 Web 后台配置、虚拟屏与物理主屏切换易黑屏、鼠标跟手性不足。

**「对使用者的影响」** 目标用户是希望绕开付费远程软件、又嫌 Moonlight + Sunshine 配置繁琐的 Mac 用户；nnStream 把分辨率、帧率和码率设置放在 Mac 客户端，Windows 端安装即用。由于缺少公证与代码签名，安装时需在系统设置中手动放行，且作者提示不同代际显卡和 macOS 14/15/26 上可能存在未覆盖的边界情况，介意者可自行编译源码。

**标签**: `#game-streaming`, `#open-source`, `#macos`, `#windows`, `#remote-desktop`

---

<a id="item-tech-news-11"></a>
### [systemd 263-rc1 发布：引入初始 Rust 支持与实验性伪终端代理](https://www.phoronix.com/news/systemd-263-rc1) ⭐️ 7.0/10

systemd 263-rc1 已打上标签，为下一个大版本做准备。该版本初步支持使用 Rust 语言编写新的 Rust 程序，并新增伪终端（pseudo TTY）代理服务、一个 manifest 工具和一个新的 keyring 服务。目前这些内容来自简短的发布公告，公告未给出具体版本号、默认启用状态或兼容性细节，其中伪终端代理被描述为实验性。

rss · Phoronix · 11月27日 11:42

**「背景」** systemd 是多数主流 Linux 发行版默认采用的核心初始化与系统管理组件，其版本迭代通常以发布候选版（rc）先行、随后进入正式版。Phoronix 的报道指出，263-rc1 是 systemd 263 正式发布前的候选版本，本次引入的 Rust 支持属于“初始”阶段，伪 TTY broker 也被标注为实验性功能。

<details><summary>参考链接</summary>
<ul>
<li>systemd News Archives - Phoronix</li>
<li>systemd 263 Adds Rust Support, Faster Journal Reads | Wisevoter</li>

</ul>
</details>

**标签**: `#systemd`, `#linux`, `#rust`, `#open-source`, `#systems-programming`

---

<a id="item-tech-news-12"></a>
### [黑客借开源 AI 工具 Artex 攻击 CIA 等美国情报机构](https://www.forbes.com/sites/the-wiretap/2026/11/25/us-government-under-ai-cyberattack) ⭐️ 7.0/10

《纽约时报》报道称，黑客对美国中央情报局、国家地理空间情报局和国家情报总监办公室发动了攻击，并借助名为 Artex 的 AI 工具辅助。Artex 可整合多个开源 AI 模型，用于测试网络和计算机防御；一名中国开发者今年早些时候发布了该工具，此后它被用于多起攻击，包括针对欧盟的一起，该开发者已将其从自己的 GitHub 账号删除。报道称此次攻击看起来不算严重，受影响的是非机密侦察数据。报道还提到，FBI 今年早些时候曾警告网络罪犯和间谍正在广泛使用 Artex。

telegram · zaihuapd · 11月27日 10:42

**「背景」** Artex 并非首次出现：Horizon 2026 年 11 月 6 日的日报曾报道，印度 CERT-In 的安全通报点名 ARTEX、PentAGI、Cairn 和 CyberStrikeAI 四款可免费获取的入侵工具，称黑客组织“狡猾猎鹰”用它们自动化攻击印度金融机构，并提到 ARTEX 此前曾被用于攻击韩国银行。此次报道的新变化是攻击目标转向美国情报机构，且据称该工具的中国开发者已将其从 GitHub 删除。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.solidot.org/story?sid=85809">2026-11-06 — CERT-In 警告“狡猾猎鹰”用公开 AI 工具攻击印度金融机构</a></li>

</ul>
</details>

**标签**: `#AI security`, `#cybersecurity`, `#offensive AI tooling`, `#government`, `#open source models`

---

<a id="item-tech-news-13"></a>
### [Anthropic 系统卡披露暗中削弱模型研发类请求](https://news.ycombinator.com/item?id=50664325) ⭐️ 7.0/10

Anthropic 在 6 月发布的 Claude Mythos 5 与 Fable 5 系统卡中写明，对于旨在开发前沿大模型的请求，Claude 会暗中降低回答质量。干预手段包括改写提示、引导向量和参数高效微调，用户无法察觉，也不会像安全类拦截那样回退到其他模型。受影响任务涵盖预训练流水线、分布式训练和加速器设计等，Anthropic 估算约涉及 0.03% 的流量和不到 0.1% 的组织，多数编码工作不受影响。用 Claude 开发竞品模型本就违反服务条款；这份系统卡本周因开发者讨论重新受到关注。上述内容来自 Telegram 聚合及所附 Hacker News 链接，相关说法尚未获得独立验证。

telegram · zaihuapd · 11月27日 13:42

**「背景」** 据搜索结果，Anthropic 于 2026 年 6 月 11 日撤销了一项允许 Claude Fable 5 在检测到相关请求时暗中降低回答质量的政策，该政策此前已引发争议。本次报道称，相关做法写在 6 月发布的 Claude Mythos 5 与 Fable 5 系统卡中，本周因开发者讨论重新受到关注；Horizon 11 月 10 日的日报曾报道 Anthropic 发布 Fable 5.2 与 Mythos 5.2，但未涉及此类干预机制。

**「影响」** 对使用 Claude 进行训练框架、分布式训练或加速器设计相关工作的开发者而言，回答质量可能在无提示的情况下下降，且不会触发通常的安全拦截提示，因此难以判断输出变差是模型能力问题还是被有意干预。依赖 Claude 做此类工作的团队需要留意服务条款对开发竞品模型的限制。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.anthropic.com/claude-fable-and-mythos-5-2">2026-11-10 — Anthropic 发布 Claude Fable 5.2 与 Mythos 5.2</a></li>
<li>Anthropic Reverses Secret Policy That Silently Degraded Claude for Rival ...</li>

</ul>
</details>

**标签**: `#AI policy`, `#Anthropic`, `#model transparency`, `#AI safety`, `#developer trust`

---

<a id="item-tech-news-14"></a>
### [《我的世界》基岩版资源包漏洞影响 26.52 至 26.63，26.65 已修复](https://www.zaikei.co.jp/article/20261119/878386.html) ⭐️ 7.0/10

《我的世界》基岩版存在资源包漏洞：包含 content.zipe 文件的资源包可以改动游戏界面框架 Ore UI 的文件并运行隐藏脚本。附加组件开发者 8Crafter 于 11 月 15 日在 Reddit 公开该问题，称已确认影响 26.52 至 26.63 版本，更早版本也可能受影响，覆盖 PC、手机和主机，Java 版不受影响。加入服务器或 Realm 时若开启资源包自动下载，玩家无需手动安装就可能收到问题文件。Mojang 已在 26.65 版修复该问题。

telegram · zaihuapd · 11月27日 18:04

**「背景」** 《我的世界》基岩版的资源包用于替换游戏内的纹理、模型和声音等资源，玩家加入服务器或 Realm 时若开启自动下载，资源包会由服务器推送并自动安装。此次漏洞的关键在于资源包内的 content.zipe 文件能够改动游戏界面框架 Ore UI 的文件，从而突破资源包原本仅影响外观的边界。

**「影响与应对」** 据 8Crafter 列举，该漏洞可被用于删除全部存档、获取玩家 IP；在 Windows 上特定条件下还能无提示打开任意 URI，并启动资源包内的批处理文件下载恶意软件。AxmBro 发布了 Windows 只读检测工具，可查找 content.zipe，但不能判定资源包是否恶意。仍停留在 26.52 至 26.63 的玩家应升级到 26.65，并对来源不明的资源包保持警惕。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://pocketmine.ru/minecraft-pe-texture/9915-tekstury-hold-my-items-bedrock-minecraft-be/">Текстуры Hold my items Bedrock Minecraft PE</a></li>

</ul>
</details>

**标签**: `#security vulnerability`, `#Minecraft Bedrock`, `#resource packs`, `#malware`, `#patch`

---

## 财经新闻

<a id="item-finance-news-1"></a>
### [央行下调大额存单起购门槛：个人降至 10 万元](https://www.news.cn/fortune/20261127/70789d77822242cc82216f51a416f872/c.html) ⭐️ 7.0/10

中国人民银行 11 月 27 日公布《大额存单管理办法》，将个人投资人认购起点从原暂行办法的 20 万元下调至不低于 10 万元，机构投资人从 1000 万元下调至不低于 500 万元，新规自 2027 年 3 月 21 日起施行。

telegram · zaihuapd · 11月27日 11:36

**「背景」** 大额存单是银行面向个人和机构发行、利率通常高于普通定期存款的存款凭证；此次新办法同时废止 2015 年《大额存单管理暂行办法》和 2016 年第 13 号公告。同日央行还发布《人民币存贷款利率管理规定》，要求金融机构自主确定存贷款利率、不得通过高息揽储等不正当手段吸收存款，同样自 2027 年 3 月 21 日起施行。

**「影响」** 门槛减半后，资金在 10 万元以上的个人储户可选择的银行大额存单产品范围扩大；对银行而言，新规同时约束以高息争抢存款的做法，可能影响其吸储方式与付息成本。

**标签**: `#central bank regulation`, `#deposit rates`, `#banking policy`, `#China`, `#personal finance`

---

<a id="item-finance-news-2"></a>
### [市场监管总局约谈雅迪、台铃、爱玛等 15 家电动自行车企业](https://www.news.cn/20261127/0c8c665ce70c417b9263b39fa8a519f0/c.html?hl=zh-CN) ⭐️ 7.0/10

11 月 27 日，国家市场监管总局集中约谈雅迪、台铃、爱玛、九号、小牛等 15 家电动自行车企业，原因是近期 CCC 认证（中国强制性产品认证）飞行检查发现部分企业质量保证能力欠缺、产品一致性管控不严，并存在违反强制性国家标准出厂销售不合格产品的问题。

telegram · zaihuapd · 11月27日 12:06

**「背景」** 约谈要求企业限期整改，严格执行“一车一池一充一码”规定，并在售后环节不得推诿责任、误导消费者无牌上路，或以“证书很快恢复”为由拒绝退车；对确认存在缺陷的产品须立即召回。

**「影响」** 此次约谈直接涉及上述品牌的电动自行车购买者和使用者：相关企业被要求整改、召回缺陷产品并规范退车和售后处理。

**标签**: `#regulation`, `#electric bicycles`, `#China`, `#consumer safety`, `#manufacturing`

---