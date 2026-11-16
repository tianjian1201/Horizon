---
layout: default
title: "Horizon Summary: 2026-11-16 (ZH)"
date: 2026-11-16
lang: zh
---

> 从 133 条内容中筛选出 18 条重要资讯。

---

**科技新闻**
1. [uBlock Origin 元素选择器曝通用 XSS，修复版本已发布](#item-tech-news-1) ⭐️ 8.0/10
2. [SpaceX 首次用筷子臂回收 Starship 上面级](#item-tech-news-2) ⭐️ 8.0/10
3. [OpenAI 称 GPT-6 Astra 协助推进标准模型的格点定义](#item-tech-news-3) ⭐️ 8.0/10
4. [美团开源 LongCat-2.5，称训练全程未用英伟达 GPU](#item-tech-news-4) ⭐️ 8.0/10
5. [Qwen4-Max 上线：2.4 万亿参数稀疏 MoE，小模型将开源](#item-tech-news-5) ⭐️ 8.0/10
6. [Qwen4-Max 发布：基准与成本对比引发讨论](#item-tech-news-6) ⭐️ 7.0/10
7. [MacBook Pro 的 OLED PWM 频闪问题](#item-tech-news-7) ⭐️ 7.0/10
8. [旧 Bitly 短链接遭劫持，引发链接失效与所有权讨论](#item-tech-news-8) ⭐️ 7.0/10
9. [Protomaps 让自托管地图瓦片变得便宜又简单](#item-tech-news-9) ⭐️ 7.0/10
10. [Tor 中继节点遭大规模 DDoS 攻击，项目发布 v0.4.9.17 加强 IPv6 防御](#item-tech-news-10) ⭐️ 7.0/10
11. [Microsoft 365 宕机致德国酒店错过泳池警报，15 名客人氯气中毒](#item-tech-news-11) ⭐️ 7.0/10
12. [DeepSeek 将官方 App 全套能力开放 API，含联网搜索](#item-tech-news-12) ⭐️ 7.0/10
13. [IBM 推进在 s390 硬件上运行 ARM64 客户机虚拟机](#item-tech-news-13) ⭐️ 7.0/10
14. [华为云 MaaS 上线开源盘古模型 openPangu-2.1-Pro](#item-tech-news-14) ⭐️ 7.0/10
15. [腾讯混元发布 Hy4 flash：224B 参数、1M 上下文，API 大幅降价](#item-tech-news-15) ⭐️ 7.0/10

**财经新闻**
1. [中美俄领导人将在深圳 APEC 场边首次举行三方会晤](#item-finance-news-1) ⭐️ 9.0/10
2. [美法官驳回美光、三星、SK 海力士撤销 DRAM 价格操纵诉讼的动议](#item-finance-news-2) ⭐️ 7.0/10
3. [中国三季度外资直接投资转为净流出 9 亿美元](#item-finance-news-3) ⭐️ 7.0/10

---

## 科技新闻

<a id="item-tech-news-1"></a>
### [uBlock Origin 元素选择器曝通用 XSS，修复版本已发布](https://iter.ca/post/ubo-uxss/) ⭐️ 8.0/10

一篇技术披露文章指出，uBlock Origin 的元素选择器存在通用跨站脚本（UXSS）漏洞，攻击可由网站驱动触发，文中附有概念验证（PoC）并给出了修复版本指引。评论中列出的安全版本为 uBlock Origin 1.75.4 及以上、uBO Lite 2026.1110.1816 及以上。该披露来自个人技术博客，并非厂商公告，漏洞细节与修复范围应以官方发布说明为准。

hackernews · Lobsters · 11月16日 02:04 · [社区讨论](https://news.ycombinator.com/item?id=50513160)

**「背景」** 根据 uBlock Origin 的 GitHub 安全公告，该漏洞于 2026 年 11 月 1 日通过邮件报告，公告列出了按时间顺序排列的相关修复提交。作者在技术披露中说明，问题出在 MV2 版 Firefox 扩展上，MV3 版的 uBO Lite 也受到一个类似但影响较轻的问题波及。

**「影响与应对」** 仍在使用旧版本的用户应尽快升级到 uBlock Origin 1.75.4 或 uBO Lite 2026.1110.1816 及以上；有评论者提醒，升级前可考虑新建浏览器配置文件再安装修复版，并提前备份书签。

**「社区讨论」** 有评论者质疑扩展为何必须把界面渲染进网站 DOM 才能操作页面元素，认为密码管理器建议登录框等场景可能向网站泄露账户信息；也有人提出把创建规则的界面放到浏览器 chrome 层即可规避，并追问为何未这样做。另有评论者赞赏作者明确标注“文字由人写、PoC 由 GPT 生成”的做法。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://github.com/gorhill/uBlock/security/advisories/GHSA-cmqw-9r2w-6wv2">Universal XSS from website-driven element picker</a></li>
<li><a href="https://iter.ca/post/ubo-uxss/">Universal XSS in uBlock Origin from website-driven element picker</a></li>

</ul>
</details>

**标签**: `#security`, `#browser-extensions`, `#xss`, `#uBlock Origin`, `#vulnerability-disclosure`

---

<a id="item-tech-news-2"></a>
### [SpaceX 首次用筷子臂回收 Starship 上面级](https://www.solidot.org/story?sid=85893) ⭐️ 8.0/10

SpaceX 在代号 Flight 15/Starlink Group 31-2 的任务中首次成功回收 Starship 上面级：Ship 42 绕地球飞行 14 圈、历时 22.5 小时后，于周六在 Starbase 被 2 号发射台的筷子臂捕获。此次任务原计划同时回收上面级和推进器，但推进器 Booster 22 在发射后不久启动终止程序，在海面上受控爆炸。任务还发射了 22 颗 Starlink V3 卫星。

rss · 奇客 Solidot · 11月15日 14:38

**「背景」** Starship 此前已多次实现推进器（Super Heavy）的回收，但上面级 Ship 从未从轨道返回并被捕获。据 SpaceX 任务页面，Flight 15 于 11 月 13 日从得州 Starbase 的 2 号发射台升空，Ship 42 在次日返回并被发射塔机械臂捕获。

**「影响」** 这是 SpaceX 在已实现推进器回收之后，首次完成上面级的回收，意味着两级复用路径中的上面级环节得到验证；但本次推进器未能回收，说明同一任务中两级同时回收尚未成功。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Starship_flight_15">Starship flight 15 - Wikipedia</a></li>
<li><a href="https://www.spacex.com/launches/starship-flight-15">Starship Flight 15 - SpaceX</a></li>

</ul>
</details>

**标签**: `#spacex`, `#starship`, `#reusable-rockets`, `#spaceflight`, `#hardware`

---

<a id="item-tech-news-3"></a>
### [OpenAI 称 GPT-6 Astra 协助推进标准模型的格点定义](https://openai.com/index/step-toward-defining-the-standard-model) ⭐️ 8.0/10

OpenAI 发布文章，介绍一个标准模型的非微扰格点定义候选方案，并称 GPT-6 Astra 帮助把这一想法转化为详细证明。该页面仅为简短导语，未给出格点作用量、费米子处理方式、证明结构或任何验证结果，因此无法判断该定义是否自洽、是否可复现，也无法确认 Astra 在其中承担的具体工作。目前这属于 OpenAI 的表述，而非经同行评审或独立检验的结论。

rss · OpenAI News · 11月15日 22:00

**「背景」** 格点规范理论把场论定义在时空离散格点上，当格距趋于零、体积趋于无穷时再取连续极限，从而恢复连续理论；格点 QCD 正是这一框架在强相互作用上的成熟应用。将标准模型整体放到格点上则困难得多，尤其是手征费米子如何在不破坏规范对称性的前提下定义，长期是未决问题。OpenAI 此次称 GPT-6 Astra 协助把一个候选的非微扰格点定义推进为详细证明，但公开内容仅为一句概述，未给出构造细节或验证结果。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Lattice_QCD">Lattice QCD - Wikipedia</a></li>
<li><a href="https://arxiv.org/pdf/2611.05051">A Note On Lattice Definition of Gauge Theories With Chiral Fermions</a></li>

</ul>
</details>

**标签**: `#physics`, `#lattice-field-theory`, `#standard-model`, `#AI-for-science`, `#research`

---

<a id="item-tech-news-4"></a>
### [美团开源 LongCat-2.5，称训练全程未用英伟达 GPU](https://the-decoder.com/meituan-releases-a-1-6-trillion-parameter-agent-model-that-never-touched-an-nvidia-gpu/) ⭐️ 8.0/10

美团 LongCat 团队在模型正式发布一周后公开了 LongCat-2.5 的权重，采用 MIT 许可证，允许商用。该模型面向能自主完成冗长多步骤任务（尤其是编程任务）的智能体，每个 token 激活约 480 亿参数，支持文本、图像和视频输入。官方称其训练全程使用华为升腾加速卡、未使用英伟达 GPU，这一硬件说法目前仅为厂商声明、尚未经独立验证。在 Terminal Bench v2.1 上，LongCat-2.5 得分为 88.4，略低于 Claude Opus 5 的 89.1。

telegram · zaihuapd · 11月15日 11:08

**「背景」** Horizon 11 月 2 日的日报曾报道，LongCat 团队发布了总参数 1.6 万亿、每 token 激活约 480 亿参数的原生多模态模型 LongCat-2.5，当时官网与 API 已可试用，但 GitHub 与 HuggingFace 权重尚未开放，也未公布基准测试结果。此次开源权重并给出 Terminal Bench v2.1 得分，正是对上述缺口的补齐。

**「对使用者的影响」** 对开发者而言，LongCat-2.5 以 MIT 许可证发布权重并允许商用，可直接用于构建多步骤编程类智能体；但官方未公布推理所需的显存与部署配置，实际部署成本仍需自行评估。其“全程使用华为升腾、未用英伟达 GPU”的说法目前仅为厂商声明，尚无独立验证。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://longcat.ai/blog/longcat-2.5/">2026-11-02 — LongCat-2.5 发布：1.6 万亿参数原生多模态模型</a></li>

</ul>
</details>

**标签**: `#open-source models`, `#AI agents`, `#Huawei Ascend`, `#model training hardware`, `#LLM benchmarks`

---

<a id="item-tech-news-5"></a>
### [Qwen4-Max 上线：2.4 万亿参数稀疏 MoE，小模型将开源](https://mp.weixin.qq.com/s/pJUt0xwD6H-WMyzd8TjZaQ) ⭐️ 8.0/10

阿里通义千问团队推出新一代旗舰模型 Qwen4-Max，采用稀疏 MoE 架构，总参数达 2.4 万亿，原生支持视觉理解与百万 Token 长上下文。官方称其前端编程能力在 Code Arena 盲测中位居全球前列，单任务平均费用从 26.58 元降至 11.16 元，降幅近 58%，Token 消耗减少近 50%，API 定价同步下调。该模型已正式上线；团队表示后续将推出规模更小的 Qwen4 系列模型并公开模型权重，但开源目前只是计划，尚无时间表。上述性能与成本数据来自发布方自述，来源未提供基准测试细节或第三方验证。

telegram · zaihuapd · 11月16日 02:52

**「背景」** Qwen4-Max 是通义千问旗舰系列的下一代产品，此前该系列已迭代至 Qwen3.5、Qwen3.6 等版本，并被用于苹果中国版 Apple Intelligence 及苹果 HALO 机器人系统的任务编排层（Horizon 11 月 5 日与 11 月 8 日的日报曾报道）。据外部报道，阿里此前已在 Token Plan 控制台、Qoder IDE 等渠道以 qwen4-max-preview 名义低调上线预览版，但未发布传统基准表或 Hugging Face 模型卡；Artificial Analysis 记录该模型支持文本与图像输入、上下文窗口约 98.4 万 token。

**「对开发者的影响」** 对开发者而言，Qwen4-Max 已从预览转为正式可用，API 定价为每百万 Token 输入 1.50 美元、输出 4.50 美元，支持 100 万 Token 上下文并默认开启推理模式，可接收文本、图像和视频输入。第三方页面还提到提供 100 万免费 Token，但该细节未获官方来源确认，接入前应以 QwenCloud 官方文档为准。

**「社区讨论」** 暂无可用评论，无法总结实质性讨论。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.solidot.org/story?sid=85793">2026-11-05 — 苹果在中国推出基于千问的 Apple Intelligence</a></li>
<li><a href="https://weibo.com/1642634100/RqjjGllvw">2026-11-08 — 苹果披露人形机器人系统 HALO，采用两个千问模型</a></li>
<li><a href="https://www.youtube.com/watch?v=GIrEt-bl2bA">Inside Qwen 4 - Max : How Alibaba ’s 51B N-Gram &amp; Ultra- Sparse MoE ...</a></li>
<li><a href="https://artificialanalysis.ai/models/qwen4-max">Qwen 4 Max - Intelligence, Performance &amp; Price... | Artificial Analysis</a></li>
<li><a href="https://freakyjolly.com/qwen4-max-guide/">Qwen4-Max Is Out: $1.50 API Price, Benchmarks, Setup ...</a></li>
<li><a href="https://openrouter.ai/qwen/qwen4-max">Qwen4 Max - API Pricing &amp; Providers | OpenRouter</a></li>
<li><a href="https://explainx.ai/blog/alibaba-qwen4-max-launch-api-cyber-cbrn-guardrails-november-2026">Qwen4-Max Is Live: $1.50/$4.50 API, 1M Context - explainx.ai</a></li>

</ul>
</details>

**标签**: `#large language models`, `#Qwen`, `#mixture-of-experts`, `#open source`, `#AI industry`

---

<a id="item-tech-news-6"></a>
### [Qwen4-Max 发布：基准与成本对比引发讨论](https://qwen.ai/blog?id=qwen4-max) ⭐️ 7.0/10

Qwen 发布旗舰模型 Qwen4-Max，官方博客未在提供的材料中给出具体技术细节。社区讨论引用 Artificial Analysis 数据称，该模型得分 43、平均成本 3.27 美元，而 GPT-6.1 Sol（medium）得分为 46、平均成本 0.36 美元。另有用户测试了该模型在 none、low、high、xhigh 四档推理强度下的表现，并提到 OpenRouter 上同时存在 qwen3.8-max-prime 与 qwen3.8-max-0902 两个版本，前者价格翻倍但速度更快。上述基准与价格数字均来自社区转述，未经独立核实。

hackernews · ilreb · 11月16日 02:14 · [社区讨论](https://news.ycombinator.com/item?id=50513215)

**「背景」** Qwen4-Max 是 Qwen 系列旗舰模型的最新一版，社区讨论中常把它与上一代 Qwen3.8-Max 对比。据社区评论，Qwen3.8-Max 在 OpenRouter 上曾以 qwen3.8-max-prime 和 qwen3.8-max-0902 两个版本提供，其中 prime 价格翻倍但速度更快；有开发者指出该模型生成速度约为每秒 30 个 token，明显慢于竞品的约 80 个 token/秒，这成为此次关注新模型推理速度的直接背景。

**「对使用者的影响」** 若社区引用的成本数据成立，Qwen4-Max 的单位成本约为对比模型的九倍，而得分略低，选型时需按任务价值权衡价格与质量。另有开发者指出 Qwen 3.8 推理速度约 30 tokens/秒、明显慢于 Opus 的近 80 tokens/秒，并因此在其 agent 评测系统中得分偏低，说明延迟可能直接影响实际评测结果。

**「社区讨论」** 讨论集中在性价比与速度：有用户引用 Artificial Analysis 数据质疑 Qwen4-Max 成本远高于 GPT-6.1 Sol 而得分更低；也有开发者希望新版本推理更快，称 Qwen 3.8 因速度慢在自家评测中得分不佳。另有评论关注效率提升对更小模型的带动，并追问开源权重模型与闭源前沿模型的差距是否在扩大。

**标签**: `#llm`, `#model-release`, `#benchmarks`, `#inference-cost`, `#qwen`

---

<a id="item-tech-news-7"></a>
### [MacBook Pro 的 OLED PWM 频闪问题](https://macanorak.com/the-macbook-pros-oled-pwm-problem-when-a-better-display-becomes-worse-to-use/) ⭐️ 7.0/10

MacAnorak 发布分析文章，讨论 MacBook Pro 的 OLED 屏幕因 PWM（脉宽调制）调光而产生的频闪问题，指出技术上更优的显示面板可能反而更影响使用体验。文章涉及测量与机理，但未提供可独立核实的完整测量数据。评论区对实际 PWM 频率存在分歧：有读者称追溯 240Hz 说法时得出不同结论，认为最差情况为 480Hz，并推测双栈串联 OLED 以 480Hz、180 度反相工作，在两者同时点亮时形成约 960Hz 的有效频率。

hackernews · MacAnorak · 11月15日 13:15 · [社区讨论](https://news.ycombinator.com/item?id=50506719)

**「背景」** PWM 调光通过快速开关背光或像素来调节亮度，频率越低，对闪烁敏感的人越容易感到眼疲劳、头痛或恶心。据 Notebookcheck 的实验室测试，新款 14 英寸 MacBook Pro 的 PROLED XDR 屏幕在亮度设为 99% 或更低时，以 240 Hz 的 PWM 闪烁调光，闪烁深度约 56%；作为对比，搭载 Mini-LED 屏幕的 M4 Pro MacBook Pro 测得调制频率为 14,880 Hz。

**「对敏感用户的影响」** 对频闪敏感的用户而言，PWM 频率和调光方式直接决定长时间使用是否引发不适，因此选购前应关注实测频率而非仅看面板规格。评论中有人引用《Nature》论文指出人眼可感知高于显示器刷新率两倍以上的闪烁，并质疑 Apple 采用如此低的 PWM 频率；也有读者表示自己从未受影响，说明个体差异显著。

**「社区讨论」** 评论区的核心争议是实际 PWM 频率：legitronics 认为测试者的 240Hz 结论可能来自示波器误读，并提出双栈串联 OLED 反相叠加形成约 960Hz 有效频率的解释。另有读者呼吁对 PWM 敏感人群规模做更多研究，并提到白 LED 显色指数（CRI）和 LCD 运动模糊也是部分人眼敏感的来源。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.appleheadlines.com/macbook-pro-oled-eye-strain-pwm-flicker/">MacBook Pro OLED Eye Strain &amp; PWM Flicker: 7 Moves - AH</a></li>
<li><a href="https://techbytes.app/posts/the-macbook-pros-oled-pwm-problem-when-a-better-display/">The MacBook Pro&#x27;s OLED PWM Problem: When a &#x27;Better&#x27; Display ...</a></li>

</ul>
</details>

**标签**: `#OLED displays`, `#PWM flicker`, `#hardware usability`, `#MacBook Pro`, `#display technology`

---

<a id="item-tech-news-8"></a>
### [旧 Bitly 短链接遭劫持，引发链接失效与所有权讨论](https://ransomnews.com/burger-king-tweet-bitly-link-hijack-2026/) ⭐️ 7.0/10

据 ransomnews 报道，一些年代久远的 Bitly 短链接正被他人劫持，报道以一条 Burger King 推文中的链接为例。该报道未提供被劫持链接的具体数量、Bitly 的官方回应或修复时间表，因此目前只能视为一项被披露的现象，而非已确认的大规模事件。

hackernews · hspeiser · 11月15日 22:11 · [社区讨论](https://news.ycombinator.com/item?id=50511395)

**「背景」** 据《纽约邮报》报道，Burger King、McDonald&\#x27;s 以及 Donald Trump 的旧 X 帖子中已过期的 Bitly 短链接被劫持，重定向至与 9/11 和希特勒相关的维基百科页面；目前尚不清楚这些企业账号的短链接是如何被劫持的。这一事件说明，短链接一旦过期或失去原持有者的控制，就可能被第三方重新注册并指向任意内容。

**「实际影响」** 对仍在使用旧短链接的网站维护者和内容发布者而言，这意味着链接指向的目标可能已不再受原所有者控制，嵌入旧文、书籍或社交帖子中的链接可能被导向无关甚至恶意页面。依赖短链接长期可用的机构应核查并替换关键链接，而不是假定短链接服务会永久维持原有映射。

**「社区讨论」** 有评论者认为外包的短链接服务比自建服务风险高得多，因为账户停用、公司倒闭或数据丢失都会造成无法修复的永久断链。另一位评论者分享轶事：某知名作者书中的虚构推文使用了未注册的 Bitly 链接，被他人抢先注册并重定向。也有人对短链接公司设有信任与安全团队感到意外，并呼吁建立记录 URL 原始用途的机制。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://nypost.com/2026/11/15/lifestyle/corporate-social-media-hacked-in-bizarre-bitly-link-hijacking-scheme/">Corporate social media hacked in bizarre Bitly link - hijacking scheme</a></li>

</ul>
</details>

**标签**: `#security`, `#url-shorteners`, `#link-rot`, `#web-infrastructure`, `#open-source`

---

<a id="item-tech-news-9"></a>
### [Protomaps 让自托管地图瓦片变得便宜又简单](https://bruceroettgers.eu/blog/protomaps/) ⭐️ 7.0/10

一篇博客文章与 Hacker News 讨论指出，借助 Protomaps 自托管地图瓦片如今成本很低、部署也相对简单。评论者给出了具体经验：Cartes.app 的开发者称此前使用 Maptiler 时账单很快达到每月 150 欧元，改用 Protomaps 后托管成本“几乎为零”；另有团队在 Cloudflare R2 上以类似方式自建地图基础设施，出于隐私和访问控制考虑并减轻公共基础设施负载。讨论还提到 OpenFreeMap、VersaTiles 等替代方案，以及 PMTiles 大瓦片（超过 128M）和部分栅格格式在工具中加载失败等问题。

hackernews · bcye · 11月15日 19:26 · [社区讨论](https://news.ycombinator.com/item?id=50509837)

**「背景」** Protomaps 是一个开源地图瓦片方案，其 PMTiles 格式把瓦片打包成可直接从对象存储分发的单文件，无需自建瓦片服务器。评论者提到，Cartes.app 此前使用商业服务 Maptiler，在无客户收入的情况下月账单很快达到 150 欧元，因此转向 Protomaps，托管成本几乎可以忽略。

**「实际影响」** 对预算有限的独立开发者和非商业项目而言，自托管瓦片可以避免按请求量计费的商业地图服务带来的成本失控，但代价是需要自行处理瓦片生成、样式设计和托管运维；评论中提到的工具兼容性问题也说明，大瓦片和栅格格式仍需在部署前验证。

**「社区讨论」** 评论者普遍认可自托管的成本与隐私优势，并分享了 Cartes.app 从 Maptiler 迁移、在 Cloudflare R2 上自建等真实案例；同时有人推荐 OpenFreeMap 和 VersaTiles 作为替代，也有用户报告 PMTiles 工具在处理大瓦片和部分栅格格式时失败，并希望支持从 URL 加载。

**标签**: `#maps`, `#self-hosting`, `#open-source`, `#geospatial`, `#infrastructure`

---

<a id="item-tech-news-10"></a>
### [Tor 中继节点遭大规模 DDoS 攻击，项目发布 v0.4.9.17 加强 IPv6 防御](https://www.solidot.org/story?sid=85896) ⭐️ 7.0/10

Tor 中继节点正遭遇大规模 DDoS 攻击，影响到了大多数中继节点运营者。Tor 项目为此发布 v0.4.9.17，加强了中继节点在 IPv6 处理方面的 DoS 防御能力，并要求运营者尽快升级。有运营者报告称，其家庭网络因攻击而拥塞，下载速度比正常水平下降 99%。Tor 项目表示正在评估更多防御措施，将在未来发布后续更新。

rss · 奇客 Solidot · 11月16日 07:09

**「背景」** Tor 项目此次发布 0.4.9.17 是对持续 DDoS 攻击的快速响应，官方公告称该版本包含一系列安全修复，其中一项专门针对中继节点与 IPv6 处理相关的 DoS 防御。据外部报道，该版本于 2026 年 11 月 13 日发布，其 IPv6 防御改为按整个 /64 地址块计数，而非逐个地址计数，以应对攻击者用大量客户端电路淹没中继节点的情况。

**「对运营者的影响」** 中继节点运营者应尽快升级到 v0.4.9.17，以启用针对 IPv6 相关 DoS 的加固；在升级前，受影响节点的带宽和可用性可能持续下降。Tor 项目尚未公布攻击向量和防御机制的具体细节，后续更新仍在评估中。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://forum.torproject.org/t/security-release-0-4-9-17/22454">Security Release 0.4.9.17 - Tor Release Announcement - Tor ...</a></li>
<li><a href="https://pasqualepillitteri.it/en/news/33780/tor-ddos-attack-emergency-update-0-4-9-17-relays">Tor under DDoS attack as emergency 0.4.9.17 update lands for ...</a></li>
<li><a href="https://daily.dev/posts/tor-project-issues-rapid-response-dos-defense-fix-amid-sustained-ddos-attack-trnv7s0ef">Tor Project Issues Rapid-Response DoS-Defense Fix Amid...</a></li>

</ul>
</details>

**标签**: `#tor`, `#ddos`, `#network-security`, `#ipv6`, `#open-source`

---

<a id="item-tech-news-11"></a>
### [Microsoft 365 宕机致德国酒店错过泳池警报，15 名客人氯气中毒](https://www.solidot.org/story?sid=85895) ⭐️ 7.0/10

微软 Microsoft 365 服务上周发生持续逾 24 小时的宕机，Outlook 电子邮件是受影响的应用之一。德国 Brühl 的梦幻乐园（Phantasialand）周六证实，由于 Outlook 下线，当自动加药系统向泳池注入过量氯、触发安全监控系统警报时，相关人员未能收到通过电子邮件发送的警报。结果 15 名入住乐园酒店 Hotel Ling Bao 的客人在使用泳池后遭遇氯气中毒，急救人员和消防部门接报后到场，泳池一度关闭后恢复开放；4 人被送往医院，其中一人因情况较严重仍在留院观察。

rss · 奇客 Solidot · 11月16日 06:38

**「背景」** Horizon 11 月 15 日的日报曾报道，微软确认一次影响 Teams、Outlook 和 Copilot 等应用的全球服务中断已结束，中断持续超过 24 小时，微软将原因归为服务器故障，并称未发现外部干扰。此次酒店事件正是发生在这轮中断期间：泳池加药系统出现缺陷后，安全警报通过电子邮件发出，但因 Outlook 不可用而未能送达。

**「影响与启示」** 这起事件表明，把安全警报的唯一送达渠道绑定在单一云邮件服务上，会在该服务中断时直接放大现实风险。对依赖电子邮件推送告警的运营方而言，需要为关键安全通知配置短信、电话或本地声光等独立冗余通道，并明确在邮件服务不可用时的替代响应流程。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.solidot.org/story?sid=85886">2026-11-15 — 微软 365 全球宕机逾 24 小时，Teams、Outlook 与 Copilot 受影响</a></li>

</ul>
</details>

**标签**: `#cloud-outages`, `#microsoft-365`, `#reliability`, `#alerting`, `#incident-response`

---

<a id="item-tech-news-12"></a>
### [DeepSeek 将官方 App 全套能力开放 API，含联网搜索](https://www.infoq.cn/article/NWmk4epBL0jPAUtpKSKb?utm_source=rss&amp;utm_medium=article) ⭐️ 7.0/10

InfoQ 报道称，DeepSeek 已通过 API 开放其官方 App 的全套能力，其中包括联网搜索。报道称该 API 价格不到 OpenAI、Claude 同类服务的 8%。但所给内容仅为跳转链接，未提供具体模型名称、版本、接口参数、计费单位或独立测得的性能数据，因此上述能力范围与价格对比目前只能视为报道方与厂商的说法，尚无法核实。

rss · InfoQ 中文 · 11月16日 14:38

**「背景」** Horizon 11 月 14 日的日报曾报道，DeepSeek 开放了应用级 API：开发者在原有 API 中开启对应参数，即可获得深度思考搜索、文件输入、链接阅读和语音等对话能力，工具调用与上下文拼接由服务端自动完成；当时消息称 V4.1-Flash 模型已在三个接口中支持这些能力，Search、Fetch、OCR、ASR、TTS 也可单独调用，但该消息来自一条简短的社交平台转发，未附文档链接或基准测试。本次报道延续了这一开放方向，并进一步给出联网搜索 API 相对 OpenAI、Claude 的价格对比说法。

**「对开发者的影响」** 若该定价属实，开发者可将联网搜索等官方 App 能力直接接入自有应用，而无需自行搭建搜索链路，成本门槛显著低于 OpenAI 与 Claude 的同类服务。但需注意，DeepSeek 此前已调整过 API 计费方式：据 2026 年 8 月的报道，其 V4 系列改为峰谷分时定价，高峰时段价格上调（tool-3-3、tool-3-1）。因此实际支出取决于调用时段与具体模型，接入前应核对官方最新价目表，而非仅依据“不到 8%”的宣传口径做预算。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://mp.weixin.qq.com/s/78KBHc4-4N5b2vfL9SkutQ">2026-11-14 — DeepSeek 开放应用级 API，集成搜索、文件与语音能力</a></li>
<li><a href="https://www.techtimes.com/articles/324764/20260817/deepseek-v4-api-prices-quadruple-peak-what-developers-pay-starting-now.htm">DeepSeek V4 API Prices Quadruple at Peak: What Developers Pay ...</a></li>
<li><a href="https://venturebeat.com/technology/deepseek-harness-launches-as-open-source-rival-to-claude-code-alongside-v4-pro-on-api-with-higher-prices">DeepSeek Harness launches as open source rival to Claude Code ...</a></li>

</ul>
</details>

**标签**: `#LLM APIs`, `#DeepSeek`, `#AI pricing`, `#web search`, `#AI industry`

---

<a id="item-tech-news-13"></a>
### [IBM 推进在 s390 硬件上运行 ARM64 客户机虚拟机](https://www.phoronix.com/news/IBM-VMs-ARM64-On-s390) ⭐️ 7.0/10

IBM 正在宣传其基于 KVM 的新能力：在 s390 硬件上运行 ARM64 客户机虚拟机。这一能力源于 IBM 与 Arm 的“双架构”合作，除硬件侧支持外，还需要 Linux KVM 虚拟化补丁；相关补丁已开发数月，初始代码已合入 Linux 7.4。目前 IBM 的表述属于对外宣传，尚不清楚该功能何时面向用户正式可用。

rss · Phoronix · 11月15日 11:42

**「背景」** IBM 与 Arm 今年宣布合作开发“双架构”硬件，目标是在 IBM Z（s390）服务器上运行 ARM64 指令；这需要 KVM 提供相应的虚拟化支持。据 Phoronix 报道，IBM 工程师此前已多次提交补丁系列，4 月发布第二版，8 月已推进到第七版，由 Steffen Eiden 主导，思路是尽量复用现有 arm64 KVM 实现而非另建一套 hypervisor 栈。10 月下旬的报道显示，初始的 ARM64 on s390 支持已随 Linux 7.4 的 KVM 改动合并。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.phoronix.com/news/ARM64-On-s390-IBM-Z-v2">IBM Updates Linux Patches For Introducing ARM64 KVM ...</a></li>
<li><a href="https://www.phoronix.com/news/Linux-7.4-KVM">AMD EPYC Zen 6 PML Support, ARM64 On s390 Merged For Linux 7. ...</a></li>
<li><a href="https://freenode.net/article/ibm-posts-kvm-series-to-run-arm64-guests-on-s390-hosts">IBM posts KVM series to run arm64 guests on s390 hosts</a></li>

</ul>
</details>

**标签**: `#virtualization`, `#KVM`, `#ARM64`, `#s390`, `#Linux`

---

<a id="item-tech-news-14"></a>
### [华为云 MaaS 上线开源盘古模型 openPangu-2.1-Pro](https://mp.weixin.qq.com/s/8JfFmscBTDl_mPQMycD8Nw) ⭐️ 7.0/10

11 月 15 日，华为云 MaaS 模型即服务平台上线开源盘古模型 openPangu-2.1-Pro，官方称其在 Agent 开发、AI 编码和推理优化三个方向做了能力升级。该模型基于 10 万余条专项数据优化 Skills 触发与工具调用，并重点适配鸿蒙 ArkTS 开发与升腾算子生成，同时接入智果 AgentArts、码道 CodeArts、果办 OfficeAce 等产品。定价方面，推理输入为 0.8 元/百万 tokens，输出为 3.2 元/百万 tokens，缓存命中输入为 0.016 元/百万 tokens。上述能力与价格均来自华为云发布信息，来源未提供独立基准测试结果。

telegram · zaihuapd · 11月15日 16:03

**「背景」** 据 IT 之家报道，华为云 11 月 1 日发布公告，MaaS 平台于 2026 年 11 月 6 日停止销售 openPangu-2.0-Flash 和 openPangu-2.0-Pro 两款模型服务，并称新版本已在规划中；其中 openPangu-2.0-Flash 是基于升腾 NPU 训练的 MoE 语言模型，参数规模约 92B、每 token 激活约 6B，支持 512k 上下文。此次上线的 openPangu-2.1-Pro 即为该系列的新一代版本，此前已由小艺 Work 率先接入，主打“鸿蒙任务增强”。

**「对开发者的影响」** 对使用华为云 MaaS 的开发者而言，openPangu-2.1-Pro 提供了按 token 计费的 Agent 与编码模型选项，缓存命中输入价格显著低于普通输入，适合重复上下文较多的调用场景；同时，鸿蒙 ArkTS 与升腾算子生成的适配意味着相关开发流程可直接对接该模型。由于来源未披露上下文长度、并发限制等参数，实际接入前仍需核对平台文档。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.ithome.com/1/022/974.htm">消息称 华 为 云 MaaS 平台 11 月 15 日更新上线 openPangu - 2 . 1 - Pro ...</a></li>
<li><a href="https://www.163.com/dy/article/LAUGH8N10511B8LM.html">华 为 小艺Work率先上线 openPangu - 2 . 1 - Pro 模 型 ，主打“鸿蒙任务增强”</a></li>
<li><a href="https://huggingface.co/openpangu/openPangu-2.0-Flash/blob/main/README.md">README.md · openpangu/ openPangu - 2 .0-Flash at main</a></li>

</ul>
</details>

**标签**: `#open-source LLM`, `#Huawei Pangu`, `#AI agents`, `#AI coding`, `#model pricing`

---

<a id="item-tech-news-15"></a>
### [腾讯混元发布 Hy4 flash：224B 参数、1M 上下文，API 大幅降价](https://mp.weixin.qq.com/s/5yBbf-ctYziM5r0i6Y17lA) ⭐️ 7.0/10

腾讯混元发布 Hy4 flash，总参数 224B、激活参数 12B，支持多模态与 1M 上下文，官方称综合效果略优于 Hy4 preview。API 定价为每百万 Token 输入 0.5 元、输出 2 元，命中缓存时输入仅 0.02 元，较 Hy4 大幅下降。官方还称 WorkIndex 单任务成本为 Hy4 preview 的 1/13、Hy4 的 1/20，但这些效率数据均为厂商自报，尚无独立验证。模型已在腾讯云 TokenHub、WorkBuddy 和元宝上线，官方计划后续开源；11 月 30 日前 WorkBuddy 限免、API 五折。

telegram · zaihuapd · 11月16日 07:17

**「背景」** Horizon 11 月 4 日的日报曾报道，腾讯混元发布 Hy4，首次为该系列引入视觉能力并支持电脑操作，同时预告将在近期推出 Hy4 flash。此次发布的 Hy4 flash 正是该预告的落地版本，官方称其综合效果略优于 Hy4 preview，并把卖点放在更低的单任务成本上。

**「对使用者的影响」** 对日常调用量大的开发者而言，缓存命中时 0.02 元/百万 Token 的输入价格会直接压低重复提示词场景的成本，但需注意上述成本对比基于厂商自报的 WorkIndex 指标。计划采用该模型的团队应先在腾讯云 TokenHub 或元宝上验证多模态与 1M 上下文在自身任务中的实际表现，并留意 11 月 30 日前的限免与五折属于阶段性优惠。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://mp.weixin.qq.com/s/JrQeiqx3PXBDSGish2IzwA">2026-11-04 — 腾讯混元 Hy4 发布，首次引入视觉与电脑操作能力</a></li>

</ul>
</details>

**标签**: `#LLM release`, `#Tencent Hunyuan`, `#model efficiency`, `#API pricing`, `#multimodal`

---

## 财经新闻

<a id="item-finance-news-1"></a>
### [中美俄领导人将在深圳 APEC 场边首次举行三方会晤](https://apnews.com/article/trump-xi-putin-summit-china-5fe92253ef38100bae913834a9b74d72) ⭐️ 9.0/10

中国外交部发言人宣布，中美俄三国领导人计划于 11 月 19 日在深圳 APEC 峰会期间举行三方会晤，会晤在 APEC 场边举行，不属于 APEC 正式议程。媒体称这将是三国领导人首次专门举行三方会晤。

telegram · zaihuapd · 11月16日 01:38

**「背景」** 这将是中美俄三国领导人首次专门举行三方会晤，会晤安排在 11 月 18 日至 19 日于深圳举行的 APEC 峰会期间，但不属于 APEC 正式议程。据 CBS 新闻报道，美方希望在此次会晤中讨论削减核武库问题。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://journal-neo.su/2026/11/16/apec-summit-in-shenzhen-russia%E2%80%99s-interests/">APEC Summit in Shenzhen : Russia’s Interests</a></li>
<li><a href="https://www.cbsnews.com/news/trump-putin-xi-jinping-meeting-china-us-russia-talks/">Trump, Putin, Xi Jinping to meet in first trilateral of its kind</a></li>

</ul>
</details>

**标签**: `#geopolitics`, `#US-China relations`, `#Russia`, `#APEC`, `#foreign policy`

---

<a id="item-finance-news-2"></a>
### [美法官驳回美光、三星、SK 海力士撤销 DRAM 价格操纵诉讼的动议](https://www.tomshardware.com/tech-industry/big-tech/judge-denies-motion-to-dismiss-dram-price-fixing-lawsuit-against-micron-samsung-and-sk-hynix-says-chipmakers-acted-like-hawks-flying-in-formation-finds-evidence-of-dram-collusion-plausible-after-500-percent-price-surge) ⭐️ 7.0/10

美国法官 Noël Wise 驳回了美光、三星和 SK 海力士要求撤销 DRAM 价格操纵集体诉讼的动议，认为原告提交的新证据使三家厂商同步限制供应的行为具有合谋可能性。原告为 17 名个人和小企业，指控三家在一年内四次平行限制 DRAM 供应，价格最高上涨 500%。

telegram · zaihuapd · 11月15日 16:39

**「背景」** 这起集体诉讼此前已进入审理程序，三家芯片厂商试图在实体审理前让案件被驳回，但法官认定原告的指控足以继续推进。三家公司须在 12 月 7 日前回应，案件管理会议定于 2027 年 1 月。

**「影响」** 这一裁定意味着针对全球主要 DRAM 供应商的合谋指控将继续审理，购买内存芯片的电脑、手机厂商及消费者可能因此关注后续进展；但该裁定只是程序性决定，尚未认定三家公司负有责任。

**标签**: `#DRAM`, `#price-fixing litigation`, `#semiconductors`, `#Micron`, `#Samsung/SK Hynix`

---

<a id="item-finance-news-3"></a>
### [中国三季度外资直接投资转为净流出 9 亿美元](https://cn.nikkei.com/china/ceconomy/64726-2026-11-16-09-03-25.html) ⭐️ 7.0/10

中国国家外汇管理局 11 月 13 日发布的 7～9 月国际收支数据显示，外资企业对华直接投资时隔 4 个季度转为负值，为负 9 亿美元，即撤资和业务缩减回收的资本超过新建工厂等新增投资。

telegram · zaihuapd · 11月16日 05:29

**「背景」** 这一净流出规模超过 2025 年同期的 5000 万美元，但低于 2023 年 7～9 月的 108 亿美元；报道将外资投资意愿下降归因于经济前景不明朗、增长预期减弱、内需疲软和价格竞争加剧。

**标签**: `#foreign direct investment`, `#China economy`, `#balance of payments`, `#capital flows`, `#economic data`

---