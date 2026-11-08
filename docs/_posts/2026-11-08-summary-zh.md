---
layout: default
title: "Horizon Summary: 2026-11-08 (ZH)"
date: 2026-11-08
lang: zh
---

> 从 119 条内容中筛选出 10 条重要资讯。

---

**科技新闻**
1. [Alpine Linux 报告 openssh-server 密码认证绕过漏洞](#item-tech-news-1) ⭐️ 8.0/10
2. [GitHub 新 Git 存储架构 Rubicon 支持每秒 7200 次推送](#item-tech-news-2) ⭐️ 8.0/10
3. [Claude Code 本地设置文件被提交，1,122 个公开仓库泄露密钥](#item-tech-news-3) ⭐️ 7.0/10
4. [微软研究院 AI Frontiers 团队据报解散，John Langford 离职](#item-tech-news-4) ⭐️ 7.0/10
5. [博客称每台 Mac 内置未公开的家庭成员分类器](#item-tech-news-5) ⭐️ 7.0/10
6. [MaxxBench 质疑 DeepSWE 分数能否泛化](#item-tech-news-6) ⭐️ 7.0/10
7. [ESA Hera 探测器传回 Didymos 小行星近距离首批图像](#item-tech-news-7) ⭐️ 7.0/10
8. [苹果披露人形机器人系统 HALO，采用两个千问模型](#item-tech-news-8) ⭐️ 7.0/10

**科技博客**
1. [LLM 为何不擅长设计 AI 系统](#item-tech-blog-1) ⭐️ 6.0/10

**财经新闻**
1. [软银与 ABB 考虑分拆中国机器人业务以挽救被叫停的收购](#item-finance-news-1) ⭐️ 7.0/10

---

## 科技新闻

<a id="item-tech-news-1"></a>
### [Alpine Linux 报告 openssh-server 密码认证绕过漏洞](https://www.alpinelinux.org/posts/2026-11-05-openssh-password-authentication-bypass/) ⭐️ 8.0/10

Alpine Linux 发布公告，称其 openssh-server 存在密码认证绕过问题。该公告页面标题为“openssh-server password authentication bypass”，发布日期为 2026 年 11 月 5 日。目前可获取的内容仅包含指向 Lobste.rs 讨论的链接，未提供 CVE 编号、受影响版本范围、触发条件或修复与缓解措施等具体技术细节，因此漏洞的实际影响面和利用条件尚无法确认。

rss · Lobsters · 11月7日 14:51

**「背景」** 该漏洞被编号为 CVE-2026-123158，代号“sshole”，据安全厂商披露，它由 Özgün Kültekin 报告给 OpenSSH 项目，影响 Alpine Linux 上的 OpenSSH 密码认证。相关研究称，修复版本为 Alpine 的 openssh-server-9.9\_p2-r1 以及上游 OpenSSH 10.6p2，并指出长度在 257 至 1024 字节之间的密码可触发该问题。上述技术细节来自第三方安全厂商与研究仓库，Alpine 官方公告本身仅链接到讨论页，未在所提供的材料中给出 CVE 编号或受影响版本。

**「影响范围与处置」** 据 Alpine 安全公告，只有同时满足以下条件才受影响：运行 Alpine 的 openssh-server 包（该包在构建时未启用 PAM），或运行 openssh-server-pam 但将 UsePAM 设为 no；且 PasswordAuthentication 为 yes（OpenSSH 默认值）。openssh-server-pam 在 UsePAM yes 时不受影响。第三方分析称，未启用 PAM 的 Alpine sshd 会对 shadow 字段为“\*”的账户接受超长密码，并给出 CVE-2026-123158、CVSS 8.1 的编号与评分，但这些细节尚未在 Alpine 公告中得到确认。管理员应核对上述配置条件，并关注 Alpine 各分支的修复版本以完成升级。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.ox.security/blog/openssh-authentication-bypass-cve-2026-123158/">OpenSSH Bypass : CVE - 2026 -123158 | OX Security</a></li>
<li><a href="https://github.com/akarkode/alpine-openssh-sshole-auth-bypass">GitHub - akarkode/ alpine - openssh -sshole-auth- bypass : Vulnerability ...</a></li>
<li><a href="https://cycode.com/blog/sshole-cve-2026-123158-openssh-alpine-linux-vulnerability/">sshole ( CVE - 2026 -123158): OpenSSH Auth Bypass on Alpine | Cycode</a></li>
<li><a href="https://alpinelinux.org/posts/2026-11-05-openssh-password-authentication-bypass/">Security advisory: openssh-server password authentication ...</a></li>
<li><a href="https://safeguard.sh/resources/blog/alpine-openssh-password-authentication-bypass-musl-without-pam-find-affected-images-and-patch">Alpine OpenSSH Password Bypass CVE-2026-123158: Find and Patch</a></li>

</ul>
</details>

**标签**: `#security`, `#openssh`, `#alpine-linux`, `#vulnerability`, `#authentication`

---

<a id="item-tech-news-2"></a>
### [GitHub 新 Git 存储架构 Rubicon 支持每秒 7200 次推送](https://github.blog/engineering/architecture-optimization/inside-githubs-new-git-storage-architecture/) ⭐️ 8.0/10

GitHub 推出代号 Rubicon 的新 Git 存储架构，目标是支撑大量 AI 智能体并发操作同一个仓库。GitHub 称内部测试中该架构支持 5000 个智能体同时协作，每秒处理 7200 次推送，读取延迟保持在较低水平。架构上，Git 对象存入 Azure Blob Storage，引用状态由 Ref-CAS 管理，虚拟副本负责读写，后台节点负责压缩数据包。目前该架构处于有限私有预览阶段，GitHub 表示将逐步扩大推广范围；上述数字均为 GitHub 自述的内部测试结果，并非独立验证。

telegram · zaihuapd · 11月7日 14:12

**「背景」** GitHub 在介绍 Rubicon 的系列文章第一篇中提出两项设计原则：尽量减少组件间协调，并将存储与计算解耦。据外部报道，这一思路具体体现为用 Azure Blob Storage 承载 Git 对象、由专门的引用共识服务 Ref-CAS 管理引用状态。与此同时，AI 编码代理带来的仓库并发压力已成为业界共同面对的问题：Horizon 11 月 3 日的日报曾报道，OpenAI 介绍了为支撑 Codex 规模而构建的 Git 兼容后端 Pando，并利用 packfile-uri 机制让客户端单独下载额外的 pack 文件。

**「影响与限制」** 由于仍处于有限私有预览，普通用户和大多数组织暂时无法使用这一架构，现有仓库的读写行为不会立即改变。对需要让多个 AI 智能体在同一仓库上高频提交的团队而言，这一设计提供了可参考的方向，但在推广范围扩大前，其实际并发表现和兼容性仍待观察。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://openai.com/index/scaling-git-at-openai/">2026-11-03 — OpenAI 详解为超大规模代码库扩展 Git 的实践</a></li>
<li><a href="https://github.blog/engineering/architecture-optimization/inside-githubs-new-git-storage-architecture/">Inside GitHub’s new Git storage architecture - The GitHub Blog</a></li>
<li><a href="https://certi.news/en/article/17199">GitHub Unveils New Git Storage Architecture to Support ...</a></li>

</ul>
</details>

**标签**: `#git`, `#github`, `#storage-architecture`, `#ai-agents`, `#distributed-systems`

---

<a id="item-tech-news-3"></a>
### [Claude Code 本地设置文件被提交，1,122 个公开仓库泄露密钥](https://apiiro.com/blog/coding-agents-leaking-secrets-github-dont-ask-again) ⭐️ 7.0/10

安全公司 Apiiro 的博客称，在公开 GitHub 仓库中扫描到 1,122 个文件包含嵌入 Claude Code 本地设置文件（.claude/settings.local.json）的密钥或密码。Claude Code 团队成员 bcherny 在 Hacker News 回应称，该文件本应只保留在本地，Claude 创建它时会自动加入 gitignore，此次涉及的仓库是用户手动创建并提交的；他同时承认 Claude Code 目前不做密钥清理，但正在研究防范措施。评论者 Aurornis 指出，标题夸大了机制：仅点击“Don&\#x27;t Ask Again”不会泄露密码，泄露发生在用户把含明文密钥的已批准命令写入本地设置并提交到公开仓库之后。

hackernews · shmulc · 11月7日 20:45 · [社区讨论](https://news.ycombinator.com/item?id=50407882)

**「背景」** Claude Code 会在项目内生成 \`.claude/settings.local.json\`，用于保存已批准的权限、受信任的工具和模型选择等本地配置；按设计该文件应留在本地，不应提交到版本控制。此次事件的关键在于：部分用户手动创建或提交了该文件，而其中记录的已批准命令直接内嵌了密钥或密码，随后随公开仓库一并暴露。

**「实际影响」** 使用 Claude Code 的开发者应检查自己的仓库是否提交了 .claude/settings.local.json，并确认其中手动批准的命令是否内联了 API 密钥、密码等敏感信息；一旦推送至公开仓库，这些凭据即视为已泄露，需要立即轮换。由于 Claude Code 目前不提供密钥清理，防护依赖用户自行确保该文件不被纳入版本控制。

**「社区讨论」** 评论者 ohyes 建议不要让密钥经过 AI 代理，而是让代理编写脚本、由用户自己把密钥写入单独文件，再让脚本读取该文件。tsergiu 则表示对代理权限高度警惕，其做法是为每个任务使用隔离网络上的临时虚拟机，配合 --dangerously-skip-permissions 和限制外部服务权限的 API 代理。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://gethasp.com/guides/claude-code-settings-local-json-npm-leak/">Claude Code leaked secrets to npm</a></li>

</ul>
</details>

**标签**: `#security`, `#secrets-management`, `#ai-coding-agents`, `#claude-code`, `#github`

---

<a id="item-tech-news-4"></a>
### [微软研究院 AI Frontiers 团队据报解散，John Langford 离职](https://hunch.net/?p=13764006) ⭐️ 7.0/10

一篇博客文章指出，微软研究院旗下的 AI Frontiers 研究团队据报已被解散，研究员 John Langford 也已离开。该文链接到 Business Examiner 的二手报道，而非一手信息，因此团队解散的具体范围、时间和官方说法均未在现有材料中得到确认。AI Frontiers 原本聚焦人工智能的基础性进展，而非直接的产品化工作。

hackernews · srean · 11月7日 18:02 · [社区讨论](https://news.ycombinator.com/item?id=50406563)

**「背景」** 据外部报道，John Langford 是微软研究院纽约分部的 partner researcher manager，他在个人博客 Machine Learning \(Theory\) 上宣布 AI Frontiers 研究组结束，并在社交媒体上发布了这一消息。该组此前尝试把研究组织成连贯的协作项目，而非各自分散的探索。

**「影响」** 对关注工业实验室基础研究走向的研究者而言，这一动向意味着微软研究院内部从事非 transformer 路线探索的岗位可能减少；但现有材料未提供官方确认或人员安置细节，相关判断仍需等待微软方面的说明。

**「社区讨论」** 有评论者认为，当前各大公司普遍把基于 transformer 的规模化训练视为优先赛道，对其他 AI 方法的探索性研究受到抑制，并称 Meta 也曾解雇其此前的相关负责人。另有评论指出，原文并未否定 transformer 研究，其真正指向可能是办公室政治与管理问题阻碍了研究成果向产品的转化；也有人提醒标题应明确指的是名为“AI Frontiers”的团队，而非 AI 前沿研究本身。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://businessexaminer.ca/victoria-articles/item/microsoft-researcher-john-langford-exits-as-ai-frontiers-group-is-declared/">Microsoft Researcher John Langford Exits as AI Frontiers Group Is...</a></li>
<li><a href="https://hunch.net/?p=13764006">The End of AI Frontiers – Machine Learning (Theory)</a></li>

</ul>
</details>

**标签**: `#AI research`, `#Microsoft Research`, `#industry trends`, `#research culture`, `#transformer models`

---

<a id="item-tech-news-5"></a>
### [博客称每台 Mac 内置未公开的家庭成员分类器](https://8rank.ai/game/apple-intelligence-personal-knowledge-graph) ⭐️ 7.0/10

一篇博客文章声称，自 2022 年起出货的每台 Mac 都附带一对未公开说明的守护进程，其用途是构建关于用户及其周围人的个人知识图谱，包括识别家庭成员、推断彼此关系、记录通信方式与出行信息。该说法来自单一博客文章，尚未得到独立验证，文中也未提供可复现的检测方法或系统日志证据。文章在 Hacker News 上引发了大量隐私讨论。

hackernews · infwhispers · 11月7日 09:46 · [社区讨论](https://news.ycombinator.com/item?id=50403097)

**「背景」** Apple Intelligence 是苹果在本地设备与云端数据中心结合运行的 AI 功能平台，其部分能力依赖对设备上个人数据的理解。Horizon 2026 年 11 月 5 日的日报曾报道，苹果从 11 月 4 日起在中国推出基于阿里巴巴千问模型的 Apple Intelligence，首批功能包括照片自然语言搜索、通知摘要和 Siri 接入等。此次博客文章所称的守护进程与个人知识图谱，正是这类个性化功能背后的系统层机制，但相关说法目前仅来自单一博客，尚未获得苹果确认或独立验证。

**「影响」** 若该说法成立，macOS 用户设备上会存在一个由系统自动维护、且未在常规隐私设置中明确呈现的关系数据层，开发者与用户在评估本地数据留存范围时需要把这类系统级图谱纳入考虑。由于目前只有博客作者的描述，尚无独立复现或苹果官方说明，相关结论应视为待验证的指控而非已确认的能力。

**「社区讨论」** 部分评论者认为这类图谱是本地大模型理解“给 James 发消息”“告诉老板我明天不去”等指代所必需的上下文，且数据不出设备，因此不算大问题；另一些人则援引乔布斯 2010 年关于隐私需“用平实语言反复告知并征得同意”的表态，质疑未公开的收集方式。还有评论者表示，照片应用早已识别人脸与宠物，因此对这类能力并不意外，但对自己对话被系统记住感到不适。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.solidot.org/story?sid=85793">2026-11-05 — 苹果在中国推出基于千问的 Apple Intelligence</a></li>
<li><a href="https://ru.wikipedia.org/wiki/Apple_Intelligence">Apple Intelligence — Википедия</a></li>

</ul>
</details>

**标签**: `#privacy`, `#macOS`, `#personal-knowledge-graph`, `#Apple Intelligence`, `#systems`

---

<a id="item-tech-news-6"></a>
### [MaxxBench 质疑 DeepSWE 分数能否泛化](https://maxxbench.unlap.ai/research/why-maxxbench/) ⭐️ 7.0/10

MaxxBench 发布方法论分析，质疑 DeepSWE 编码基准的分数能否推广到任务规格变化后的情形。其做法是改变任务描述等参数，观察分数波动，并指出该基准中存在若干疑似缺陷，可能导致结果被高估。文章还提到一个实用结论：不要使用“max mode”。这些结论来自 MaxxBench 自身的测试与分析，所给材料未提供独立复现或第三方验证。

hackernews · antiuniverse · 11月7日 17:19 · [社区讨论](https://news.ycombinator.com/item?id=50406222)

**「背景」** DeepSWE 是一个面向长程软件工程任务的编码智能体基准，其任务从零编写、覆盖 91 个代码仓库和 5 种语言，并以手写验证器检验软件行为而非实现细节，主打“无污染”设计。MaxxBench 的批评正是针对这类被广泛引用的基准：它通过改变任务规格来检验分数是否稳健，并指出 DeepSWE 中存在若干缺陷。

**「影响」** 对依赖 DeepSWE 排名选型或评估编码模型的团队而言，这项分析提示应把分数视为对特定任务表述敏感的结果，并在采用前自行做参数扰动测试；评论者还提醒，较小的模型在扰动下退化最明显，因此跨模型比较时需留意这一差异。

**「社区讨论」** 有评论者认为，改变一个参数看分数变化是检验基准泛化性的简单有效起点，并分享了自己在私有基准中发现较弱模型失败原因并非答错的经验。也有人对 DeepSWE 仍存在缺陷感到意外，对基准整体更加怀疑；另有评论从图表读出小模型（名称含“-flash”者及 OpenAI Luna）退化最严重，但指出 GLM-5.3 与 GLM-5.3-flash 属于不同模型谱系，不应按同一规律解读。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://deepswe.datacurve.ai/">DeepSWE measures frontier coding agents on original, long-horizon...</a></li>
<li><a href="https://deepswe.lol/">DeepSWE — Long-Horizon Software Engineering Benchmark</a></li>

</ul>
</details>

**标签**: `#LLM benchmarks`, `#evaluation methodology`, `#coding agents`, `#benchmark robustness`, `#AI research critique`

---

<a id="item-tech-news-7"></a>
### [ESA Hera 探测器传回 Didymos 小行星近距离首批图像](https://www.solidot.org/story?sid=85825) ⭐️ 7.0/10

ESA 的 Hera 探测器从约 60 公里外拍下 Didymos 双小行星系统的首批近距离图像，主星 Didymos 清晰可见，较小的 Dimorphos 大部分隐没在阴影中。这是人类首次看到 Didymos 此前未观测到的那一面，其地貌与 NASA DART 相机在 2022 年撞击前不久拍到的一面明显不同：赤道隆脊仍在，其余区域分布着多块巨石、数个撞击坑以及疑似沟槽或隆脊的地形。研究团队推测，大量撞击喷出物从 Dimorphos 飞越约 1 公里抵达 Didymos，部分地表特征可能由此形成，但这一关联尚待 Hera 后续系统观测确认。

rss · 奇客 Solidot · 11月7日 16:17

**「背景」** NASA 的 DART 探测器于 2022 年 9 月 26 日撞击直径 151 米的 Dimorphos，通过测量其绕行直径 780 米的 Didymos 的周期变化来检验动能撞击偏转方案。ESA 的 Hera 探测器于 2024 年 10 月 7 日发射，飞行两年后抵达该双小行星系统，任务是对撞击后的轨道与地表变化进行近距离系统调查。

**「后续观测重点」** Hera 接下来将继续观测两颗小行星，系统绘制已辨识出的各项变化，并厘清这些地貌是否确与 DART 撞击喷出物有关。对行星防御研究而言，这些数据将用于评估动能撞击能否作为使威胁地球的小行星偏离轨道的可行手段。

**标签**: `#space`, `#planetary defense`, `#asteroids`, `#ESA`, `#science`

---

<a id="item-tech-news-8"></a>
### [苹果披露人形机器人系统 HALO，采用两个千问模型](https://weibo.com/1642634100/RqjjGllvw) ⭐️ 7.0/10

苹果研究团队于 11 月 4 日在 arXiv 提交预印本论文，披露人形机器人自主控制系统 HALO，并在宇树 G1 上完成验证，将仿真环境中学到的动作迁移到陌生的真实房间中执行。HALO 分为三层：上层使用千问 Qwen3.6-35B-A3B 负责任务编排，中层使用 Qwen3.5-2B 生成动作，底层是经强化学习训练的动作跟踪器。研究团队已公开数据生成、模型训练与部署代码。上述信息来自社交媒体上的简要转述，并非论文原文，具体性能指标尚未得到独立验证。

telegram · zaihuapd · 11月7日 13:35

**「背景」** HALO 是苹果研究团队提出的“Humanoid Autonomy, Learned in simulation, running Onboard”系统，其核心思路是在仿真中生成第一视角的视觉—语言—动作数据，再让训练出的策略完全在机器人本体上运行。据公开论文与代码仓库，其动作生成器使用了约 300 小时合成数据，这些动作被放入 1000 个程序化生成的房间并在 Isaac Sim 中渲染，从而让宇树 G1 能根据摄像头输入和自然语言指令在未见过的房间中行动。

**「影响」** 对关注人形机器人控制的研究者和开发者而言，公开的数据生成、训练与部署代码意味着可以在宇树 G1 这一硬件平台上复现或改造该三层架构；但该系统的实际泛化能力目前仅有论文层面的描述，尚无第三方测试结果可供参考。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://arxiv.org/html/2611.06908">Perceptive Humanoid Motion from Simulation - arXiv.org</a></li>
<li><a href="https://github.com/apple-aiml-research/ml-halo">GitHub - apple-aiml-research/ml-halo: HALO: Perceptive ...</a></li>
<li><a href="https://www.humanoidsdaily.com/news/apple-halo-humanoid-synthetic-data-unitree-g1">Apple&#x27;s HALO Teaches a Unitree G1 to Navigate Unseen Rooms ...</a></li>

</ul>
</details>

**标签**: `#robotics`, `#humanoid-robots`, `#Qwen`, `#reinforcement-learning`, `#open-source`

---

## 科技博客

<a id="item-tech-blog-1"></a>
### [LLM 为何不擅长设计 AI 系统](https://seangoedecke.com/llms-are-terrible-at-designing-ai-systems/) ⭐️ 6.0/10

rss · Sean Goedecke · 11月8日 00:00

**「背景」** LLM 代理能写普通程序，却在“AI 形态”的问题上屡屡选错方案：本该直接调用 LLM 的地方，它们反而去搭符号系统或正则匹配。作者用一则真实案例和自己在 Autodeck 项目中的经历，追问这种反常失败从何而来。

**「方案」** 案例中，用户想做一个检测记忆条目互相矛盾的工具，这本是 LLM 擅长的任务——批量或两两交给模型判断即可。但代理被问及“最先进做法”时，却着手把自然语言转成结构化逻辑原子，再用求解器机械比对。作者指出，判断两句话是否表达同一命题并无解析式方法，这条路注定走不通；更讽刺的是，当用户追问为何不奏效时，Claude 立刻解释这是存在了 130 年的无解难题，却仍在此前数周里反复迭代死路。作者在 Autodeck 中也见过代理用正则或关键词分类卡片，而非再调用一次 LLM。

他给出三种解释，并明确标注为推测。其一，训练代码大多写于 LLM 出现之前，但这解释不完整：模型在其他领域会选用现代技术，唯独不倾向 LLM。其二，RLVR 训练环境大概不具备调用其他 LLM 的凭证与 API 访问，因此强化学习可能抑制了这类写法；这也能解释为何模型擅长把 LLM 当作子代理来提示，却拙于写调用 LLM 的代码。其三，也是作者最偏爱的解释：当前 AI 代理的软件设计能力本就有限，选错工具是常态而非异常——他还见过代理硬造注定失败的共识算法、在事件驱动系统里塞同步检查。过去他把这类问题归因于对齐，如今更倾向于认为它们只是普通的软件设计错误。

**「启示」** 作者的核心论点是：不能用人的标准评判 LLM——只有 LLM 能既聪明到实现复杂符号求解器，又愚蠢到不知道它不会奏效。能否提前预判它们在何处强、何处弱，决定了你是从 LLM 中获得巨大价值，还是把大量时间和 token 浪费在无望的路线上。

**标签**: `#llm-agents`, `#software-design`, `#ai-systems`, `#failure-modes`, `#prompting`

---

## 财经新闻

<a id="item-finance-news-1"></a>
### [软银与 ABB 考虑分拆中国机器人业务以挽救被叫停的收购](https://www.bloomberg.com/news/articles/2026-11-07/softbank-abb-weigh-china-carve-out-to-salvage-robotics-deal) ⭐️ 7.0/10

软银与 ABB 正考虑将 ABB 机器人业务的中国部分分拆为股权结构不同的独立实体，以挽救本周四被中国外商投资安全审查机制叫停的 54 亿美元收购；知情人士称该方案可能失败，ABB 同时评估包括另寻买家在内的选项，该业务估值或为 20 亿至 30 亿美元。

telegram · zaihuapd · 11月7日 11:24

**「背景」** 中国外商投资安全审查工作机制办公室本周四叫停了软银以 54 亿美元收购 ABB 机器人业务的交易，两家公司及其顾问随后开始寻找解决方案。

**「影响」** 若分拆方案落地，ABB 在华机器人业务将转为由软银主导、股权结构不同的独立实体，其中国客户与员工所面对的直接交易方将随之改变；若交易最终失败，ABB 需另寻买家，该业务估值或为 20 亿至 30 亿美元。上述方案与估值均来自知情人士，结果尚不确定。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.bloomberg.com/news/articles/2026-11-07/softbank-abb-weigh-china-carve-out-to-salvage-robotics-deal">SoftBank , ABB Consider China Carve-Out to Salvage Robotics Deal</a></li>
<li><a href="https://www.swissinfo.ch/eng/workplace/china-blocks-softbanks-5-4bn-takeover-of-abbs-robotics-division/92331403">China blocks SoftBank ’s $ 5 . 4 bn takeover of ABB ’s robotics division</a></li>

</ul>
</details>

**标签**: `#M&amp;A`, `#foreign investment screening`, `#robotics`, `#SoftBank`, `#ABB`

---