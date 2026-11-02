---
layout: default
title: "Horizon Summary: 2026-11-02 (ZH)"
date: 2026-11-02
lang: zh
---

> 从 31 条内容中筛选出 8 条重要资讯。

---

**科技新闻**
1. [陶哲轩：数学已改变，学界应调整做法](#item-tech-news-1) ⭐️ 8.0/10
2. [ChatGPT 分享链接漏洞可致会话代码执行与私密对话外泄](#item-tech-news-2) ⭐️ 8.0/10
3. [vLLM v0.33.0rc3 发布：升级 PyTorch 2.14，仅提供 CUDA 13.0 构建](#item-tech-news-3) ⭐️ 7.0/10
4. [Trigger.dev 披露客户环境变量泄露事件](#item-tech-news-4) ⭐️ 7.0/10
5. [Kyle Kingsbury：LLM 侵蚀对文档与软件的信任](#item-tech-news-5) ⭐️ 7.0/10
6. [LongCat-2.5 发布：1.6 万亿参数原生多模态模型](#item-tech-news-6) ⭐️ 7.0/10
7. [WIRED 调查：400 多个 AI 应用与网站暗藏色情深伪功能](#item-tech-news-7) ⭐️ 7.0/10

**科技博客**
1. [LLM 对齐在原则上不可能：目标缺失与动机不可知](#item-tech-blog-1) ⭐️ 6.0/10

---

## 科技新闻

<a id="item-tech-news-1"></a>
### [陶哲轩：数学已改变，学界应调整做法](https://terrytao.wordpress.com/2026/11/01/mathematics-has-changed-lets-act-like-it/) ⭐️ 8.0/10

陶哲轩（Terence Tao）在个人博客发文《Mathematics has changed. Let&\#x27;s act like it》，主张数学研究已发生根本性变化，学界应相应调整做法。该文在 Hacker News 引发约 434 条评论，讨论集中在 AI 辅助证明、成果署名与消化，以及做数学本身的意义。由于未提供原文内容，文章的具体技术论证与所提建议无法核实，以下仅依据评论中引述的观点。

hackernews · smilelamp · 11月1日 18:28 · [社区讨论](https://news.ycombinator.com/item?id=50328251)

**「背景」** 陶哲轩（Terence Tao）此前已多次公开讨论 AI 对数学研究的影响。据《自然》2026 年 10 月的报道，他当时呼吁数学界正视 AI 辅助证明正以惊人速度改变数学的现状；这篇 11 月 1 日的博文延续了同一议题，并进一步主张数学界应据此调整自身的实践方式。

**「社区讨论」** 有评论者引述陶哲轩近几个月关于“消化结果”的说法，认为选择有价值的问题、完全借助 AI 得到证明、彻底理解并据此提出新问题的人，即使未贡献原始证明中的新要素，也应获得实质性署名。另一些评论者则强调“做”本身就是意义所在，并以写作和编程作类比，认为只以推进领域为目标的视角忽视了手艺本身的价值；也有人把这一转变比作数学从手工时代进入工业化生产。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.nature.com/articles/d41586-026-03389-1">Can maths survive AI? Fields medallist Terence Tao calls for ...</a></li>

</ul>
</details>

**标签**: `#AI-assisted research`, `#mathematics`, `#research culture`, `#AI and society`, `#community debate`

---

<a id="item-tech-news-2"></a>
### [ChatGPT 分享链接漏洞可致会话代码执行与私密对话外泄](https://www.parameter.ai/labs/we-found-a-gap-at-openai) ⭐️ 8.0/10

Parameter 研究团队披露，一个恶意 ChatGPT 分享链接可在已登录用户的会话中执行代码，读取私密对话并把数据发送到外部服务器；受害者只需打开链接，无需安装任何应用。该漏洞源于预览功能与图表组件之间的消息处理缺陷。OpenAI 已于 10 月 26 日将其修复，定级为 P1，并向研究团队支付 5000 美元赏金。上述信息来自 Telegram 频道转述，而非 Parameter 的原始报告，因此技术细节有限。

telegram · zaihuapd · 11月2日 10:24

**「背景」** Parameter 的实验室报告称，其研究团队于 2026 年 10 月 13 日确认了 MathLive 组件中“消息转 HTML”的处理路径可作用于 ChatGPT 的生产代码，并指出打开分享链接本身就是触发漏洞所需的唯一操作。OpenAI 随后于 10 月 26 日修复该问题，并将报告定级为 P1。

**「影响」** 由于利用只需用户点击链接、无需安装，任何已登录 ChatGPT 的用户都可能成为目标，私密对话存在被读取并外传的风险。该漏洞已被修复，用户无需采取额外操作；但若在其他产品中复用类似的分享预览与富组件渲染逻辑，开发者应检查跨组件消息处理是否隔离了不可信内容。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.parameter.ai/labs/we-found-a-gap-at-openai">Do the Math: How We Took Over ChatGPT Accounts - Parameter</a></li>

</ul>
</details>

**标签**: `#security`, `#vulnerability-disclosure`, `#ChatGPT`, `#OpenAI`, `#web-security`

---

<a id="item-tech-news-3"></a>
### [vLLM v0.33.0rc3 发布：升级 PyTorch 2.14，仅提供 CUDA 13.0 构建](https://github.com/vllm-project/vllm/releases/tag/v0.33.0rc3) ⭐️ 7.0/10

vLLM 发布 v0.33.0rc3 候选版本，包含 927 个提交、389 名贡献者（其中 122 名新贡献者）。框架升级到 PyTorch 2.14.0（配套 torchvision 0.29.0、Triton 3.8.0），并停止发布 CUDA 12.9 的 wheel 和 \`-cu129\` 镜像，默认产物改为仅支持 CUDA 13.0；CUDA wheel 现在与 libtorch 保持 ABI 稳定。该版本还新增 Reflection Beam-1.0、Yandex AliceAI-Foundation-80B-A3B、Step-5 Preview 等大量模型支持，并新增 \`vllm/vllm\` 镜像别名和面向 AWS EFA 的专用镜像。作为候选版本，上述内容尚未标记为正式稳定版。

github · khluu · 11月2日 10:10

**「背景」** vLLM 是广泛使用的开源大模型推理框架，其发布产物长期按 CUDA 版本分别构建，用户需根据驱动和 GPU 环境选择对应的 wheel 或镜像。此前 CUDA 12.9 是可选构建之一，本次发布将其移除，意味着仍停留在 CUDA 12.x 环境的部署需要先升级运行时。

**「影响」** 依赖 CUDA 12.9 镜像或 \`-cu129\` wheel 的部署流程在升级到该版本时会失效，需要改用默认的 CUDA 13.0 产物或暂缓升级；同时 Medusa、MLP speculator 和旧版 Ray 编译图执行器被移除，使用这些功能的配置需迁移。ROCm 用户默认镜像已切换到 ROCm 10.0，仍需要 7.2 的可使用 \`-rocm72\` 标签。

**标签**: `#vllm`, `#llm-inference`, `#pytorch`, `#cuda`, `#open-source`

---

<a id="item-tech-news-4"></a>
### [Trigger.dev 披露客户环境变量泄露事件](https://trigger.dev/blog/security-incident-nov-2026) ⭐️ 7.0/10

Trigger.dev 在其博客发布安全事件披露，称客户环境变量遭到泄露。该披露未提供泄露的具体原因、影响范围或受影响客户数量等细节，目前公开信息仅限于事件本身及公司已通知客户这一事实。

hackernews · anurag · 11月2日 01:09 · [社区讨论](https://news.ycombinator.com/item?id=50331784)

**「背景」** Trigger.dev 在 2026 年 11 月 1 日发布的安全公告中称，已阻断此次攻击所用的漏洞利用，但调查确认部分组织受到影响，攻击者未经授权获取了这些组织的环境变量。该平台提供后台任务与工作流托管服务，因此受影响客户的环境变量可能包含数据库凭据、API 密钥等敏感配置。

**「社区讨论」** Hacker News 评论者对事件被标记为“已解决”提出质疑，认为在未说明泄露方式和影响范围的情况下不应如此定性（corvad、iampims）。dangoodmanUT 认为此类事件可能促使企业客户回流超大规模云厂商，并提到自己采用加密环境变量、将解密密钥硬编码在代码中的做法；castis 则表示短期内不愿再将构建部署交给不受自己控制的 SaaS。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://trigger.dev/blog/security-incident-nov-2026">Security Disclosure: Sunday November 1st | Trigger . dev</a></li>

</ul>
</details>

**标签**: `#security`, `#incident-response`, `#secrets-management`, `#developer-infrastructure`, `#cloud`

---

<a id="item-tech-news-5"></a>
### [Kyle Kingsbury：LLM 侵蚀对文档与软件的信任](https://simonwillison.net/2026/Nov/1/kyle-kingsbury/) ⭐️ 7.0/10

Simon Willison 引述了 Kyle Kingsbury 在 Jepsen 对 ParticleDB 1.1.4 的分析中提出的观点：LLM 的使用会侵蚀人们对文档、软件以及生产这些软件的组织所抱有的信任。Kingsbury 认为，过去被当作成熟系统标志的那些信号如今更容易被伪造，工程师可能会开始对任何新软件项目持怀疑态度。他进一步追问，在 LLM 时代，维护者如何确保软件正确、文档准确，又如何在完成这些工作后向用户证明其质量。

rss · Simon Willison · 11月1日 16:49

**「背景」** 这段引文出自 Jepsen 对 ParticleDB 1.1.4 至 1.1.18.11.rc-22 的一致性分析报告，该报告由 ParticleDB 的开发商 Orkes 资助，在单节点环境下测试，共发现 96 个问题，包括崩溃、死锁、数据丢失，以及“WHERE 4 = 5”这类异常行为，报告认为其“Full ACID”声明为时过早。Kingsbury 正是在这份报告的“LLM tradeoffs”章节中提出上述关于信任的论述。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://jepsen.io/analyses/particledb-1.1.4">Jepsen: ParticleDB 1.1.4</a></li>
<li><a href="https://braindetox.kr/en/posts/jepsen_particledb_consistency_analysis.html">ParticleDB Jepsen Report: 96 Issues vs Its Full ACID Claim</a></li>
<li><a href="https://jepsen.io/">Jepsen - Distributed Systems Safety Research</a></li>

</ul>
</details>

**标签**: `#llms`, `#software-quality`, `#documentation`, `#trust`, `#ai`

---

<a id="item-tech-news-6"></a>
### [LongCat-2.5 发布：1.6 万亿参数原生多模态模型](https://longcat.ai/blog/longcat-2.5/) ⭐️ 7.0/10

LongCat 团队发布 LongCat-2.5，这是一款面向长程 agent 任务的原生多模态模型，总参数 1.6 万亿，每个 token 激活约 480 亿参数。该模型在 LongCat-2.0 基础上强化了视觉理解与 agentic coding，并将视觉信号编码为多级离散 token，与文本统一处理，可完成视觉编程等任务。官网已开放试用并接入 API，但 GitHub 与 HuggingFace 版本尚未开放。发布信息未提供基准测试结果，实际能力尚无法独立验证。

telegram · zaihuapd · 11月2日 03:08

**「背景」** LongCat-2.5 是在 LongCat-2.0 基础上迭代而来。据搜索结果，LongCat-2.0 是美团发布、于 2026 年 6 月 30 日以 MIT 许可证开源的 1.6 万亿参数 MoE 模型，每 token 激活约 480 亿参数，主打编程与 agent 任务。LongCat-2.5 延续了相同的总参数与激活参数规模，新增原生多模态能力，但 GitHub 与 HuggingFace 版本尚未开放，与 2.0 的开源发布方式不同。

**「使用与获取」** 开发者目前只能通过官网试用和 API 调用 LongCat-2.5，无法下载权重进行本地部署或微调；需要私有化部署的团队需等待 GitHub 与 HuggingFace 版本开放。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://longcat.chat/blog/longcat-2.0/">Introducing LongCat - 2 . 0</a></li>
<li><a href="https://www.eesel.ai/blog/longcat-2-0">LongCat 2 . 0 : inside Meituan&#x27;s 1.6T open-weight model | eesel AI</a></li>
<li><a href="https://www.longcatai.org/">LongCat AI - LongCat - 2 . 0 Trillion- Parameter Agentic Coding Model</a></li>

</ul>
</details>

**标签**: `#multimodal models`, `#large language models`, `#AI agents`, `#model release`, `#agentic coding`

---

<a id="item-tech-news-7"></a>
### [WIRED 调查：400 多个 AI 应用与网站暗藏色情深伪功能](https://www.wired.com/story/hundreds-of-mundane-ai-apps-are-hiding-abusive-deepfake-features/) ⭐️ 7.0/10

WIRED 11 月 2 日发布的调查称，一个由 400 多个关联应用与网站组成的网络以宠物画像、语言学习等普通 AI 工具为掩护，在特定条件下加载色情深度伪造界面，允许用户上传他人照片生成露骨图像或视频。研究人员通过代码、域名及广告追踪发现这些应用与网站之间的关联；截至 9 月，其中 27 款应用仍在 Google Play 上架，累计下载超过 35 万次，不少被标为适合所有年龄。苹果在收到 WIRED 提供的线索后下架了 19 款应用，称开发者在审核通过后替换了远端网页内容；谷歌在被联系前已移除其中多数应用；Meta 表示已阻止相关 209 款应用投放广告。报道依据中文代码、托管信息及域名等线索，将该网络与中文开发者及一家香港注册公司联系起来，但这一关联属于媒体与研究人员的调查判断，相关运营方未回应置评请求。

telegram · zaihuapd · 11月2日 12:45

**「背景」** 应用商店审核通常针对提交时展示的功能与内容，而部分应用会在通过审核后从远端服务器加载不同页面，使实际功能与审核版本不一致。此次调查正是利用代码、域名和广告追踪等技术线索，将多个看似无关的普通 AI 工具串联为同一网络，并发现其在特定条件下切换至色情深伪界面。

**「影响」** 对普通用户而言，下载标称适合所有年龄的 AI 工具仍可能接触到未经提示的色情深伪功能，上传他人照片存在被滥用的风险。对开发者与平台而言，该事件凸显审核通过后远端替换内容这一绕过手段，苹果已据此下架 19 款应用，谷歌和 Meta 也分别采取移除与广告拦截措施。

**标签**: `#AI abuse`, `#deepfakes`, `#app store security`, `#platform moderation`, `#privacy`

---

## 科技博客

<a id="item-tech-blog-1"></a>
### [LLM 对齐在原则上不可能：目标缺失与动机不可知](https://seangoedecke.com/alignment-is-impossible/) ⭐️ 6.0/10

rss · Sean Goedecke · 11月2日 00:00

**「背景」** 作者 Sean Goedecke 提出一个比“对齐很难”更强的判断：对 LLM 而言，对齐不仅不可能，甚至在概念上就不自洽——我们无法说清“成功对齐”究竟意味着什么。过去的安全研究把 AI 想象成“盲目的优化器”，像国际象棋引擎那样执着于某个固定目标，因此对齐被理解为把目标写对；但现代 LLM 并非如此。

**「方案」** 作者指出，LLM 是在庞杂的人类文本语料上训练出来的，内部包含近乎无穷的人格，并随输入无缝切换，因此它们没有固定目标，也就没有任何东西可以在原则上被形式化地约束。于是只剩另一条路：充分理解模型，确信它安全。作者认为这条路从一开始就注定失败。他区分了机械式理解与“动机”式理解：即便能追踪数十亿权重的计算，也无法说明 Grok 为何自称“MechaHitler”。他借用招聘保姆或选举总统的类比：我们从不要求“完全理解”一个人的心智才敢信任他，因为动机在底层就耗尽了，再往下只剩机械因果。随后他给出对机制可解释性的三点批评：其一，我们依据观察到的行为给特征贴标签，而最担心的突发有害行为恰恰是尚未观察到的；其二，标签只是猜测，借用 Kripke 的“quaddiction”论证，“善意”特征可能与“2030 年前善意”无法区分；其三，即便有完整标注的特征图，单个 token 涉及的组合也复杂到人类无法解读，而用另一个模型来审查又会陷入无限递归。作者承认思维链监控、沙箱、人工介入等缓解手段有用，但认为它们不足以发现或控制超级智能；机制可解释性仍能帮助训练更少奖励黑客行为的模型，只是无法解决智能体失控造成大规模伤害的问题。

**「启示」** 作者的核心论点是：由于 LLM 没有可形式化的固定目标，而“完全理解动机”在原则上不可得，我们甚至无法描述“确信模型已对齐”是什么样子。这一结论更多建立在哲学论证与类比之上，其“原则上不可能”的强度超出所给证据，但为讨论对齐目标与可解释性的边界提供了一个清晰的框架。

**标签**: `#AI alignment`, `#LLM safety`, `#mechanistic interpretability`, `#AI philosophy`, `#interpretability limits`

---