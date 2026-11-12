---
layout: default
title: "Horizon Summary: 2026-11-12 (ZH)"
date: 2026-11-12
lang: zh
---

> 从 157 条内容中筛选出 20 条重要资讯。

---

**科技新闻**
1. [Apache HTTP Server 被指存在严重 RCE 漏洞，细节存疑](#item-tech-news-1) ⭐️ 8.0/10
2. [《华尔街日报》报道英伟达准备撤换 CEO 黄仁勋](#item-tech-news-2) ⭐️ 8.0/10
3. [用电压毛刺解锁矿卡中的 A100 功能](#item-tech-news-3) ⭐️ 8.0/10
4. [AWS 发布官方 Rust 本地模拟器 aws-emulator](#item-tech-news-4) ⭐️ 8.0/10
5. [博客称 C++ 标准首次未通过国家机构投票](#item-tech-news-5) ⭐️ 8.0/10
6. [谷歌发布 Gemini Decisions API，主打快速多模态封闭式决策](#item-tech-news-6) ⭐️ 8.0/10
7. [美商务部拟定稿规则，封堵中国 AI 公司远程用芯](#item-tech-news-7) ⭐️ 8.0/10
8. [论坛指控 Humble Bundle 的 AI 辅助重写破坏安全与功能](#item-tech-news-8) ⭐️ 7.0/10
9. [AI 代理发现疑似未记录的玛雅遗址，但作者承认该遗址早已被发现](#item-tech-news-9) ⭐️ 7.0/10
10. [误报烟雾报警险些瘫痪 Jane Street 纽约唯一数据中心](#item-tech-news-10) ⭐️ 7.0/10
11. [WebGL2 超写实沙粒模拟演示引发技术讨论](#item-tech-news-11) ⭐️ 7.0/10
12. [Apple 研究提速 RAG 检索，社区质疑学习式检索的实际收益](#item-tech-news-12) ⭐️ 7.0/10
13. [Yogurt：本地运行的开源会议记录工具，对标 Granola](#item-tech-news-13) ⭐️ 7.0/10
14. [线性规划能否用于权重空间编程？](#item-tech-news-14) ⭐️ 7.0/10
15. [美联航禁止 AI 代理代客订票](#item-tech-news-15) ⭐️ 7.0/10
16. [锁定 GitHub Actions 依赖的实践与局限](#item-tech-news-16) ⭐️ 7.0/10
17. [Anthropic 路演视频披露 Claude 多芯片训练与推理策略](#item-tech-news-17) ⭐️ 7.0/10
18. [模拟显示无生命地球仍可长期维持宜居气候](#item-tech-news-18) ⭐️ 7.0/10

**科技博客**
1. [Cloudflare 为何选择 QuePaxa 共识算法](#item-tech-blog-1) ⭐️ 8.0/10

**财经新闻**
1. [离岸信托收益征税过渡期结束，累计申报超 1600 亿元](#item-finance-news-1) ⭐️ 8.0/10

---

## 科技新闻

<a id="item-tech-news-1"></a>
### [Apache HTTP Server 被指存在严重 RCE 漏洞，细节存疑](https://www.wiz.io/blog/cve-2026-119618-rce-apache-http-server-vulnerability) ⭐️ 8.0/10

Hacker News 上出现一则讨论，指向 Wiz 博客所称 Apache HTTP Server 中的一个严重远程代码执行漏洞。讨论中有人贴出 apache/httpd 仓库的补丁提交链接，但评论者同时指出 CVE 编号前后不一致：文中一处写作 CVE-2026-111497，另一处写作 CVE-2026-119618。由于缺少原始来源内容，漏洞的触发条件、受影响版本和修复状态均无法从现有材料确认，Wiz 的相关说法应视为厂商声明而非已独立验证的结论。

hackernews · soheilpro · 11月12日 02:11 · [社区讨论](https://news.ycombinator.com/item?id=50462177)

**「背景」** 据安全公告描述，CVE-2026-119618 是 Apache HTTP Server 的 HTTP/2 模块（mod\_http2）中的并发竞态条件，出现在 assign\_headers\(\) 函数处理共享资源时。Hacker News 讨论中有人引用 Red Hat 的说法，称已有公开研究展示了对启用 mod\_http2 的默认配置服务器的可靠利用；但评论者也指出报道中同时出现 CVE-2026-111497 与 CVE-2026-119618 两个编号，来源细节存在不一致。

**「社区讨论」** 有评论者贴出疑似修复提交，并指出该帖与另一条提交重复；thehamkercat 质疑文中同时出现两个不同 CVE 编号。spuz 则追问 Wiz 所称“51% 的云环境存在公网暴露实例”中“云环境”的具体定义，认为该统计口径不清。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.enigma-global.com/cert-alerts/13712">Critical RCE Vulnerability in Apache HTTP Server : Everything You...</a></li>
<li><a href="https://news.ycombinator.com/item?id=50462177">Critical RCE Vulnerability in Apache HTTP Server | Hacker News</a></li>

</ul>
</details>

**标签**: `#security`, `#apache`, `#vulnerability`, `#remote-code-execution`, `#open-source`

---

<a id="item-tech-news-2"></a>
### [《华尔街日报》报道英伟达准备撤换 CEO 黄仁勋](https://www.wsj.com/business/nvidia-is-preparing-to-oust-nvidia-ceo-jensen-huang-30f421ad) ⭐️ 8.0/10

《华尔街日报》报道称，英伟达正准备撤换长期担任首席执行官的黄仁勋。该报道目前仅以付费墙后的标题形式出现，没有公开正文，因此报道所依据的具体指控、董事会程序和时间表均无法从现有材料中核实。Hacker News 上的讨论将此事与针对黄仁勋的指控联系起来，但相关说法属于社区评论，并非已确认的事实。

hackernews · jbredeche · 11月11日 22:31 · [社区讨论](https://news.ycombinator.com/item?id=50459703)

**「背景」** Horizon 2026 年 11 月 9 日的日报曾报道，英伟达董事会已成立独立董事委员会并聘请外部律师，调查黄仁勋是否成为外国情报行动的目标；黄仁勋当时承认对妻子不忠并致歉，表示将配合调查并在结果出炉前继续担任 CEO。据 WSJ 与 CNBC 报道，董事会此次会议正是在黄仁勋承认与一名被美国情报界认为是中国间谍的女性有婚外情之后召开的，而最新报道称其还涉及第二段婚外情。

**「社区讨论」** 部分评论者认为，争论黄仁勋的技术与商业贡献偏离了重点，因为针对他的指控性质严重，且英伟达芯片被美国政府用于各密级场景，使相关关系需要额外审视。也有人主张，若董事会通过黄仁勋本人以外的渠道得知第二段婚外情，他的职位将难以维持；另有评论强调，正是黄仁勋早年押注 GPU 通用计算并推动 CUDA，才使深度学习革命得以更早到来。上述均为评论者观点，并非已证实的事实。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.bloomberg.com/news/articles/2026-11-08/nvidia-board-to-probe-spying-case-after-ceo-jensen-huang-admits-infidelity">2026-11-09 — 黄仁勋承认婚外情并致歉，英伟达董事会启动独立调查</a></li>
<li><a href="https://www.wsj.com/business/nvidia-is-preparing-to-oust-nvidia-ceo-jensen-huang-30f421ad">Nvidia is Preparing to Oust CEO Jensen Huang - WSJ</a></li>
<li><a href="https://www.cnbc.com/2026/11/11/nvidia-jensen-huang-affair-employee.html">Nvidia board meets to decide CEO Jensen Huang’s fate - CNBC</a></li>

</ul>
</details>

**标签**: `#nvidia`, `#corporate-governance`, `#semiconductors`, `#ai-hardware`, `#industry-news`

---

<a id="item-tech-news-3"></a>
### [用电压毛刺解锁矿卡中的 A100 功能](https://blog.kate.land/posts/using-voltage-glitching-to-unlock-the-a100/) ⭐️ 8.0/10

一篇技术博客详细记录了作者如何通过电压毛刺（voltage glitching）攻击，在矿卡上重新启用被熔丝禁用的 A100 级功能。文章聚焦于基于熔丝的产品分级机制与硬件破解方法，并指出目标是一块 8GB 显存的型号。该文在 Hacker News 上获得 293 分和 115 条评论，讨论集中在熔丝分级的成因与替代破解路径上。

hackernews · Lobsters · 11月11日 10:48 · [社区讨论](https://news.ycombinator.com/item?id=50451903)

**「背景」** NVIDIA CMP 170 HX 是面向加密货币挖矿的 Ampere 系列显卡，采用与 A100 同源的 GA100 GPU，但官方规格仅配备 8 GB HBM2 显存。作者在文中指出，在其有限样本中约 90% 的 8 GB 版本卡实际保留了完整的 80 GB 显存，只是被熔丝等方式禁用；此前社区已知 10 GB 版本存在 80 GB 物理显存，但无法通过 CUDA 完整访问。

**「影响」** 对硬件与系统方向的读者而言，这篇文章提供了可复现的电压毛刺操作流程，但也意味着尝试者需要面对熔丝破解带来的风险。评论者 notenchange 表示自己正尝试用软件方式解锁 CMP 170HX 的 80G 显存，两周未果，并认为走熔丝这条路“风险大得多”。

**「社区讨论」** 评论者对熔丝禁用的原因存在分歧：amelius 认为更可能的情况是 A100 存在过多制造缺陷，只能降级为更便宜的矿卡，因为企业级和数据中心产品的利润更高。myself248 则提出用带独立电源的外置 PCIe 转接卡替代将主机置入 ACPI S3 状态，从而让主机持续运行、只循环目标设备，以加快流程。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://wccftech.com/nvidia-cmp-170hx-cryptocurrency-mining-monster-card-spotted-ampere-ga100-gpu-164-mh-s/">NVIDIA CMP 170 HX Cryptocurrency Mining Monster Card Spotted...</a></li>
<li><a href="https://blog.kate.land/posts/using-voltage-glitching-to-unlock-the-a100/">Using voltage glitching to unleash the A 100 in my mining card</a></li>

</ul>
</details>

**标签**: `#hardware-hacking`, `#gpu`, `#voltage-glitching`, `#reverse-engineering`, `#nvidia`

---

<a id="item-tech-news-4"></a>
### [AWS 发布官方 Rust 本地模拟器 aws-emulator](https://simonwillison.net/2026/Nov/11/aws-emulator/) ⭐️ 8.0/10

AWS 在 GitHub 上发布了官方项目 aws-emulator，用 Rust 编写，让开发者可以在本地克隆的 AWS 服务上运行测试，无需申请付费 API 密钥。据 Simon Willison 的转述，该项目由大量 AI 代理协作开发，前三周提交了 29,684 次 commit；Swaminathan Sivasubramanian 在 Werner Vogels 的博客上撰文介绍了其由来。目前该模拟器在 macOS 和 Windows 上运行需要依赖 Docker，作者希望未来能改为单个二进制文件。

rss · Simon Willison · 11月11日 21:18

**「背景」** 在 AWS 推出官方模拟器之前，开发者若要在本地测试依赖 AWS 服务的代码，通常需要借助 LocalStack、Floci 等第三方兼容模拟器，或为真实云端资源配置付费 API 密钥。AWS 此次发布的 aws-emulator 托管在官方 aws 组织下，README 中标注了 29,684 次提交，并支持以 Rust 开发依赖的形式在进程内嵌入运行、每个测试使用独立实例。

**「对使用者的实际影响」** 开发者可以在本地对 AWS 服务运行测试，无需配置付费 API 密钥，但该模拟器不能用于验证安全相关行为：其安全说明明确列出 IAM 策略与权限边界、存储桶策略等基于资源的策略、KMS 密钥策略、跨账户或跨区域访问以及其他安全控制均不在测试范围内，且模拟器对 IAM 用户和角色的策略评估方式与 AWS 不同。在 macOS 和 Windows 上运行目前还依赖 Docker，因此无法直接以单个二进制文件嵌入其他语言和平台的测试套件。

**「社区讨论」** 有评论者对该项目是否只是实验、能否长期维护表示怀疑，并推荐 Floci 与 Testcontainers 作为替代方案；也有人引用其安全文档指出，该模拟器不应用于测试 IAM 策略、资源策略、KMS 密钥策略及跨账户或跨区域访问等安全控制。另有评论认为，本地 AWS 测试环境长期是实际痛点，官方支持即便只覆盖部分常用服务也很有价值。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://github.com/aws/aws-emulator">GitHub - aws / aws - emulator : AWS Emulator is a local emulator of...</a></li>
<li><a href="https://ai-release.org/posts/aws-emulator-zapuskaet-aws-api-lokalno-testy-bez-oblaka-i-akkaunta-048f226a_en.html">AWS Emulator runs AWS API locally : tests without the... | AI Release</a></li>

</ul>
</details>

**标签**: `#aws`, `#local-emulator`, `#testing`, `#rust`, `#ai-agents`

---

<a id="item-tech-news-5"></a>
### [博客称 C++ 标准首次未通过国家机构投票](https://herecomesthemoon.net/2026/11/cpp26-failed-the-national-bodies/) ⭐️ 8.0/10

一篇博客文章声称，C++ 标准首次未能通过国家机构（national bodies）的投票程序。但该条目提供的内容仅包含一个指向评论页面的链接，没有给出具体是哪个标准版本、投票结果、反对意见或后续处理方式等细节，因此这一说法目前无法从现有材料中得到核实。

rss · Lobsters · 11月11日 18:49

**「背景」** ISO C++ 标准草案在正式发布前需经各国国家成员体（national bodies）投票，即 DIS（Draft International Standard）投票；只有通过这一关，草案才能进入最终发布流程。据外部报道，C++26 草案的 DIS 投票未获国家成员体批准，反对票主要指向其中的 contracts（契约）特性，且该结果当时尚未出现在 ISO 公开项目页或 WG21 文件中。

**「对 C++ 社区的影响」** 若该说法属实，C++26 的 DIS 未获通过意味着标准发布流程被阻断，依赖新标准特性的编译器厂商和库作者需要推迟相应实现计划。据 ISO C++ 论文 P4454R0 所述，导致 DIS 未获批准的核心问题是语言创造者与负责其维护演进的托管机构共识之间存在强烈分歧；另有评论认为，这或许也表明 WG21 依赖“会议室专家”投票的方式需要重新审视。由于所给原文仅有评论链接、缺少投票细节，上述影响仍属未经独立核实的说法。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://train-it.eu/blog/cpp26-contracts-the-ballot-result/">The result of the C+ + 26 DIS ballot | Train IT</a></li>
<li><a href="https://news.ycombinator.com/item?id=50360164">C+ + 26 Disapproved | Hacker News</a></li>
<li><a href="https://isocpp.org/files/papers/P4454R0.pdf">When a language’s creator and its steward body strongly disagree</a></li>
<li><a href="https://www.linkedin.com/posts/robertseacord_balloting-has-completed-for-c26-unfortunately-activity-7519795140887035918-5PWL">Balloting has completed for C+ + 26 . Unfortunately it was Disapproved...</a></li>

</ul>
</details>

**标签**: `#c++`, `#standards`, `#programming-languages`, `#open-source`

---

<a id="item-tech-news-6"></a>
### [谷歌发布 Gemini Decisions API，主打快速多模态封闭式决策](https://blog.google/innovation-and-ai/technology/developers-tools/gemini-decisions-api/) ⭐️ 8.0/10

谷歌发布 Gemini Decisions API，基于新模型 Gemini Decision 1，面向工具选择、策略检查和模型路由等封闭式决策任务。该 API 支持文本、图像、音频、视频和 PDF 输入，单次调用最多可对 1000 个问题打分，返回概率与置信度，官方称端到端延迟约 150–250 毫秒。定价为每百万输入 token 0.10 美元、输出 token 免费，谷歌称其比 Gemini 3.5 Flash-Lite 方案便宜近 5 倍；目前已在 Google AI Studio 提供。上述延迟、价格对比均为谷歌单方面说法，尚无独立验证。

telegram · zaihuapd · 11月12日 00:28

**「背景」** Gemini Decisions API 属于“决策模型”这一新类别：它不生成文本，而是对封闭式问题返回类型化结果。据 Simon Willison 的测试记录，Jev 与 OpenAI 此前已推出同类接口，支持是/否、多选和评分三类问题，其中是/否问题沿用 Jev 的“Noul”术语并返回“是”的概率。Gemini Decision 1 的差异在于输入覆盖文本、图像、音频、视频和 PDF，而 Jev 仅支持文本与 JSON，OpenAI 支持文本和图像。

**「对开发者的影响」** 对需要做工具选择或模型路由的开发者而言，该 API 把多模态判断压缩成一次低延迟调用，并直接给出概率而非硬性 0/1 结果，便于设置阈值。但据 Simon Willison 的实测，其对是非题返回的是 0.92、0.05 这类概率值，而非 Jev 和 OpenAI 决策模型那样的 1.0/0.0，接入方需按概率处理而非当作布尔值。

**「社区讨论」** 有评论者认为 Gemini 在同类决策模型中价格偏高，但能接受音频和视频输入，在这些场景下可能很有用；也有人质疑这类模型如何校准置信度，并引用此前关于向 LLM 索取置信度存在问题的讨论。另有用户表示尚未用过决策模型，询问实际使用方式，例如能否用于 Pi 这类编码工具。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.requesty.ai/blog/typesafe-jev-explained">TypeSafe Jev explained: how it works, LLM differences and API pricing</a></li>
<li><a href="https://openrouter.ai/docs/guides/community/jev-tutorial">Jev Tutorial - Make Your First Decision Call on OpenRouter</a></li>
<li><a href="https://jevtypesafeai.com/">Jev by TypeSafe AI — Try the System One model &amp; API</a></li>

</ul>
</details>

**标签**: `#Gemini`, `#API`, `#multimodal`, `#model routing`, `#Google`

---

<a id="item-tech-news-7"></a>
### [美商务部拟定稿规则，封堵中国 AI 公司远程用芯](https://www.theinformation.com/articles/commerce-department-finalizing-long-awaited-ai-remote-access-rule) ⭐️ 8.0/10

美国商务部正在敲定一项规则，拟阻止中国 AI 公司通过境外数据中心远程使用先进 AI 芯片，最早可能于本月公布。据 The Information 报道，管制范围将从现有半导体出口限制扩展至马来西亚、新加坡、泰国等七个国家，以封堵远程访问和芯片走私渠道。商务部正与其他政府机构磋商后定稿。该消息来自 Telegram 频道的简要转述，具体条款、生效时间和执行细节尚未得到官方确认。

telegram · zaihuapd · 11月12日 03:42

**「背景」** 美国现行半导体出口管制主要针对芯片实物的出口与转口，而中国 AI 公司可通过租用境外数据中心的算力远程使用先进芯片，从而绕开这些限制。据 TechTimes 2026 年 8 月的报道，商务部当时已在起草针对这一远程访问缺口的规则，并提到该缺口与商务部此前撤销拜登时期“了解你的客户”要求有关；本次报道显示该规则已进入定稿阶段，适用范围还扩大到马来西亚、新加坡、泰国等七个国家。

**「影响」** 若规则按报道落地，在马来西亚、新加坡、泰国等七个国家租用算力或部署数据中心的中国 AI 公司，将面临无法通过境外云资源使用受控先进芯片的风险；相关云服务商和跨境算力安排也需要重新评估合规边界。由于规则尚未正式公布，具体适用范围和过渡安排仍不确定。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.techtimes.com/articles/325957/20260829/commerce-drafts-ai-chip-rule-loophole-it-created-rescinding-biden-know-your-customer.htm">Commerce Drafts AI Chip Rule for Loophole It Created by ...</a></li>

</ul>
</details>

**标签**: `#AI chips`, `#export controls`, `#semiconductors`, `#AI infrastructure`, `#policy`

---

<a id="item-tech-news-8"></a>
### [论坛指控 Humble Bundle 的 AI 辅助重写破坏安全与功能](https://forums.spacebattles.com/threads/humble-bundle-just-completely-killed-most-of-their-security-through-vibecoding.1346295/) ⭐️ 7.0/10

SpaceBattles 论坛的一则帖子及 Hacker News 讨论指控，Humble Bundle 借助 AI 辅助的“vibecoding”重写导致安全性和用户功能受损。评论者称登录验证码延迟约一小时才送达、一键支付被启用，以及原版 Humble Bundle 的下载链接被删除，导致用户无法再下载 Gish。上述说法均来自论坛帖子和社区评论，属于二手且未经独立验证的指控，Humble Bundle 尚未在现有材料中作出回应。

hackernews · rdmuser · 11月12日 06:52 · [社区讨论](https://news.ycombinator.com/item?id=50463899)

**「背景」** 该指控目前仅来自 SpaceBattles 论坛帖与 Hacker News 讨论，属于二手、未经独立验证的说法，尚无 Humble Bundle 官方回应或技术细节佐证。近期开发者社区已多次就 AI 辅助编程工具在真实产品中的安全与可靠性风险展开讨论，例如 Horizon 11 月 4 日的日报曾收录针对 Postman 静默安装 AI 插件并尝试共享 API 数据的指控，同样来自社区、尚待验证。

**「对用户的影响」** 已有多名用户报告具体的使用障碍：登录邮件验证码延迟约一小时、原有下载链接消失。一位自称多年订阅的用户表示因此决定取消订阅。在官方说明或修复出现前，依赖 Humble Bundle 下载已购内容的用户应自行备份文件，并留意登录与支付流程的异常。

**「社区讨论」** 评论者普遍将此事视为“为改而改”的反面案例，认为重写让用户体验变差。有人质疑一键支付是否真的违法，还是仅违反支付服务商条款；也有人对丢失 Gish 下载链接表达不满。这些均为社区观点，不构成对事实的确认。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://github.com/postmanlabs/postman-app-support/issues/14370">2026-11-04 — Postman 被指静默安装 AI 插件并尝试共享全部 API 数据</a></li>

</ul>
</details>

**标签**: `#ai-assisted-development`, `#software-quality`, `#security`, `#web-platforms`, `#community-discussion`

---

<a id="item-tech-news-9"></a>
### [AI 代理发现疑似未记录的玛雅遗址，但作者承认该遗址早已被发现](https://pietromiotti.com/latest/maya-site) ⭐️ 7.0/10

一位作者发文称，其 AI 代理在 LiDAR 数据中识别出一处可能未被记录的玛雅遗址，引发社区讨论。作者在评论中更新称，该遗址其实早已被发现，只是墨西哥政府可能没有相应记录。讨论的焦点因此转向两点：一是该发现的新颖性存疑，二是 LiDAR 考古在现实中受限于人力，而非数据获取能力。

hackernews · eyvindn · 11月11日 12:05 · [社区讨论](https://news.ycombinator.com/item?id=50452455)

**「背景」** 该事件的核心技术是 LiDAR（激光雷达）：它向林冠缝隙发射激光脉冲并测绘地表高度，使被植被遮挡的建筑轮廓以地形起伏的形式显现。作者让 48 个 AI 代理扫描约 1200 平方公里的公开 NASA G-LiHT 数据，标出一处带广场和 8–12 米金字塔的山顶遗址，墨西哥国家人类学与历史研究所（INAH）回复称该处未登记在官方名录中。不过作者在讨论中已更新说明，该遗址此前已被发现，只是未进入墨西哥官方记录。

**「实际影响」** 对从事遥感考古的团队而言，这一案例说明瓶颈已从“能否发现遗址”转向“能否核实与保护”：评论者指出，发现遗址的难度与完成 LiDAR 测绘相当，而一旦批量发现遗址，考古人员可能来不及在他人之前抵达现场；同时，最有效的保护方式往往是保持遗址原状。

**「社区讨论」** 有评论者指出，该遗址此前已被发现，并给出了相关社交媒体帖子的链接，认为问题可能出在墨西哥政府的记录上。另有评论者提醒，AI 代理容易生成听起来惊人、但经不起复核的结论，因此应等待专业考古学家验证；他还质疑，被联系的人是否敢于质疑一位 Google 工程师及其 48 个代理。也有评论者分享了自己制作英国 LiDAR 在线地图、并借此发现多处罗马别墅、堡垒和土方遗迹的经历。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.youtube.com/watch?v=Bi7mvWMr_cE">AI Agents Rediscovered a Maya Site in 72 Hours (Free NASA ... Reports indicate that an AI agent rediscovered a Mayan ... 48 AI agents scan NASA lidar and uncover · 318 HN comments | Zeli Google researcher discovers unmapped Maya site in Mexico ... My AI Agents (Re)discovered a Maya Site in 72 Hours A Google engineer points 48 AI agents at NASA Lidar and finds ... 48 AI Agents Flag a Maya Site in 72 Hours—but Miss a Key ...</a></li>
<li><a href="https://zeli.app/story/50452455">48 AI agents scan NASA lidar and uncover · 318 HN comments | Zeli</a></li>

</ul>
</details>

**标签**: `#AI agents`, `#LiDAR`, `#archaeology`, `#remote sensing`, `#AI applications`

---

<a id="item-tech-news-10"></a>
### [误报烟雾报警险些瘫痪 Jane Street 纽约唯一数据中心](https://michael.bacarella.com/2026/11/10/false-smoke-alarm-jane-street-datacenter/) ⭐️ 7.0/10

一篇第一人称叙述记录了 Jane Street 位于纽约的唯一数据中心因一次误报烟雾报警而几乎被关停的经过。作者在文中描述了报警触发后的处置过程，并由此引出对紧急断电（EPO）按钮、烟雾报警与设备联锁等设计问题的讨论。文章未提供具体的设备型号、版本或独立测量的停机数据，所述内容为当事人对事件的回顾。

hackernews · Lobsters · 11月11日 16:38 · [社区讨论](https://news.ycombinator.com/item?id=50455394)

**「背景」** Jane Street 的这篇事故记录由系统团队成员 Michael Bacarella 撰写，讲述的是 2011 年前后曼哈顿机房的一次真实经历：承包商施工扬起的灰尘触发了烟雾报警，冷却系统随之停机，而消防喷淋系统同时被加压，团队只能赶在温度达到喷淋启动阈值前手动拔掉每台服务器的电源线。社区讨论中，有从业者指出其所在数据大厅的《运行顺序》（Sequence of Operations）特意规定烟雾报警时不关闭 CRAC，因为《国际机械规范》（IMC）允许仅服务单一空间、风量超过 2000 cfm 的空气处理机组在报警时继续运行，理由是它不会把烟雾扩散到整栋楼。

**「社区讨论」** 评论者 rdl 认为该设施至少应配备机房内的物理紧急断电（EPO）按钮，并将 EPO 与烟雾报警联锁，在检测到烟雾时（可带延时）自动断电。rainbowzootsuit 则从规范角度提出不同看法：其参与编写的机房运行序列特意不在烟雾报警时关闭 CRAC，因为《国际机械规范》（IMC）在风量超过 2000 cfm 且仅服务单一空间时允许这样做，理由是这不会让烟雾在建筑内扩散；2000 cfm 通常也是需要安装烟雾探测器的门槛。另有评论者以飓风桑迪期间人工搬运柴油维持发电机为例，讨论数据中心的应急韧性。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://o-server.main.jp/hacker-news/en/articles/2026/11/10/false-smoke-alarm-nearly-floods-jane-street-s-nyc-datacenter-50455394.html">False Smoke Alarm Nearly Floods Jane Street&#x27;s NYC Datacenter</a></li>
<li><a href="https://michael.bacarella.com/2026/11/10/false-smoke-alarm-jane-street-datacenter/">How a false smoke alarm almost drowned Jane Street’s only NYC ...</a></li>
<li><a href="https://news.lavx.hu/article/a-false-smoke-alarm-nearly-flooded-jane-street-s-new-york-datacenter">A false smoke alarm nearly flooded Jane Street’s New York ...</a></li>

</ul>
</details>

**标签**: `#datacenter`, `#infrastructure-reliability`, `#incident-response`, `#facilities`, `#operations`

---

<a id="item-tech-news-11"></a>
### [WebGL2 超写实沙粒模拟演示引发技术讨论](https://av.github.io/safe-sand/) ⭐️ 7.0/10

开发者 av 发布了一个基于 WebGL2 的交互式沙粒模拟演示“safe-sand”，支持物理驱动的沙粒生成与程序化音效，源码已在 GitHub 公开。演示中不同种类的沙子在落到桌面和翻动时音色明显不同，但据社区评论，其声音合成并非完整物理建模，而是由每种沙子的少量参数、随机化以及对流速的响应共同驱动。该演示在 Hacker News 上引发讨论，焦点集中在默认开启的声音、移动端交互和物理参数调校上。

hackernews · everlier · 11月11日 13:39 · [社区讨论](https://news.ycombinator.com/item?id=50453288)

**「背景」** WebGL2 让浏览器无需插件即可进行 GPU 加速的实时图形计算，常被用于物理模拟和粒子系统演示。程序化音效则指不依赖预录音频、而是由参数实时合成声音，这类演示通常以开源形式发布，便于他人查看实现细节。

**「影响」** 对想研究浏览器端物理模拟与程序化音频的开发者来说，公开的源码仓库（github.com/av/safe-sand）提供了可直接参考的实现。不过评论者指出，演示默认开启声音且音量较大，戴耳机的用户和带孩子的家长建议先调低音量再点击“pour”；在手机上则可通过摇晃设备获得更自然的交互体验。

**「社区讨论」** 有评论者提醒声音默认开启且非常响，希望默认静音或至少在点击“pour”前提示调低音量；rybosome 认为不同沙子的音色差异明显，但指出声音合成只是基于少量参数和流速响应，并非完整物理建模。另有评论者认为手机上的摇晃交互更合理，也有人觉得石块的移动速度过快、需要增加摩擦力。

**标签**: `#webgl`, `#graphics`, `#simulation`, `#procedural-audio`, `#open-source`

---

<a id="item-tech-news-12"></a>
### [Apple 研究提速 RAG 检索，社区质疑学习式检索的实际收益](https://machinelearning.apple.com/research/faster-retrieval) ⭐️ 7.0/10

Apple 在机器学习研究博客发布了一篇关于为 RAG（检索增强生成）实现更快、更高效检索的文章，但提供的材料中没有该方法的名称、版本、基准数据或可用性信息，因此无法判断这是已发布的能力还是研究阶段的方案。Hacker News 上的讨论（37 条评论）主要围绕“学习式检索”与 grep 等简单基线之间的取舍展开。有评论者提到 Spotify 在同期演讲中介绍了名为 Parallel Fusion Router 的快速检索机制，同样属于学习式检索范式，用教师 LLM 训练更小的路由 LLM，并以 LLM-as-a-judge 作为奖励函数。

hackernews · zerop · 11月11日 16:57 · [社区讨论](https://news.ycombinator.com/item?id=50455633)

**「背景」** RAG（检索增强生成）通过在生成前从外部语料中检索相关片段，为 LLM 提供上下文。检索环节的速度与排序质量直接影响整体延迟和回答质量，因此业界持续探索用学习型检索替代或补充关键词匹配等传统基线。Apple 此前已在机器学习博客发布过关于端侧与服务器端基础模型的研究，本次则聚焦检索效率这一具体环节。

**「影响」** 评论者 armcat 根据自身经验指出，Apple、Spotify 等公司的这类学习式检索方法主要适用于超大规模场景，即需要处理数百毫秒级延迟和海量文档时才有意义；对规模较小的部署，收益可能不足以抵消引入学习式路由的复杂度。另一位评论者 mickeyp 则表示，在针对代码库构建 RAG 的实践中，嵌入模型和各类 BERT 实现未必能稳定胜过 grep。

**「社区讨论」** 讨论中的主要分歧在于检索环节是否应当介入：comandillos 认为检索排序会把 LLM 限制在启发式系统对领域的有限理解之内，让模型不受偏置地自行探索往往能获得更高质量的最终输出；mickeyp 则对嵌入模型在代码检索上的效果持保留态度。armcat 补充了 Spotify 的 Parallel Fusion Router 案例，但强调这类方法只对超大规模场景有实际价值。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://machinelearning.apple.com/research/introducing-apple-foundation-models">Introducing Apple ’s On-Device and Server Foundation Models</a></li>

</ul>
</details>

**标签**: `#RAG`, `#information-retrieval`, `#LLM`, `#Apple-research`, `#embeddings`

---

<a id="item-tech-news-13"></a>
### [Yogurt：本地运行的开源会议记录工具，对标 Granola](https://github.com/FrigadeHQ/yogurt) ⭐️ 7.0/10

开发者 Eric 在 Hacker News 发布 Yogurt，一款免费、MIT 许可的桌面应用，可在本地完成会议转录、摘要和问答，定位为 Granola 的私有开源替代品。与 Granola 一样，它后台运行、不加入通话；不同之处在于转录、录音和摘要都不离开本机。技术上它基于 Electron 支持 Windows、Mac 和 Linux，转录使用 whisper.cpp，系统支持时使用 Apple 的 on-device SpeechAnalyzer，摘要和问答使用 llama.cpp 运行本地开放权重模型，并按硬件能力自动下载配置。用户若想把笔记交给前沿模型，可通过内置的本地 MCP 服务器直接分享给 Anthropic、OpenAI 等服务，无需付费云服务作为中间层。

hackernews · brownrout · 11月11日 15:33 · [社区讨论](https://news.ycombinator.com/item?id=50454625)

**「背景」** Yogurt 将自己定位为 Granola 的开源替代品。Granola 是一款 AI 会议笔记应用，它不派机器人加入通话，而是在本地捕获音频；但据第三方评测，其转录、摘要和笔记存储仍依赖云端服务，因此“不派机器人”并不等于数据留在本地。Yogurt 作者称，他试用过一些流行的开源笔记工具，发现它们缺少日历集成、MCP 服务器等功能，或要求注册账号，于是决定自己开发。

**「实际影响」** 对因隐私或成本顾虑而回避 AI 笔记工具的用户，Yogurt 提供了无需账号、无需上传数据的选项；但本地模型的效果和速度取决于硬件，作者称已针对不同设备优化模型调用。需要留意的是，该应用为个人业余项目，目前尚无独立评测验证其转录与摘要质量。

**「社区讨论」** 评论者主要围绕同类项目展开：有人推荐 macOS 原生、不用 Electron 的 Biscotti，有人询问 Yogurt 与 Muesli、OpenOats 的区别。一位住在双方同意录音州的用户表示，Yogurt 是首个在他看来合适的实现，并赞赏其默认提醒用户告知通话参与者正在录音。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://efficient.app/apps/granola">Granola AI Review 2026: Pros, Cons, Pricing &amp; Verdict | Efficient App</a></li>
<li><a href="https://acetrum.com/blog/best-on-device-ai-meeting-assistants-2026">Offline AI Meeting Notes : Apps That Never... | Acetrum Technologies</a></li>
<li><a href="https://snaply.ai/alternatives/granola-vs-snaply/">In-Depth: Snaply vs Granola | AI Meeting Notes Comparison 2026</a></li>

</ul>
</details>

**标签**: `#open-source`, `#on-device AI`, `#meeting transcription`, `#privacy`, `#desktop app`

---

<a id="item-tech-news-14"></a>
### [线性规划能否用于权重空间编程？](https://nathan.rs/posts/weight-space-lp/) ⭐️ 7.0/10

技术博客作者 nathan.rs 发表文章，探讨线性规划（LP）能否作为一种权重空间编程方法，即通过线性约束直接编辑模型权重，而非依赖强化学习。文章在 Hacker News 引发讨论，评论者围绕约束表达、正则化与蒸馏等方向展开辩论。目前没有证据表明该方法已被实现或验证，讨论仍停留在概念与分析层面。

hackernews · emschwartz · 11月11日 12:30 · [社区讨论](https://news.ycombinator.com/item?id=50452655)

**「背景」** 该文回应的是 MIT CSAIL 此前发表的《Sparks of Weight-Space Programming》，后者提出前沿模型可直接读写神经网络权重。Horizon 2026 年 11 月 3 日的日报曾报道，一篇博客声称 Astra 仅改动 Qwen3.5-0.8B 约 0.016% 的参数便修复了推理循环，但相关数字均属作者自述、未经独立验证，社区也有人提醒结果被夸大。

**「社区讨论」** 有评论者认为，LP 求解器更适合作为权重编辑的辅助工具：通过“消除某行为、保留某行为”这类线性约束提供引导，而非替代原有方法。也有人主张传统数学规划将取代或覆盖 RL 循环，理由是奖励与惩罚在多目标场景下无法强制满足严格约束；另有评论者认为这种简洁性说明相关机制本应在训练时通过正则化实现，还有人建议将其用于权重空间蒸馏。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://nathan.rs/posts/weight-space-lp/">Can a Linear Program Do Weight - Space Programming ?</a></li>
<li><a href="https://rikiyat.github.io/blog/weight-space-programming/">2026-11-03 — Astra 直接读写权重，称可提升 Qwen 小模型数学能力</a></li>

</ul>
</details>

**标签**: `#linear-programming`, `#model-editing`, `#weight-space`, `#machine-learning`, `#optimization`

---

<a id="item-tech-news-15"></a>
### [美联航禁止 AI 代理代客订票](https://www.cbsnews.com/news/united-airlines-bans-ai-agents-booking-flights/) ⭐️ 7.0/10

美联航（United Airlines）已禁止 AI 代理代替旅客预订机票，这是该航司针对自主代理下单的明确政策限制。CBS News 报道了这一政策，但现有材料未说明其执行方式、生效时间或违规后果。该政策与当前代理工具可自动操作浏览器完成订票的现状形成直接冲突。

hackernews · herpderperator · 11月11日 21:24 · [社区讨论](https://news.ycombinator.com/item?id=50458900)

**「背景」** 美联航此次是通过更新承运合同（contract of carriage）来实施这一限制的，禁止 AI 代理“预订、修改或服务”机票，并阻止其访问用户账户，理由是隐私担忧以及无人工参与时可能出现的干扰或违规。据 Fast Company 报道，达美航空和美国航空尚未跟进类似政策。

**「影响」** 使用浏览器自动化或计算机操作类代理代订美联航机票的用户，可能面临订单被拒或违反服务条款的风险；依赖代理完成订票的开发者需要改为人工确认或通过具备授权接口的渠道完成交易。

**「社区讨论」** 有评论者质疑美联航如何实际阻止用户通过 Claude 的 Chrome 插件等计算机操作代理订票，并认为商家与用户之间因此形成对抗关系。另有评论认为订机票本就不适合作为代理自动化的典型场景，因为用户希望完全掌控座位、中转等结果，且航司订票页面本身就像复杂的 CAPTCHA；也有人建议用提供 API 或 MCP 的旅行社完成预订，代理只用于比价。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.nytimes.com/2026/11/11/business/united-airlines-ai-agents-booking-flights.html">United Airlines Blocks A . I . Agents From Booking Flights</a></li>
<li><a href="https://www.fastcompany.com/91640548/united-airlines-just-made-a-big-change-to-flight-bookings-heres-why-delta-and-american-arent-following">United Airlines just made a big change to flight bookings .</a></li>

</ul>
</details>

**标签**: `#AI agents`, `#industry policy`, `#travel tech`, `#automation`, `#terms of service`

---

<a id="item-tech-news-16"></a>
### [锁定 GitHub Actions 依赖的实践与局限](https://hugovk.dev/blog/2026/lock-github-actions/) ⭐️ 7.0/10

Hugo van Kemenade 的博客文章介绍了如何通过工作流锁文件（workflow lockfiles）锁定 GitHub Actions 依赖，把 action 调用固定到具体提交哈希，以减少标签被移动带来的供应链风险。zizmor 维护者在讨论中指出，当前这一机制只锁定普通的 action 调用：调用可复用工作流（reusable workflows）时仍需手动做哈希固定，复合 action（composite actions）本身不被锁定，而是通过调用它的工作流被间接锁定。因此该方案是现有 SHA 固定做法的补充，而非完整替代。

hackernews · Lobsters · 11月11日 22:16 · [社区讨论](https://news.ycombinator.com/item?id=50459485)

**「背景」** GitHub Actions 工作流通常通过标签（如 v4）引用第三方 action，而标签可被仓库所有者移动，因此固定到具体提交哈希成为常见的供应链防护做法。zizmor 是一款可审计 \`.github/workflows/\*.yml\` 及复合 action 配置的静态检查工具，其维护者在讨论中指出了工作流锁文件当前的能力边界。

**「实际影响」** 使用该方案的工作流维护者需要额外检查：若工作流调用了可复用工作流，必须继续手动固定其提交哈希；复合 action 的锁定取决于调用方，单个调用方无法独立保证其版本。评论者还提醒，锁文件本身不会阻止运行被篡改的 action，除非在 CI 中显式校验锁文件，或由平台层面强制执行。

**「社区讨论」** 有评论者认为，固定提交哈希只是把“信任仓库所有者不移动标签”换成了“信任合并该提交的人确认它来自目标仓库的正式发布，而非某个 fork 的提交”，并建议 GitHub 在市场强制要求不可变标签。另有评论者主张尽量避免使用 GitHub Actions，理由是相关安全事故历史较长；也有人指出锁文件若不配合校验步骤，仍只是类似 SHA 固定的变通做法。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.x-cmd.com/install/zizmor/">Zizmor : GH Actions Misconfig? | X-CMD One-Click Setup | zizmor</a></li>

</ul>
</details>

**标签**: `#github-actions`, `#supply-chain-security`, `#ci-cd`, `#open-source`, `#devops`

---

<a id="item-tech-news-17"></a>
### [Anthropic 路演视频披露 Claude 多芯片训练与推理策略](https://simonwillison.net/2026/Nov/11/anthropic-ipo-roadshow/) ⭐️ 7.0/10

Anthropic 在 11 月 10 日启动 IPO 路演，其路演视频首次公开了公司如何跨 AWS Trainium、Google TPU、NVIDIA GPU 和 AMD GPU 四类芯片训练与推理 Claude。联合创始人 Tom Brown 在“计算策略”一节称，这一多芯片路线是早期做出的非常规押注，因为每种芯片都需要单独的软件与推理栈。他举例说，今年首次接入 AMD GPU 时，Anthropic 让内部代号 Mythos 的模型尝试移植，结果三天内几乎无人工干预就让 Claude 在 AMD 上运行，Claude 编写或移植了近 100% 的 kernel。上述内容来自面向投资者的宣传视频，属于公司自述，并非独立验证的结果。

rss · Simon Willison · 11月11日 15:11

**「背景」** Horizon 11 月 3 日的日报曾报道，Anthropic 更新招股书，披露截至 2026 年 9 月 30 日的前三季度营收为 332.4 亿美元、净亏损 1040 亿美元；本次路演视频正是在这一 IPO 进程中的投资者沟通材料。此前外界对其算力布局的了解主要来自 2025 年 9 月的一份故障复盘，其中提到只影响其 TPU 部署的缺陷，暗示其并非只依赖单一芯片平台。

**「影响」** 对关注 AI 基础设施的开发者而言，这段视频提供了此前未公开的部署细节：Claude 同时运行在四家厂商的芯片上，且新芯片平台的适配成本可能大幅下降。不过，视频未给出各芯片的负载比例、性能数据或 Mythos 移植结果的可复现细节，相关效率提升仍待外部验证。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.cnbc.com/2026/11/02/anthropic-ant-s-1-quarter-financials.html">2026-11-03 — Anthropic 更新招股书：前三季度营收 332 亿美元，净亏损 1040 亿美元</a></li>

</ul>
</details>

**标签**: `#anthropic`, `#ai-infrastructure`, `#compute-hardware`, `#ipo`, `#llm-training`

---

<a id="item-tech-news-18"></a>
### [模拟显示无生命地球仍可长期维持宜居气候](https://www.solidot.org/story?sid=85862) ⭐️ 7.0/10

华盛顿大学团队开展了一项计算机模拟，在完全抽离生命因素、但保留地核、地函、大气、海洋及太阳辐射等 19 项关键物理变量的条件下，推演一颗无生命地球从 45 亿年前诞生至今、直至未来 5 亿年的演化史。模拟结果显示，这颗死寂地球除因缺乏光合作用而氧气极度匮乏外，地表温度与液态水量与真实地球相差无几。研究认为，即使没有生物参与，碳酸盐-矽酸盐循环本身就能通过岩石风化、火山喷气和海洋化学反应自动平衡大气二氧化碳浓度，在太阳逐渐变亮变热的过程中把地表温度维持在宜居范围内，从而暗示行星宜居性与生命存在可以在一定程度上分开。该结论来自单一二手报道的模拟结果，原文未提供论文链接或方法细节。

rss · 奇客 Solidot · 11月11日 14:43

**「背景」** 华盛顿大学团队此前已构建了一个模拟地核、地幔、地壳、地表与大气之间化学交换的“全地球”模型，其目的之一是帮助天文学家判断系外行星大气中是否存在生命迹象。此次无生命地球模拟正是建立在这一模型基础上，用不含生物过程的地球作为对照基线，检验碳酸盐-硅酸盐循环在仅有二氧化碳和水汽作为温室气体时能否独立维持气候稳定。

**「对宜居性判据的影响」** 这一结果对以液态水而非氧气作为宜居核心标准的天文学判据构成支持，提示在评估系外行星宜居性时，不能仅因缺乏生命迹象或氧气就排除其表面维持液态水的可能；不过该结论目前仅为模拟输出，尚缺独立验证。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.washington.edu/news/2026/11/02/whole-earth-simulation-exoplanets-alien-life/">UW scientists build whole-Earth simulation to help find life ...</a></li>
<li><a href="https://icra.it/publications/news/arxiv-2602-02267">A Lifeless Earth Model Could Stay Habitable—and That Changes ...</a></li>
<li><a href="https://www.openaccessgovernment.org/researchers-build-whole-earth-simulation-to-distinguish-abiotic-exoplanets-from-inhabited-worlds/216067/">Researchers build whole-earth simulation to distinguish ...</a></li>

</ul>
</details>

**标签**: `#astrobiology`, `#climate modeling`, `#computer simulation`, `#planetary science`, `#habitability`

---

## 科技博客

<a id="item-tech-blog-1"></a>
### [Cloudflare 为何选择 QuePaxa 共识算法](https://blog.cloudflare.com/choosing-quepaxa/) ⭐️ 8.0/10

rss · Cloudflare Blog · 11月11日 14:24

**「背景」** Cloudflare 为管理全球控制平面构建了实验性共识服务 Meerkat，其副本跨越大洲、通过互联网连接，链路延迟高且波动剧烈。作者指出，Raft、Multi-Paxos 等主流算法依赖单一领导者与可预测延迟，在这种环境下容易变慢甚至不可用；2020 年一次核心交换机部分故障曾让一个共识系统写入不可用长达六小时，仪表盘性能下降约 80 倍。

**「方案」** 作者认为，基于领导者的算法有两个结构性弱点。其一是破坏性干扰：Paxos 中多个提议者可互相插入更高票号而彼此阻塞；Raft 把提议权集中到领导者以换取单次往返决策，但领导者失效后，多个候选者争夺多数票的选举又会重现同样的互相阻塞，形成即使故障原因消失仍持续的自维持故障（metastable failure）。其二是故障检测：在异步网络中，慢与宕机无法区分，检测器只能靠超时猜测，猜错就触发选举并让系统停摆；而超时必须高于网络延迟（Raft 常设为往返时间的五到十倍），因此检测本身也很慢。QuePaxa 用三项设计绕开这些问题：领导者是可选的，任何提议者都能提议；完全去掉故障检测，改用本地决定的“对冲超时”，非领导者副本短暂等待领导者走快速路径，超时过短只会增加活跃提议者而不会冻结系统；提议者之间建设性干扰，每个提案带随机优先级，提议者收到更高优先级提案就采纳并转而传播它，从而合作收敛而非互相阻塞。快速路径下领导者一次往返即可决策；若被并发提议者打断，则进入多阶段慢路径，借助多数派交集保证安全，并在清理阶段让剩余提议者采纳已决定的提案，把成果带入下一轮。作者称论文预测每轮约 50% 概率达成决定，实际因收敛而更高。在跨近所有大洲的评估中，Meerkat 从未完全停摆，约 95% 以上的决策由领导者在第一阶段完成，未走快速路径时吞吐量短暂降至平时最多三分之一，即需要三次往返。作者也承认 QuePaxa 不如 Raft/Paxos 久经考验，且崩溃恢复扩展是他们自己的工作，形式化验证与故障注入测试仍在进行。

**「启示」** 作者的核心论点是：在互联网这类异步广域网上，依赖严格领导者和精确超时的共识算法注定会停滞，而 QuePaxa 通过可选领导者、取消故障检测和提议者协作，在保持快速路径性能的同时把网络波动转化为可承受的降速而非停摆。

**标签**: `#distributed consensus`, `#QuePaxa`, `#Paxos/Raft`, `#wide-area networks`, `#fault tolerance`

---

## 财经新闻

<a id="item-finance-news-1"></a>
### [离岸信托收益征税过渡期结束，累计申报超 1600 亿元](https://www.news.cn/20261111/9bcce99c779b4a6197ff45bbbc3e4c50/c.html) ⭐️ 8.0/10

国家税务总局 11 月 11 日表示，离岸信托收益征税的 90 天过渡期已结束，累计申报个人所得税超过 1600 亿元，其中 10 月当月入库超过 1200 亿元，带动 10 月全国个人所得税收入增长近 90%。

telegram · zaihuapd · 11月11日 10:35

**「背景」** 财政部、税务总局 2026 年 7 月 24 日发布公告，规定在 90 天过渡期内完成申报缴税可免收滞纳金；税务总局称，下一步将对未主动申报或申报不实者督促补缴并加收滞纳金，仍不改正的将依法立案稽查。

**「影响」** 这一结果意味着持有离岸信托收益的纳税人若未在过渡期内如实申报，将面临补税、滞纳金乃至稽查风险，同时 10 月个人所得税收入因这笔集中入库而明显抬升。

**标签**: `#tax policy`, `#offshore trusts`, `#personal income tax`, `#China economy`, `#enforcement`

---