---
layout: default
title: "Horizon Summary: 2026-11-09 (ZH)"
date: 2026-11-09
lang: zh
---

> 从 138 条内容中筛选出 11 条重要资讯。

---

**科技新闻**
1. [Herb Sutter 谈 C++26 后 DIS 阶段：语言创造者与所有者之间的分歧](#item-tech-news-1) ⭐️ 8.0/10
2. [剑桥团队 AI 设计禽流感候选疫苗，动物试验显示广谱保护](#item-tech-news-2) ⭐️ 8.0/10
3. [KetchUp：用 Rust 和 WebGPU 构建的开源 SketchUp 替代品](#item-tech-news-3) ⭐️ 7.0/10
4. [高盛据报撤下银行家与交易员的 Claude Code](#item-tech-news-4) ⭐️ 7.0/10
5. [安全研究者披露可解锁某品牌汽车的远程方法](#item-tech-news-5) ⭐️ 7.0/10
6. [llama-modchip：284B DeepSeek 模型在 64GB 内存、无 GPU 下运行](#item-tech-news-6) ⭐️ 7.0/10
7. [Asahi Linux 将许可证从 MIT 切换为 GPLv2 或更高版本](#item-tech-news-7) ⭐️ 7.0/10
8. [台积电据报应英伟达要求考虑生产 3D DRAM](#item-tech-news-8) ⭐️ 7.0/10
9. [Sem86：不硬编码指令语义的全系统 x86 模拟器](#item-tech-news-9) ⭐️ 7.0/10

**财经新闻**
1. [黄仁勋承认婚外情并致歉，英伟达董事会启动独立调查](#item-finance-news-1) ⭐️ 8.0/10
2. [中国延长暂停对美 24%加征关税两个月，保留 10%税率](#item-finance-news-2) ⭐️ 8.0/10

---

## 科技新闻

<a id="item-tech-news-1"></a>
### [Herb Sutter 谈 C++26 后 DIS 阶段：语言创造者与所有者之间的分歧](https://isocpp.org/files/papers/P4454R0.pdf) ⭐️ 8.0/10

Herb Sutter 发布论文 P4454R0，讨论 C++ 语言创造者与标准所有者之间在 C++26 进入 DIS（国际标准草案）阶段后出现的强烈分歧。论文以 C++26 post-DIS 状态为背景，援引历史经验并提出若干前进路径。目前可获取的内容仅为链接入口，论文的具体技术细节、分歧焦点与所提方案尚未在来源中展开，因此无法核实其实际影响。

rss · Lobsters · 11月8日 21:59

**「背景」** C++26 的 DIS（国际标准草案）投票此前未获通过，据外部报道，这是该语言历史上首次出现这种情况，投票结果为 20 票中 12 票赞成，反射、Contracts 和库加固等议题因此受阻。Horizon 2026 年 11 月 4 日的日报曾报道，当时材料仅含标题与链接，C++26 被否决的具体范围与官方状态并不明确。Herb Sutter 曾长期担任 ISO C++ 标准委员会主席（2002 至 2025 年），这篇论文正是在这一背景下讨论语言创造者与标准所有者之间的分歧。

**「对 C++ 社区的影响」** 据工具结果，C++26 草案在 DIS 投票中未获通过，Robert Seacord 表示他不认为 SC22 此前有任何语言标准在投票中失败过，Daveed Vandevoorde 也提到这是 C++ 草案首次出现这种情况。Sutter 的论文指出，无论采用 ANSI/ISO 委员会、ECMA、仁慈独裁者还是开源社区模式，都未能避免语言创建者与所有者之间的强烈分歧，因此这一治理冲突并非某一种组织形式的特例。对依赖 C++26 新特性的开发者而言，标准发布进程存在不确定性，在标准定稿前不宜将 C++26 特性视为稳定可用。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://herbsutter.com/2026/03/29/c26-is-done-trip-report-march-2026-iso-c-standards-meeting-london-croydon-uk/wg21-2026-std/">wg21-2026-std – Sutter’s Mill</a></li>
<li><a href="https://elsolitario.org/en/2026/10/26/according-to-seacord-cpp26-fails-dis-ballot-12-of-20/">C++26 DIS Ballot: What Happened and Why It Failed</a></li>
<li><a href="https://andreasfertig.com/blog/2026/11/cpp26-dis-failed-how-does-cpp-survive/">2026-11-04 — C++26 未获批准，社区质疑 Contracts 与语言复杂度</a></li>
<li><a href="https://train-it.eu/blog/cpp26-contracts-the-ballot-result/">The result of the C+ + 26 DIS ballot | Train IT</a></li>
<li><a href="https://isocpp.org/files/papers/P4454R0.pdf">When a language’s creator and its owners strongly disagree</a></li>
<li><a href="https://upstract.com/x/ae3996e4a0a6daee">The result of the C+ + 26 DIS ballot</a></li>

</ul>
</details>

**标签**: `#c++`, `#language-governance`, `#standards`, `#c++26`, `#open-source`

---

<a id="item-tech-news-2"></a>
### [剑桥团队 AI 设计禽流感候选疫苗，动物试验显示广谱保护](https://www.cam.ac.uk/stories/ai-developed-vaccines-against-viruses) ⭐️ 8.0/10

剑桥大学领衔的团队于 2026 年 11 月在《Cell Reports Medicine》在线发表论文，报告用 AI 辅助设计的新型禽流感候选疫苗在小鼠和雪貂试验中表现出广谱免疫与保护效果，并优于研究中作为对照的、基于 WHO 候选疫苗病毒的制剂。团队表示，这种人工设计的广谱抗原在自然界并不存在，AI 辅助设计有望加快疫苗抗原的开发。该结果仍属临床前研究，候选疫苗对人的保护效果尚未得到证实，团队下一步计划推进人体临床试验。

telegram · zaihuapd · 11月9日 03:00

**「背景」** 禽流感疫苗的传统思路通常以 WHO 选定的候选疫苗病毒为基础来制备抗原，而毒株匹配程度会影响保护范围。此次研究的区别在于用 AI 设计出自然界不存在的人工抗原，并在动物模型中与上述 WHO 毒株路线做直接比较。

**「影响」** 对疫苗研发而言，这项结果提供了 AI 设计抗原在动物模型中优于 WHO 毒株对照的初步证据，但能否在人体中复现尚待临床试验验证；在人体数据出现之前，不宜将其视为可用的应急疫苗方案。

**标签**: `#AI drug discovery`, `#vaccines`, `#computational biology`, `#biomedical research`

---

<a id="item-tech-news-3"></a>
### [KetchUp：用 Rust 和 WebGPU 构建的开源 SketchUp 替代品](https://ketchup3d.github.io/app/) ⭐️ 7.0/10

KetchUp 是一个开源的三维建模工具，定位为 SketchUp 的替代品，使用 Rust 和 WebGPU 构建，目前以网页应用形式发布在 ketchup3d.github.io/app/。该项目在 Hacker News 上获得 440 分和 124 条评论，讨论集中在 SketchUp 的授权模式以及自建工具的趋势上。现有信息未说明其功能完整度、文件兼容性或正式版本号，因此它仍属于早期项目，尚无采用情况或独立性能验证的证据。

hackernews · dcoulmbe · 11月8日 22:35 · [社区讨论](https://news.ycombinator.com/item?id=50418176)

**「背景」** SketchUp 由 Trimble 运营，长期提供桌面建模器，并推出基于浏览器的免费版本。评论者提到，Trimble 曾停止提供免费版 SketchUp，后又取消永久授权，使桌面版只能按年订阅付费。KetchUp 正是在这一背景下出现的开源替代方案，采用 Rust 与 WebGPU 构建。

**「影响」** 对长期使用 SketchUp 桌面版的用户而言，KetchUp 提供了一个基于浏览器的开源选项，但现有材料没有说明它能否打开或导入 SketchUp 文件，因此不能假定它可以替代现有工作流。评论中一位用户提到自己的房屋模型只能在 SketchUp 完整桌面版中打开，这提示文件兼容性是迁移时的实际障碍。

**「社区讨论」** 多位评论者将不满指向 Trimble 对 SketchUp 的运营方向：长期用户 ayaros 抱怨桌面建模器被忽视、免费版和永久授权先后取消，导致桌面版只能按年支付数百美元。另有评论者 nico 认为，借助 Claude 或 Codex 按需构建专用工具，可能比花数小时学习通用软件更划算；这属于个人观点，并非对 KetchUp 能力的验证。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://sketchup.trimble.com/en/plans-and-pricing/sketchup-free">Free 3D Modeling Software | 3D Design Online | SketchUp ... | Trimble</a></li>
<li><a href="https://www.scan2cad.com/blog/cad/everything-about-sketchup/">Everything You Need To Know About SketchUp | Scan2CAD</a></li>

</ul>
</details>

**标签**: `#open-source`, `#Rust`, `#WebGPU`, `#3D modeling`, `#graphics`

---

<a id="item-tech-news-4"></a>
### [高盛据报撤下银行家与交易员的 Claude Code](https://www.thestateofai.com/news/goldman-sachs-claude-code-traders-bankers) ⭐️ 7.0/10

据 The State of AI 报道，高盛正在撤下银行家和交易员使用的 Claude Code。该报道为单一二手信源，未提供高盛或 Anthropic 的官方说明，也未披露受影响人数、撤下范围或时间表。报道将此举与代理式编程工具在敏感金融工作站上的安全风险、按量计费超支以及合规与权限审计压力联系起来。

hackernews · TheWiggles · 11月8日 18:16 · [社区讨论](https://news.ycombinator.com/item?id=50415628)

**「背景」** 据彭博社 11 月 2 日报道，高盛此次限制的是 Anthropic 的 Claude Code 与微软的 GitHub Copilot 两款工具，将其使用范围收窄至约 1.2 万名工程师，而此前已使用数月来追踪客户资金流、构建市场模型的银行家和交易员被切断访问；同时从事量化工作的软件工程师团队“strats”仍保留权限，内部指引在 10 月根据一项生产力与风险评估做了更新。Horizon 11 月 7 日的日报曾报道，Anthropic 计划下周启动 IPO 路演、拟于 11 月 16 日当周挂牌，而高盛正参与其 IPO 承销。

**「对使用方的影响」** 若报道属实，受影响的是在交易与客户信息环境中使用该工具的高盛前台人员，而非全公司开发者。对同类机构的直接问题是：代理式编程工具能否在可访问客户、交易与邮件数据的生产工作站上运行，以及按量计费在预算收紧时是否可持续。

**「社区讨论」** 有评论者认为核心在于“致命三要素”：半自主代理与客户、交易、邮件及内外网访问共处同一工作站，风险不可接受。另有从业者称其所在机构因持续计费超支而收回 Claude 访问权限，并称 Anthropic 无法提供固定费率，而 Gemini 以统一计费和限流处理超额。还有人质疑公告时机，指出高盛正牵头 Anthropic 的 IPO，并推测更可能是发生了运营损失而非主动决策；这些均为个人推测，未获证实。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.theinformation.com/briefings/anthropic-proceed-ipo-roadshow-next-week">2026-11-07 — Anthropic 拟下周启动 IPO 路演，计划 11 月 16 日当周挂牌</a></li>
<li><a href="https://aiweekly.co/alerts/goldman-sachs-pulls-claude-code-and-github-copilot-from-traders-and-bankers">Goldman Sachs Pulls Claude Code and GitHub Copilot From ...</a></li>
<li><a href="https://daily.dev/posts/goldman-sachs-is-pulling-claude-code-from-its-bankers-and-traders-dmltlbhnz">Goldman Sachs Is Pulling Claude Code from Its Bankers...</a></li>
<li><a href="https://news.lavx.hu/article/goldman-sachs-pulls-claude-code-from-most-traders-and-bankers">Goldman Sachs pulls Claude Code from most traders and bankers</a></li>

</ul>
</details>

**标签**: `#AI coding agents`, `#enterprise AI adoption`, `#security`, `#AI billing`, `#financial services`

---

<a id="item-tech-news-5"></a>
### [安全研究者披露可解锁某品牌汽车的远程方法](https://shubs.io/unlocking-any-car-from-x-brand-in-most-of-the-world/) ⭐️ 7.0/10

一名安全研究者发布文章，描述了一种可在世界大部分地区解锁某品牌汽车的方法，但所提供文本未点名具体品牌，也未给出漏洞编号、受影响车型年份或修复状态。文章在 Hacker News 获得约 300 分和 102 条评论，讨论集中在车辆安全与联网汽车的所有权问题。评论者根据演示视频背景中的车辆外观推测该品牌可能是丰田/雷克萨斯，并质疑“任意汽车”这一说法是否成立。由于缺少原始技术细节，该方法的实际适用范围和厂商回应仍不确定。

hackernews · Lobsters · 11月9日 00:10 · [社区讨论](https://news.ycombinator.com/item?id=50419215)

**「背景」** 该文属于联网汽车安全研究：车辆依赖云端服务与凭证进行远程解锁，一旦凭证或后端配置存在缺陷，影响范围可能跨越多个车型乃至多个地区。此前已有类似案例，例如 2026 年 7 月披露的 KARR 安全系统蓝牙漏洞，据报可让攻击者在蓝牙范围内解锁约 220 万辆汽车的车门、控制警报并阻止发动机启动。

**「社区讨论」** 评论者 intuitionist 认为“任意汽车”的说法过强，称自己 2009 年的凯美瑞和其兄弟的第四代 Hilux 应该不受影响；ryukoposting 则从视频背景中车辆的后视镜和车灯形状推断是改款第五代 RAV4，与文中“两个品牌”的说法相符。avodonosov 担忧始终联网的汽车会变得像今天的智能手机一样，用户并不真正拥有和控制，还需要接受晦涩的服务条款。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://cybersecuritynews.com/karr-bluetooth-vulnerability-exposes/">KARR Bluetooth Vulnerability Exposes 2.2 Million Cars to ...</a></li>
<li><a href="https://cyberinsider.com/bluetooth-flaw-exposes-2-2-million-cars-to-unlocking-attacks/">Bluetooth flaw exposes 2.2 million cars to unlocking attacks</a></li>

</ul>
</details>

**标签**: `#security`, `#automotive`, `#embedded-systems`, `#vulnerability-research`, `#connected-devices`

---

<a id="item-tech-news-6"></a>
### [llama-modchip：284B DeepSeek 模型在 64GB 内存、无 GPU 下运行](https://github.com/synchopate/llama-modchip) ⭐️ 7.0/10

GitHub 项目 synchopate/llama-modchip 演示了在 64GB 内存、无 GPU 的机器上运行 284B 参数的 DeepSeek 模型。该项目在 Hacker News 上引发讨论，焦点集中在量化取舍与低成本本地推理。项目文档被部分评论者批评为“密集的文字沙拉”，量化方案等关键信息表述不清。目前尚不清楚该仓库是否真正实现了其宣称的功能，有评论者称在 Nemotron 上测试时表现与普通 llama.cpp 的 CPU 推理相近，仅预填充似乎更快。

hackernews · joshcsimmons · 11月8日 10:22 · [社区讨论](https://news.ycombinator.com/item?id=50411961)

**「背景」** 该项目在 GitHub 上以 llama-modchip 为名发布，其 ARCHITECTURE.md 说明，当上下文达到 16,384 token 时，KV 缓存为 453 MB，已完全溢出 CPU 的 64 MB L3 缓存，并在每个 token 上额外产生 453 MB 的 DDR5 流量；上下文扩展到 131,072 token 时，KV 缓存增至 3.62 GB。Hacker News 讨论中有用户反馈，默认的 modchip 应用只安装 Nemotron，并未提及 DeepSeek，按说明安装其 DeepSeek 量化版本后，执行 modchip start 会失败。

**「实际影响」** 对本地推理实践者而言，这一演示若成立，意味着无需 GPU 也能在消费级内存容量上加载超大参数模型，但代价是激进的量化可能显著降低输出质量。评论者指出，量化性能呈非线性变化，峰值大小与性能比通常出现在 4-bit，更低比特会带来明显性能下降；另有从事语音模型的经验者表示低于 8-bit 质量损失巨大。因此使用者在选择该方案前应自行验证量化后的实际质量。

**「社区讨论」** 评论者 kennywinker 认为可用的本地 AI 系统门槛持续降低，约 800 美元以内的 E5 工作站加内存和 GPU 即可获得约 20 tok/s 输出。antirez 表示 128GB 统一内存下运行速度可接受，预填充约 300 t/s。boredatoms 批评项目文档没有清楚说明量化方案，aappleby 则质疑这个疑似 AI 生成的仓库是否真正有效，并称在 Ryzen 7945HX 加 96GB DDR5 上测试 Nemotron 时与原生 llama.cpp 的 CPU 推理差别不大。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://github.com/synchopate/llama-modchip/blob/main/ARCHITECTURE.md">llama - modchip /ARCHITECTURE.md at main...</a></li>
<li><a href="https://news.ycombinator.com/item?id=50411961">Llama - modchip : 284 B DeepSeek on 64 GB RAM , no... | Hacker News</a></li>

</ul>
</details>

**标签**: `#local-llm-inference`, `#quantization`, `#deepseek`, `#cpu-inference`, `#open-source-tools`

---

<a id="item-tech-news-7"></a>
### [Asahi Linux 将许可证从 MIT 切换为 GPLv2 或更高版本](https://www.solidot.org/story?sid=85832) ⭐️ 7.0/10

Asahi Linux 宣布将其许可证从 MIT 切换为 GPLv2 或更高版本。该项目旨在把 Linux 移植到搭载 Apple Silicon 芯片的 Mac 电脑上。团队称，有人把开发者分支中尚未完成的代码未注明出处地发布，甚至用 AI 重写代码以掩盖来源，意图取代原项目并牟利；此前也已出现利用宽松 MIT 许可证劫持其成果的情况，因此决定改用更严格的 GPL。

rss · 奇客 Solidot · 11月9日 06:29

**「背景」** Horizon 2026 年 11 月 7 日的日报曾报道，Asahi Linux 在 7.3 进展报告中提到有人试图利用其宽松许可证“劫持”成果，以取代项目并借 Linux on Apple Silicon 牟利，项目因此正转向更严格的 copyleft 许可证。此次公告明确了具体许可证为 GPLv2 或更高版本，并把 AI 辅助重写列为代码洗白的新手段。

**「实际影响」** 许可证收紧后，下游使用者若分发基于 Asahi Linux 代码的修改版本，需遵守 GPLv2 或更高版本的源码开放与署名要求，不能再像 MIT 时期那样仅保留版权声明即可闭源再分发。对依赖 Asahi 代码的衍生项目和厂商而言，需要重新核对其分发方式是否符合新许可证。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://asahilinux.org/2026/11/progress-report-7-3/">2026-11-07 — Asahi Linux 7.3 进展报告：驱动与内核工作持续推进</a></li>

</ul>
</details>

**标签**: `#open-source-licensing`, `#asahi-linux`, `#apple-silicon`, `#ai-code-laundering`, `#gpl`

---

<a id="item-tech-news-8"></a>
### [台积电据报应英伟达要求考虑生产 3D DRAM](https://www.solidot.org/story?sid=85826) ⭐️ 7.0/10

据奇客 Solidot 报道，台积电正考虑进入内存芯片行业，生产名为 3D DRAM 的先进内存芯片，这一动向源于其最大客户英伟达的要求。报道称台积电可能新建工厂，也可能收购现有工厂并改造为内存生产基地，但尚不清楚计划何时开始生产。该项目由负责先进封装业务的副总裁徐国晋领导。上述内容属于未经证实的计划报道，没有时间表和技术细节，台积电若进入该领域将需与三星电子、SK 海力士和美光竞争。

rss · 奇客 Solidot · 11月8日 13:43

**「背景」** 据 ExplainX 汇总的报道，The Information 于 2026 年 11 月 6 日率先披露台积电应英伟达要求规划 3D DRAM 生产，路透社随后转述，台积电与英伟达均未置评。台积电目前是英伟达 AI 处理器的主要代工厂，若涉足内存生产，其业务将从逻辑芯片延伸至内存领域，以缓解 AI 基础设施的供应链压力。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.gate.com/news/detail/tsmc-explores-entry-into-3d-dram-production-at-nvidias-request-report-says-25491745">TSMC Explores Entry into 3D DRAM Production at Nvidia&#x27;s ...</a></li>
<li><a href="https://explainx.ai/blog/tsmc-3d-dram-nvidia-request-the-information-reuters-what-is-reported-2026">TSMC 3D DRAM for Nvidia: What Is Reported (Nov 2026 ...</a></li>

</ul>
</details>

**标签**: `#semiconductors`, `#memory`, `#TSMC`, `#Nvidia`, `#hardware`

---

<a id="item-tech-news-9"></a>
### [Sem86：不硬编码指令语义的全系统 x86 模拟器](https://liblisa.nl/sem86/) ⭐️ 7.0/10

Sem86 被介绍为一个全系统 x86 模拟器，其特点是不把指令语义硬编码在模拟器内部。该项目的具体实现方式、支持的 x86 版本、性能数据与可用性均未在所提供的链接摘要中给出，因此目前只能确认其定位与设计取向，无法核实其实际能力。

rss · Lobsters · 11月9日 02:44

**「背景」** Sem86 的核心设计是把指令语义从模拟器代码中剥离出来，改为在运行时从输入文件加载，而不是在源码中硬编码每条 x86 指令的行为。据项目页面和 GitHub 仓库说明，其长期目标是直接加载 libLISA 自动推断出的指令语义，从而让模拟器与语义来源解耦。该项目由 J. Craaijo、F. Verbeek 和 B. Ravindran 撰写，已被 QRS 2026 会议接收。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://github.com/libLISA/sem86">GitHub - libLISA / Sem 86 : A full - system emulator without ...</a></li>
<li><a href="https://liblisa.nl/sem86/">Sem 86 - A full - system emulator without hardcoded semantics</a></li>
<li><a href="https://www.ssrg.ece.vt.edu/papers.php">Systems Software Research Group at Virginia Tech</a></li>

</ul>
</details>

**标签**: `#emulation`, `#x86`, `#systems`, `#reverse-engineering`, `#cpu-architecture`

---

## 财经新闻

<a id="item-finance-news-1"></a>
### [黄仁勋承认婚外情并致歉，英伟达董事会启动独立调查](https://www.bloomberg.com/news/articles/2026-11-08/nvidia-board-to-probe-spying-case-after-ceo-jensen-huang-admits-infidelity) ⭐️ 8.0/10

英伟达董事会将成立独立董事委员会，并聘请外部律师，调查首席执行官黄仁勋是否成为外国情报行动的目标；此前黄仁勋承认对妻子不忠，并向家人和员工道歉。他表示将全力配合调查，并在调查结果出炉前继续担任首席执行官。

telegram · zaihuapd · 11月8日 21:39

**「背景」** 据 Tom&\#x27;s Hardware 和 CNBC 报道，此次调查源于有关黄仁勋与一名被指为中国间谍的客户存在婚外情的报道，英伟达董事会表示将调查黄仁勋是否成为外国情报行动的目标，并称对黄仁勋及其领导团队抱有信心。

**「影响」** 调查结果可能影响英伟达最高管理层的稳定性，而黄仁勋在调查期间继续担任首席执行官；英伟达的投资者、合作伙伴及依赖其人工智能芯片的客户将关注调查进展。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.tomshardware.com/pc-components/gpus/nvidia-ceo-jensen-huang-admits-to-having-an-affair-with-suspected-chinese-spy-jensen-apologizes-in-letter-to-staff-company-board-forms-independent-committee-to-investigate">Nvidia CEO Jensen Huang admits to an affair with... | Tom&#x27;s Hardware</a></li>
<li><a href="https://www.cnbc.com/2026/11/08/nvidia-jensen-huang-investigation-china-spy.html">Nvidia investigates CEO Jensen Huang &#x27;s relationship with alleged ...</a></li>
<li><a href="https://www.reuters.com/technology/reactions-nvidias-probe-into-ceo-jensen-huang-2026-11-09/">Reactions to Nvidia&#x27;s probe into CEO Jensen Huang | Reuters</a></li>
<li><a href="https://www.nytimes.com/2026/11/08/technology/nvidia-investigation-jensen-huang.html">What to Know About Nvidia’s Investigation of Its C.E.O.</a></li>
<li><a href="https://www.cnn.com/2026/11/08/business/nvidia-investigation-ceo-jensen-huang">Nvidia launches investigation into CEO Jensen Huang over ...</a></li>

</ul>
</details>

**标签**: `#NVIDIA`, `#corporate governance`, `#CEO`, `#national security`, `#semiconductors`

---

<a id="item-finance-news-2"></a>
### [中国延长暂停对美 24%加征关税两个月，保留 10%税率](https://mp.weixin.qq.com/s/nNxJB3y0YA_2zJvOK6onUQ) ⭐️ 8.0/10

中国国务院关税税则委员会宣布，自 2026 年 11 月 10 日 13 时 01 分起，在两个月内继续暂停实施 24%的对美加征关税税率，保留 10%的加征关税税率，以落实中美两国元首华盛顿会晤达成的共识。

telegram · zaihuapd · 11月9日 04:03

**「背景」** 此次暂停是延续既有安排：中美两国元首于 2026 年 9 月在华盛顿会晤并达成共识，中方随后据此调整对美加征关税措施。

**「影响」** 暂停期仅两个月，意味着进口美国商品的中国企业和相关下游行业在 2027 年 1 月中旬后仍面临 24%税率恢复的不确定性，其采购与定价安排需按此窗口规划。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://m.guancha.cn/GuoJi%C2%B7ZhanLue/2026_09_28_902518.shtml">m.guancha.cn/GuoJi·ZhanLue/ 2026 _09_28_902518.shtml</a></li>
<li><a href="https://www.theorychina.org.cn/c/2026-09-27/1553338.shtml">theorychina.org.cn/c/ 2026 -09-27/1553338.shtml</a></li>
<li><a href="https://www.thepaper.cn/newsDetail_forward_34437231">国务院关税税则委员会：2个月内继续暂停实施24%的对美加征关税税率_财...</a></li>
<li><a href="https://sputniknews.cn/20261109/1074003463.html">中方继续暂停实施24%对美加征关税税率，为期两个月 - 2026年11月9日, ...</a></li>

</ul>
</details>

**标签**: `#US-China trade`, `#tariffs`, `#trade policy`, `#China economy`

---