---
layout: default
title: "Horizon Summary: 2026-11-26 (ZH)"
date: 2026-11-26
lang: zh
---

> 从 145 条内容中筛选出 20 条重要资讯。

---

**科技新闻**
1. [GRH 的 Lean 4 形式化证明压缩至 7.6 万行](#item-tech-news-1) ⭐️ 9.0/10
2. [1Password 披露 2026 年 11 月安全事件：恶意代码被推送到后台服务](#item-tech-news-2) ⭐️ 8.0/10
3. [Linux 内核 NFS 服务器曝出 12 年历史的预认证远程 root 漏洞](#item-tech-news-3) ⭐️ 8.0/10
4. [FCC 批准 SpaceX 部署最多 100 万颗 Starmind 数据中心卫星](#item-tech-news-4) ⭐️ 8.0/10
5. [华为预告新款 HBM 芯片，称数据引脚密度翻倍](#item-tech-news-5) ⭐️ 8.0/10
6. [Neuralink 获 FDA 批准开展渐冻症关键临床试验](#item-tech-news-6) ⭐️ 8.0/10
7. [英伟达叫停对东南亚四国 AI 服务器出货](#item-tech-news-7) ⭐️ 8.0/10
8. [用 Lean 检查 Clojure 核心库，发现未报告缺陷](#item-tech-news-8) ⭐️ 7.0/10
9. [预印本称多项式 Hirsch 猜想被证伪](#item-tech-news-9) ⭐️ 7.0/10
10. [通用大模型在蛋白质预测与设计上挑战 AlphaFold](#item-tech-news-10) ⭐️ 7.0/10
11. [NASA 计划 2028 年发射 SR-1 探测器验证核电推进](#item-tech-news-11) ⭐️ 7.0/10
12. [橡树岭如何维护 Frontier 超算](#item-tech-news-12) ⭐️ 7.0/10
13. [DeepSeek 开源 super-agent 原型：router 与 worker 如何分工](#item-tech-news-13) ⭐️ 7.0/10
14. [Rigdepot 0.1.0：统一管理团队 Skill、MCP 并同步到多个 AI 编码工具](#item-tech-news-14) ⭐️ 7.0/10
15. [Rustc 下一代 trait solver 的性能优化实践](#item-tech-news-15) ⭐️ 7.0/10
16. [研究人员以每个 3 美元接管美国财政部子域名](#item-tech-news-16) ⭐️ 7.0/10
17. [高通 Oryon 3 登顶：Chips and Cheese 架构分析](#item-tech-news-17) ⭐️ 7.0/10
18. [PICK：用形式语言包含关系让用户校验 GenAI 生成的正则表达式](#item-tech-news-18) ⭐️ 7.0/10

**财经新闻**
1. [美商务部被曝施压英特尔交出 10%股权](#item-finance-news-1) ⭐️ 8.0/10
2. [美国拟对 14 个贸易伙伴加征新关税，中国面临额外 20%](#item-finance-news-2) ⭐️ 8.0/10

---

## 科技新闻

<a id="item-tech-news-1"></a>
### [GRH 的 Lean 4 形式化证明压缩至 7.6 万行](https://leanprover.zulipchat.com/#narrow/channel/658556-Riemann-Hypothesis/topic/Cleaning.20up.20the.20proof/near/643702366) ⭐️ 9.0/10

有人发布了 Alpöge 关于黎曼猜想及 Dirichlet L 函数广义黎曼猜想（GRH）的 Lean 4 证明的精简版本，代码量从约 1700 万行降至约 7.6 万行。该仓库提供两个版本，证明同样的五个定理：可读版约 30 万行（从 grh/GUIDE.md 入手），紧凑版约 7.6 万行，代码托管在 GitHub 的 lsernau/grh-lean 仓库。发帖者称两个版本证明的是同一组定理，但未说明压缩是否经过独立验证，也未给出构建或校验结果。

rss · Lobsters · 11月25日 22:26

**「背景」** Horizon 2026 年 11 月 21 日的日报曾报道，Levent Alpöge 声称与 Anthropic 的 Claude 合作找到了黎曼猜想的证明，并称该方法可推广到广义黎曼猜想，且已完成 Lean 形式化，但文档极其冗长难读。11 月 24 日的日报进一步报道，有研究者指出关键定义被写成恒真、证明可能只是空转，Alpöge 随后承认代码「满是垃圾但能编译」。此次发布的精简版正是针对上述约 1700 万行原始形式化所做的整理，并新增了约 30 万行的可读版本。

**「对使用者的影响」** 可读版据称区分了“已知数学”与“新数学”，并配有较多人读文档，便于他人审阅和消化这份形式化证明；但社区有人指出 Main.lean 似乎未直接导入 mathlib，因此需要自行确认所证定理确实对应 mathlib 中的黎曼猜想定义。

**「社区讨论」** 有评论者认为可读版的结构和文档有助于理解这份证明，并计算出从 1700 万行到 7.6 万行相当于减少约 99.56%。也有人提出疑问：这是否回应了陶哲轩此前关于“巨型证明缺乏洞见”的担忧，以及更擅长精简和解释证明的 LLM 是否已改变这一局面；另有评论者对 Main.lean 是否真正引用 mathlib 的黎曼猜想定义表示怀疑。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://alpo.ge/remark.pdf">2026-11-21 — Levent Alpöge 声称证明广义黎曼猜想，附 Lean 形式化</a></li>
<li><a href="https://x.com/i/web/status/2124987173439209561">2026-11-24 — 黎曼猜想「AI 证明」被指空转，作者承认代码满是垃圾</a></li>

</ul>
</details>

**标签**: `#formal-verification`, `#lean4`, `#mathematics`, `#theorem-proving`, `#open-source`

---

<a id="item-tech-news-2"></a>
### [1Password 披露 2026 年 11 月安全事件：恶意代码被推送到后台服务](https://1password.com/blog/update-on-nov-2026-security-incident) ⭐️ 8.0/10

1Password 确认发生一起安全事件：攻击者入侵了一名员工的企业 GitHub 账户，借该账户访问源代码，并向后台服务推送恶意代码，导致部分客户账户信息被下载。公司称泄露数据包括姓名、邮箱地址、账户标识以及账户创建时间和最近登录时间，客户保险库及其中的内容未受影响。1Password 于 11 月 19 日开始调查相关迹象，未披露受影响用户数量，已停用涉事账户、轮换或撤销可能暴露的内部凭证，并加强了邀请和恢复邮件的验证码。公司表示用户无需更改账户，但应警惕钓鱼邮件。

hackernews · Lobsters · 11月25日 17:18 · [社区讨论](https://news.ycombinator.com/item?id=50644817)

**「背景」** 1Password 于 11 月 19 日开始调查员工企业 GitHub 账户被入侵的迹象，攻击者借该账户访问源代码并向后台服务推送恶意代码。Horizon 11 月 24 日的日报曾报道另一起同类事件：Codex2api 作者账号被入侵后，攻击者绕过 main 分支直接推送 tag，使发布构建带后门，说明 GitHub 账户与分支保护已成为供应链攻击的常见入口。

**「用户与开发者影响」** 1Password 称客户保险库内容未被访问，因此用户无需修改密码或迁移数据，但泄露的姓名、邮箱和账户时间信息足以支撑针对性钓鱼，社区中已有人报告收到疑似利用这些数据的高质量钓鱼邮件。对企业用户而言，此次事件的关键风险点在于员工终端被攻陷后可直接向生产后台推送代码，安全团队应核查自身代码仓库的分支保护与部署审批是否足以阻断同类路径。

**「社区讨论」** 评论者 tptacek 认为，员工设备被攻陷后攻击者得以向 GitHub 推送代码、代码再被部署，是 SaaS 公司长期存在的标准攻击模式，1Password 的端到端加密架构缓解了最坏情况。ctidd 则批评公告未说明是否缺少分支保护规则、推送权限是否可被绕过；ChrisHardie 作为长期用户表示，正因担心此类事件而坚持使用仅本地保存的保险库，并停留在较旧版本的应用和扩展上。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://github.com/WormW/codex2api-incident-2026-11">2026-11-24 — Codex2api 疑遭供应链投毒：3.1.10–3.1.12 版本被植入后门</a></li>
<li><a href="https://1password.com/blog/update-on-nov-2026-security-incident">Update on a security incident involving 1 Password ’s backend ...</a></li>

</ul>
</details>

**标签**: `#security`, `#supply-chain`, `#saas`, `#password-managers`, `#incident-response`

---

<a id="item-tech-news-3"></a>
### [Linux 内核 NFS 服务器曝出 12 年历史的预认证远程 root 漏洞](https://opensec.in/blog/nfs2root-cve-2026-99362) ⭐️ 8.0/10

安全博客 opensec.in 发布分析文章，披露 Linux 内核 NFS 服务器中存在一个已潜伏约 12 年的预认证远程 root 漏洞，编号为 CVE-2026-99362。文章称该漏洞影响 NFS 4.1 和 4.2 协议，攻击者无需认证即可利用，从而获得 root 权限。目前公开信息中尚未附带可用的概念验证代码，社区讨论中的缓解措施也属于临时性建议，而非官方修复。

hackernews · dm · 11月25日 20:35 · [社区讨论](https://news.ycombinator.com/item?id=50647161)

**「背景」** 该漏洞编号为 CVE-2026-99362，影响 Linux 内核的 nfsd 服务：远程客户端可通过协商极小的缓存回复大小并发送包含 SEQUENCE 操作的构造复合请求，触发越界内存写入，因为服务器在缓存响应前未校验其是否超出协商的缓冲区限制。据 OpenSec 的分析，该缺陷自 Linux 3.16 起存在，被评分为 9.8。Red Hat 指出，默认配置并不启用内核 NFS 服务，攻击面仅限于专门导出 NFSv4.1 或 NFSv4.2 共享的系统。

**「影响与应对」** 任何在可达的 TCP/2049 端口上提供 NFSv4.1 或 4.2（默认版本）的 Linux 主机都暴露在该预认证堆溢出漏洞之下，攻击者无需认证即可获得 root 权限。在补丁可用前，可临时通过向 /proc/fs/nfsd/versions 写入 &quot;-4.1 -4.2&quot; 关闭这两个协议版本，但该改动在重启后失效，且需先确认客户端未使用这些版本。

**「社区讨论」** 有评论者指出，目前没有公开的概念验证代码，因此实际被利用的风险尚不明确。superkuh 建议在关闭 nfs-server 后，通过向 /proc/fs/nfsd/versions 写入“-4.1 -4.2”来临时禁用这两个协议版本，并提醒该改动在重启后会失效；aidenn0 则认为自己把 NFSv4 服务放在 spiped 之后可能不受影响，但这只是个人判断。另有评论者 r3tr0 声称可用 yeet 的 XDP 防火墙规则拦截该漏洞，并附上了仓库链接，但这一说法未获独立验证。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://access.redhat.com/security/cve/cve-2026-99362">CVE-2026-99362 - Red Hat Customer Portal</a></li>
<li><a href="https://breachnews.com/research/nfs2root-cve-2026-99362-linux-nfsd-pre-auth-root/">NFS2ROOT CVE-2026-99362: Linux nfsd Root Bug Patched</a></li>
<li><a href="https://app.opencve.io/cve/CVE-2026-99362">CVE-2026-99362 - Vulnerability Details - OpenCVE</a></li>
<li><a href="https://opensec.in/blog/nfs2root-cve-2026-99362">NFS 2ROOT ( CVE - 2026 - 99362 ): pre-auth root in Linux nfsd | OpenSec</a></li>

</ul>
</details>

**标签**: `#linux-kernel`, `#nfs`, `#security-vulnerability`, `#remote-code-execution`, `#open-source`

---

<a id="item-tech-news-4"></a>
### [FCC 批准 SpaceX 部署最多 100 万颗 Starmind 数据中心卫星](https://www.geekwire.com/2026/fcc-clears-spacex-million-satellites-starmind-data-center/) ⭐️ 8.0/10

美国联邦通信委员会（FCC）批准 SpaceX 在 500 至 1002 公里高度部署最多 100 万颗卫星，用于构建 Starmind 在轨数据处理网络，FCC 称这是美国首次批准太空数据中心星座。授权附带条件：须提供通信备份方案、定期提交进展报告并给出详细的轨道碎片减缓方案；首颗卫星须不晚于 2033 年投入运行，整个星座须在 2040 年前全部运行。FCC 在审批中驳回了亚马逊、Viasat 和美国天文学会的反对意见。上述信息来自 GeekWire 经 Telegram 转述的简短报道，具体技术细节与批准文件尚未独立核实。

telegram · zaihuapd · 11月26日 04:45

**「背景」** 在轨数据中心此前已有具体项目推进：Horizon 2026 年 11 月 23 日的日报曾报道，Phison 发布面向航天器与在轨数据中心的 Pascari Space SSD 系列，并确认 Lonestar Data Holdings 的 StarVault-001 将搭载合计 488 TB 的 Phison SSD，计划于 2027 年上半年发射。此次 FCC 批准的是 SpaceX 的 Starmind 星座，规模达到 100 万颗卫星，与上述单星存储项目不在同一量级。

**「影响与合规关注」** 对 SpaceX 而言，这一授权把 Starmind 从规划推进到可部署的监管阶段，但 2033 年首星运行、2040 年星座建成的时间表构成硬性约束。对卫星运营商和天文观测机构而言，百万颗量级的星座意味着轨道碎片减缓方案和通信备份安排将成为后续监督重点，相关方需关注 FCC 附加条件的具体执行方式。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://videocardz.com/newz/phison-announces-488tb-of-ssd-storage-for-space-data-centers-pricing-expected-to-be-astronomical">2026-11-23 — Phison 推出太空级 SSD，488 TB 将随 StarVault-001 入轨</a></li>

</ul>
</details>

**标签**: `#space computing`, `#satellite internet`, `#FCC regulation`, `#SpaceX`, `#orbital debris`

---

<a id="item-tech-news-5"></a>
### [华为预告新款 HBM 芯片，称数据引脚密度翻倍](https://www.bloomberg.com/news/articles/2026-11-26/huawei-teases-next-gen-ai-memory-chip-to-take-on-samsung-hynix) ⭐️ 8.0/10

华为计划公布一款新型高带宽内存（HBM）芯片的细节，其研究论文标题显示，该芯片的数据引脚密度是三星电子和 SK 海力士量产产品的两倍，理论上可大幅提升内存带宽。华为计划于明年 2 月在旧金山的一场会议上发表这篇论文。目前公开的仅是论文标题和预告，尚无实测数据或独立验证，因此“翻倍”仍是华为方面的说法，而非已证实的产品能力。

telegram · zaihuapd · 11月26日 05:30

**「背景」** HBM 是 AI 加速卡的关键配套内存，目前先进 HBM 市场主要由 SK 海力士、三星和美光掌握。据 SecurityLab 报道，美国自 2024 年 12 月起限制部分先进 HBM 对华出口，这使华为推动 HBM 在中国本土投产成为其绕开供应限制的路径。

**「影响」** 若该指标在论文和后续产品中得到证实，更高的引脚密度意味着单位封装内可传输更多数据，直接关系到 AI 加速器的内存带宽上限。对关注供应链的读者而言，更实际的看点是华为正推动 HBM 在中国本土投产，而该部件目前受美国制裁限制，因此其量产可行性和良率仍是关键不确定因素。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.securitylab.ru/news/577255.php">Китай научился делать ИИ-чипы, но упёрся в память. Huawei ...</a></li>

</ul>
</details>

**标签**: `#HBM`, `#Huawei`, `#semiconductors`, `#AI hardware`, `#US sanctions`

---

<a id="item-tech-news-6"></a>
### [Neuralink 获 FDA 批准开展渐冻症关键临床试验](https://www.bloomberg.com/news/articles/2026-11-25/neuralink-gets-clearance-for-brain-implant-trial-in-als-patients?srnd=phx-technology) ⭐️ 8.0/10

Neuralink 宣布获得 FDA 批准，将在美国启动名为“LINK”的植入式脑机接口关键临床试验，面向渐冻症（ALS）患者招募，目标是把大脑信号直接转化为计算机控制指令。公司称这是美国首个获批的此类关键试验。此前其早期研究已在全球为超过 30 名瘫痪患者植入设备。此次获批意味着试验数据将作为未来申请医疗器械上市许可的核心依据，但报道未披露试验设计、主要终点和具体时间表。

telegram · zaihuapd · 11月26日 07:15

**「背景」** 关键临床试验（pivotal trial）是医疗器械在美国申请上市前通常需要完成的核心研究阶段，其安全性与有效性数据将作为监管审评的主要依据。Neuralink 此前通过早期研究已在全球为超过 30 名瘫痪患者植入设备，此次获批意味着相关工作从安全性验证推进到以疗效评估和上市审批为目标的阶段。

**标签**: `#brain-computer interface`, `#Neuralink`, `#FDA regulation`, `#clinical trials`, `#neurotechnology`

---

<a id="item-tech-news-7"></a>
### [英伟达叫停对东南亚四国 AI 服务器出货](https://www.ft.com/content/7838a715-07d4-4605-aa60-21f5af2b2370) ⭐️ 8.0/10

英伟达已要求主要制造伙伴暂停向马来西亚、新加坡、泰国和印度尼西亚发运 AI 服务器。戴尔、美超微等将英伟达芯片组装成整机的厂商已通知四国买家相关订单无法出厂。三名知情人士称，此次冻结与美国新一轮出口管制有关，是否为临时措施尚不清楚。美国商务部上周出台新规，要求区域云服务商在 90 天内取得出口许可，并核实客户不含受限的中国实体。

telegram · zaihuapd · 11月26日 07:38

**「背景」** 此次冻结发生在美国商务部工业与安全局（BIS）于 2026 年 11 月中旬发布临时最终规则之后，该规则对向为受限国家客户提供服务的海外数据中心供应先进 GPU 设定了新的许可要求，并对被其视为转运风险国家的相关出货扩大管制。此前，Horizon 11 月 24 日的日报曾报道，新加坡总理黄循财表示新加坡不会成为规避美国芯片管制的通道，而美国商务部已将 Megaspeed 及另外 6 家东南亚企业列入贸易黑名单，其中包括它们在马来西亚和泰国的关联实体。

**「影响」** 四国是中国 AI 公司获取英伟达最先进处理器的中转地，这些芯片不得直接出口中国大陆，因此暂停出货将直接影响经由该渠道的服务器交付。区域云服务商需在 90 天内取得出口许可并核实客户身份，否则相关订单与部署可能受阻。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.bloomberg.com/news/articles/2026-11-24/singapore-won-t-be-conduit-to-skirt-us-chip-curbs-wong-says">2026-11-24 — 黄循财：新加坡不会成为规避美国芯片管制的通道</a></li>
<li><a href="https://www.skadden.com/insights/publications/2026/11/ai-diffusion-2-bis-introduces-new-export-controls">‘AI Diffusion’ 2.0: BIS Introduces New Export Controls on ...</a></li>

</ul>
</details>

**标签**: `#export controls`, `#Nvidia`, `#AI hardware`, `#supply chain`, `#policy`

---

<a id="item-tech-news-8"></a>
### [用 Lean 检查 Clojure 核心库，发现未报告缺陷](https://s.conao3.com/blog/2026/e4f733) ⭐️ 7.0/10

一篇博客文章称，作者使用 Lean 对 Clojure 核心库进行检查，并发现了此前未被报告的缺陷。文章在 Hacker News 引发讨论，评论者指出其中部分“失败”案例并非真正的库缺陷：例如对字节数组调用 \`.indexOf\` 时传入 Long 类型的 2 属于类型使用错误，而 \`\(get &quot;abc&quot; 1.9\)\` 失败是因为 \`get\` 在字符串场景下会把键强制转换为整数，属于预期行为。因此，这些发现目前是作者的个人审计结果，其中若干项存在争议，尚不能视为经确认的 Clojure 缺陷。

hackernews · encyclopedism · 11月25日 14:56 · [社区讨论](https://news.ycombinator.com/item?id=50642939)

**「背景」** Lean 4 是交互式定理证明器，可用于对代码性质做机器检查的形式化证明；但据同一博客的说明，它只能处理可归约为整数与位运算的小函数，因此大型持久化数据结构需借助差分测试来验证。此次审计针对 Clojure 核心库中的 HAMT 与 vector-of 等结构，作者在 Lean 发现反例后将其还原为 Clojure 输入复现，再对修复后的代码重新建模证明同一性质。

**「对使用者的实际影响」** 评论者指出，这份清单中至少有两项并非真正的缺陷：对字节数组调用 \`.indexOf\` 时传入 Long 类型的 2 属于类型不匹配，而 \`\(get &quot;abc&quot; 1.9\)\` 失败是因为 \`get\` 在字符串场景下会把键强制转换为整数，属于预期行为。因此读者在据此排查 Clojure 代码前，应先区分真正的库缺陷与调用方误用，避免把类型错误当作核心库 bug 处理。

**「社区讨论」** 评论者 rvprasad 认为这类审计若能减少误报会更有价值，并具体指出上述两个案例分别属于类型错误和预期强制转换。yababa\_y 则分享了自己对 SBCL、Clozure 和 ACL2 的类似审计，称也发现了数十个问题。另有评论者 networked 好奇为何此类验证工作现在使用 Lean 而非 Rocq（原 Coq），并猜测语言模型可能更擅长写 Lean。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://elsolitario.org/en/2026/11/25/clojure-core-bugs-lean-4/">Clojure Core Bugs: 17 Found With Lean 4 - elsolitario.org</a></li>
<li><a href="https://s.conao3.com/blog/2026/e4f733">I checked Clojure&#x27;s core with Lean and differential testing ...</a></li>

</ul>
</details>

**标签**: `#Clojure`, `#Lean`, `#formal verification`, `#programming languages`, `#bug discovery`

---

<a id="item-tech-news-9"></a>
### [预印本称多项式 Hirsch 猜想被证伪](https://github.com/openai/math/blob/main/preprints/Superpolynomial-graph-diameter-of-simple-polytopes-November-24-2026/paper.pdf) ⭐️ 7.0/10

一份发布在 OpenAI 数学仓库的预印本声称，通过构造图直径超多项式的单纯多面体，证伪了多项式 Hirsch 猜想。该结果意味着不存在多项式时间的单纯形算法，因为单纯形法沿多面体图的边移动，其最坏情况步数受图直径约束。需要说明的是，这是预印本而非经过同行评审的正式发表结果，其证明尚未得到独立验证。

hackernews · acossta · 11月25日 17:34 · [社区讨论](https://news.ycombinator.com/item?id=50644980)

**「背景」** Hirsch 猜想曾断言，一个有 n 个面的 d 维多面体，其图上任意两个顶点之间的最短路不超过 n−d 步；多项式 Hirsch 猜想则把它放宽为存在某个常数 k，使所有多面体的图直径都被 n^k 界定。据外部资料，Francisco Santos 在 2010 年构造出一个 43 维、86 个面、直径大于 43 的多面体，从而否定了原版 Hirsch 猜想；评论者因此把这份新预印本视为对既有否定结果的补充性收尾工作。

**「影响」** 若该证明成立，则单纯形法在最坏情况下无法保证多项式时间，线性规划的多项式时间保证仍需依赖内点法等非单纯形方法。对实际求解器而言，这并不否定单纯形法在常见实例上的高效表现，但会削弱以 Hirsch 型界解释其实际速度的理论依据。

**「社区讨论」** 评论者 GIFtheory 指出，原始 Hirsch 猜想在 2010 年被证伪，此前已悬置 50 多年，因此这项结果更像是“收尾”工作，而非首次推翻猜想。tensegrist 则用立方体图的最坏路径长度作类比，解释原始猜想与多项式版本的区别。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Hirsch_conjecture">Hirsch conjecture - Wikipedia</a></li>
<li><a href="https://gilkalai.wordpress.com/2010/05/10/francisco-santos-disproves-the-hirsch-conjecture/">Francisco Santos Disproves the Hirsch Conjecture | Combinatorics...</a></li>

</ul>
</details>

**标签**: `#complexity-theory`, `#linear-programming`, `#polytopes`, `#mathematics`, `#algorithms`

---

<a id="item-tech-news-10"></a>
### [通用大模型在蛋白质预测与设计上挑战 AlphaFold](https://www.solidot.org/story?sid=85992) ⭐️ 7.0/10

据 Solidot 报道，AI 生物科技公司 Phylo 的研究员 Xinming Tu 本月初用 OpenAI、Anthropic 和 Google 的大模型测试其预测鲜为人知细菌蛋白质序列的能力，结果发现 Anthropic 最新版 Claude 不仅优于其他大模型，还超过了专门针对蛋白质序列训练的工具；他与哈佛医学院的 Leo Chen 分享的这一发现引发计算生物学界热议。本周二 OpenAI 宣布其最新大模型设计出新蛋白质，部分在实验室合成和测试时行为与预期一致。报道同时指出，部分研究人员质疑大模型展现的部分能力可能只是对训练数据的机械重复，且该报道未提供方法、基准或同行评审信息，相关结论仍属初步观察与厂商声明。

rss · 奇客 Solidot · 11月25日 15:26

**「背景」** AlphaFold 由 Google DeepMind 开发，已预测超过 2 亿个蛋白质结构，并通过 AlphaFold 蛋白质结构数据库免费公开，长期被视为蛋白质结构预测的专用基准工具。OpenAI 于 2026 年 11 月 24 日发布研究帖和预印本，称 GPT-6 模型仅靠推理和代码设计蛋白质，合作实验室 Onava 在五个靶点上测试了设计，322 个微型结合蛋白中有 35 个呈阳性结合信号；不过专用模型仍参与了序列提供和候选筛选。

**「对计算生物学研究者的影响」** 若通用大模型在蛋白质预测与设计上的能力得到独立验证，计算生物学研究者可能需要在专用工具之外增加对通用模型的对照测试，并特别关注训练数据记忆带来的虚高表现。Nature 的报道确认 Anthropic 与 OpenAI 的语言模型已能设计蛋白质并预测其序列与结构，但相关能力此前仅见于专用 AI 工具；同时有综述指出，AlphaFold 类模型在蛋白质相互作用预测上仍受数据稀缺与模式记忆限制。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://deepmind.google/science/alphafold/">AlphaFold — Google DeepMind</a></li>
<li><a href="https://letsdatascience.com/news/openai-reports-gpt-6-models-can-design-proteins-with-lab-evi-b0ee33c8">OpenAI Reports GPT-6 Models Can Design Proteins With Lab ...</a></li>
<li><a href="https://postcutoff.com/e/2026-11-24-openai-gpt-6-protein-design-wet-lab/">OpenAI: GPT-6 designs proteins, lab-tested | Post-Cutoff</a></li>
<li><a href="https://www.nature.com/articles/d41586-026-03836-z">Watch out, AlphaFold: Claude and ChatGPT’s new biology skills ...</a></li>
<li><a href="https://www.sciencedirect.com/science/article/pii/S0959440X26000709">From memorization to generalization: Why physics will improve ...</a></li>

</ul>
</details>

**标签**: `#AI for science`, `#protein structure prediction`, `#large language models`, `#AlphaFold`, `#computational biology`

---

<a id="item-tech-news-11"></a>
### [NASA 计划 2028 年发射 SR-1 探测器验证核电推进](https://www.solidot.org/story?sid=85991) ⭐️ 7.0/10

NASA 计划于 2028 年发射名为 Space Reactor‑1 Freedom（SR-1）的探测器，在深空飞行中验证核电推进技术。SR-1 将搭载一台布雷顿闭式循环裂变反应堆，使用高纯度但低浓缩的铀燃料，发电功率超过 20 千瓦，并配合太阳能把 SkyFall 舱送往火星。SkyFall 舱内装有三架新一代直升机，用于研究火星地质与气候历史、探索新地形并搜寻地下冰层迹象。上述内容目前属于任务计划，而非已经实现的飞行验证结果。

rss · 奇客 Solidot · 11月25日 14:51

**「背景」** SR-1 Freedom 由 NASA 与美国能源部合作推进，按现有资料属于核电动推进技术验证器，若按计划实施，将成为首个飞出地球轨道的裂变动力航天器。此次报道中的布雷顿闭式循环反应堆、20 千瓦以上功率和 SkyFall 火星直升机载荷，都是这一验证任务的具体设计内容，而非已经完成的飞行结果。

**「影响」** 若按计划推进，SR-1 将成为深空核电推进与闭式布雷顿循环反应堆的飞行验证平台，其 20 千瓦级功率水平可为依赖核电源的深空任务提供实测数据。火星直升机载荷也意味着相关团队需要围绕 SkyFall 舱的投放与着陆条件设计新的探测流程。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.nasa.gov/mission/space-reactor-1-freedom/">Space Reactor - 1 Freedom - NASA</a></li>
<li><a href="https://space.skyrocket.de/doc_sdat/sr-1-freedom.htm">SR - 1 Freedom - Gunter&#x27;s Space Page</a></li>

</ul>
</details>

**标签**: `#nuclear propulsion`, `#space technology`, `#NASA`, `#fission reactor`, `#Mars exploration`

---

<a id="item-tech-news-12"></a>
### [橡树岭如何维护 Frontier 超算](https://www.solidot.org/story?sid=85989) ⭐️ 7.0/10

Solidot 编译的报道介绍了美国橡树岭国家实验室维护 Frontier 超算的日常挑战。Frontier 的 HBM 内存每天约发生 1.5 次无法纠正的双位错误，而上一代 Summit 每两周才出现一次，报道将差异归因于 Frontier 内存总容量超过 Summit 的 16 倍。除内存外，GPU 固件缺陷和互连故障也会造成严重问题：单个 GPU 故障就可能让使用 1,024 个 GPU 的任务被迫停止，而运行速度只有正常水平 80% 的 GPU 会让其余单元空等。超算依靠检查点机制定期保存结果，使模拟任务出错后不必从头重算。

rss · 奇客 Solidot · 11月25日 14:18

**「背景」** Frontier 是橡树岭国家实验室的百亿亿次（exascale）级超算，由数以千计的计算节点组成，单个模拟任务可跨越数千个处理器。节点规模越大，任何单点硬件故障或维护操作失误波及整个作业的概率就越高，因此故障率、检查点间隔和重跑成本成为运维的核心指标。

**「影响」** 对运行大规模作业的用户而言，故障后的关键问题是最近一次检查点的时间、需要重做多少计算，以及调度器多久能重新启动作业；检查点频率因此需要在保存开销与重算损失之间权衡。技术人员在狭窄机架间操作时还可能误重启节点或碰到相邻节点电源，这类人为失误同样被列为需要防范的风险。

**标签**: `#supercomputing`, `#hardware reliability`, `#HPC operations`, `#GPU`, `#checkpointing`

---

<a id="item-tech-news-13"></a>
### [DeepSeek 开源 super-agent 原型：router 与 worker 如何分工](https://www.v2ex.com/t/1260050#reply0) ⭐️ 7.0/10

一位开发者阅读了 DeepSeek 于 10 月 31 日开源的 super-agent 原型 dsh-superagent 的代码，并记录了其 router/worker 架构。该原型把“接收消息、判断归属”与“执行任务”拆开：Router（代码中称 orchestrator）判断新事件属于哪件工作，Worker 在独立上下文中推进具体任务，核心对象包括 Ticket（一件工作）、Trigger（进来的事件）和 Thread（同一 PR 或 IM 话题里的连续事件）。作者指出，状态全部存放在 SQLite 中，而不是依赖 Router 的上下文记忆；Router 通过分页读取工具按资源路径取回上下文，过长的 Worker 汇报会被截断并附上读取指针。对外发消息的回复工具只挂在 Router 上，Worker 只能发一条简短的接单确认。作者强调，成本对比数据来自合成负载（约 300 条消息、约 20 个工作请求，任务执行用耗时 stub 模拟，数据集未公开），只能看方向性影响，不能用来给各家产品的真实成本排名。

rss · V2EX · 11月26日 08:25

**「背景」** dsh-superagent 是 DeepSeek 于 10 月 31 日在 GitHub 以 MIT 许可开源的主动式编码 agent，作为 DeepSeek Harness 的 bundle 发布，面向单个 GitHub 仓库，把 GitHub 与飞书请求转化为 pull request。该帖作者正是基于这份原型代码，梳理其 router（代码中称 orchestrator）与 worker 的分工，并对照 Grok Bot、Claude Duet 等常驻 agent 的结构。

**「对开发者的参考」** 作者给出的消融实验显示，去掉“已订阅线程的事件直通 Worker”后，任务完成时间不变，但 Router 的决定次数增加约 30%，缓存读取量从 2323 万 token 涨到 3177 万，增幅约 37%；吞吐测试中，需要决定的 Trigger 到达速率从每分钟约 1 条升到约 40 条时，平均批次大小从 1.0 升到 2.8，单个决定分摊的推理时间从 6.4 秒降到 1.6 秒。作者还列出自己在类似系统中遇到的三个问题：同频道兄弟任务撞车、协调层直接回复导致掉出追踪链、汇报合批换取延迟，可供构建 always-on agent 的开发者参考。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://github.com/deepseek-ai/dsh-superagent-prototype">GitHub - deepseek -ai/ dsh - superagent - prototype : Towards a More...</a></li>
<li><a href="https://www.datastudios.org/post/deepseek-dsh-superagent-mit-proactive-coding-agent-github-feishu">DeepSeek dsh - superagent : MIT-licensed proactive coding agent for...</a></li>
<li><a href="https://aicoder.com/news/news-20261031-deepseek-dsh-superagent-prototype-proactive-coding-agent-router-worker-mit">DeepSeek Harness team open - sources dsh - superagent ... — AICoder</a></li>

</ul>
</details>

**标签**: `#agents`, `#LLM orchestration`, `#open source`, `#architecture`, `#DeepSeek`

---

<a id="item-tech-news-14"></a>
### [Rigdepot 0.1.0：统一管理团队 Skill、MCP 并同步到多个 AI 编码工具](https://www.v2ex.com/t/1260026#reply0) ⭐️ 7.0/10

Rigdepot 0.1.0 以 Apache-2.0 协议开源，是一个用 Go 编写的 CLI，把团队的 Skill、MCP 配置、工作流和 Agent 集中放在一个 Git 仓库里，再由 \`rgd sync\` 写入本机检测到的 Claude Code、Codex 和 OpenCode。同一份资源会由适配器翻译成各工具自己的格式，例如 MCP 分别落到 Claude Code 的 \`~/.claude.json\`、Codex 的 \`config.toml\` 和 OpenCode 的 \`mcp.servers\`；工具不支持的形态会降级并提示，比如 Codex 没有斜杠命令时，工作流以同名 Skill 下发。作者强调改动是保守的：\`rgd sync --plan\` 在临时目录真实执行写入再 diff，只增删带 \`rgd-\` 前缀的条目，JSON/JSONC/TOML 保留格式修改并先备份，\`rgd uninstall\` 按本机清单回滚。项目还附带可选的自部署服务端 \`rgd-server\`，提供成员与角色、OIDC/GitLab 登录、从 Git 定时导入资源、密钥按设备公钥 HPKE 下发和哈希链审计。已知限制包括 Windows 版本仍为预览、安装包未签名。

rss · V2EX · 11月26日 07:19

**「背景」** Rigdepot 要解决的是多款 AI 编码工具各自维护 Skill 与 MCP 配置、难以统一的问题。此前已有同类尝试：agent-config-sync 以 Claude Code 为唯一事实来源，通过 vsync 和 git hooks 把技能与 MCP 服务器同步到 OpenCode、Codex、Cursor；aisync 则扫描各工具的技能目录，汇总到统一存储后再链接回去。Rigdepot 的差异在于把资源集中放在一个 Git 仓库，由适配器按各工具格式写入，并强调只改动带 rgd- 前缀的条目、保留原文件格式、写入前备份。

**「对使用者的影响」** 对同时使用多个 AI 编码工具的团队，这意味着 MCP 和 Skill 只需维护一份，不必在每个工具里按不同格式重复配置。但 0.1.0 会直接修改其他工具的全局配置文件，使用者应先运行 \`rgd sync --plan\` 查看差异；在没有终端且未加 \`--yes-global\` 时，工具不会写入任何字节。Windows 用户需注意该版本仍是预览且部分测试未通过，安装包也未签名。

**「社区讨论」** 该帖暂无评论，作者在文末提问：各团队目前如何管理 Skill 和 MCP。帖子还提到项目代码由 AI Agent 编写、评审和发版，人负责方向与决策，设计文档中的规则（如“不静默改全局配置”）有测试保障。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://github.com/liamdmcgarrigle/agent-config-sync">GitHub - liamdmcgarrigle/agent-config-sync: Agent skill for ...</a></li>
<li><a href="https://github.com/hzpeng57/aisync">GitHub - hzpeng57/aisync: Sync AI tool skills and MCP configs ...</a></li>

</ul>
</details>

**标签**: `#mcp`, `#ai-coding-tools`, `#developer-tools`, `#open-source`, `#configuration-management`

---

<a id="item-tech-news-15"></a>
### [Rustc 下一代 trait solver 的性能优化实践](https://donsz.nl/blog/optimizing-rustcs-next-trait-solver) ⭐️ 7.0/10

donsz.nl 于 2026 年 11 月 25 日发布了一篇由 jana 撰写的博客文章，主题是对 rustc 下一代 trait solver 的性能优化工作。该条目仅提供了 Lobste.rs 的评论链接，没有附带技术摘要或具体数据，因此文中涉及的优化手段、性能提升幅度和适用版本均无法从现有材料中核实。

rss · Lobsters · 11月25日 13:09

**「背景」** Rust 编译器正在用新一代 trait solver 替换现有的 trait 求解组件，目标是统一承担 trait 约束证明、关联类型规范化等类型系统工作。根据 Rust 官方文档，该求解器目前仍处于开发中（WIP），用户可通过 \`-Znext-solver\` 启用，而 rustc 开发者则需经 trait-system-refactor-initiative 同意后才应使用。

**「对使用者的影响」** 新 trait solver 目前仍处于开发中（WIP）状态，普通用户需通过 \`-Znext-solver\` 标志启用，而 rustc 开发者被建议在未咨询 trait-system-refactor-initiative 前不要使用它。Rust 项目已将新 trait solver 的性能优化列为持续性的编译器性能目标之一，因此这类优化工作最终会影响启用该求解器后的编译速度。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://doc.rust-lang.org/stable/nightly-rustc/rustc_next_trait_solver/solve/index.html">rustc_next_trait_solver::solve - Rust</a></li>
<li><a href="https://rustc-dev-guide.rust-lang.org/solve/trait-solving.html">Next-gen trait solving - Rust Compiler Development Guide</a></li>
<li><a href="https://goals.rust-lang.org/2025h1/next-solver.html">Next-generation trait solver - Rust Project Goals</a></li>
<li><a href="https://rustc-dev-guide.rust-lang.org/solve/trait-solving.html">Next-gen trait solving - Rust Compiler Development Guide</a></li>
<li><a href="https://goals.rust-lang.org/2026/compiler-performance-optimization.html">Compiler performance optimizations - Rust Project Goals</a></li>
<li><a href="https://doc.rust-lang.org/stable/nightly-rustc/rustc_next_trait_solver/solve/index.html">rustc_next_trait_solver::solve - Rust</a></li>

</ul>
</details>

**标签**: `#rust`, `#compilers`, `#trait-solver`, `#performance-optimization`, `#type-systems`

---

<a id="item-tech-news-16"></a>
### [研究人员以每个 3 美元接管美国财政部子域名](https://www.intruder.io/research/taking-over-us-treasury-subdomains-for-3-each) ⭐️ 7.0/10

安全公司 Intruder 发布研究称，其研究人员通过子域名接管（subdomain takeover）方式，以每个 3 美元的成本接管了属于美国财政部的若干子域名。该发现属于基础设施安全领域的具体漏洞案例，涉及 DNS 配置遗留问题。目前提供的条目仅为链接摘要，未包含受影响的子域名数量、具体域名、接管持续时间及是否已通知相关机构等技术细节，相关结论尚待原文核实。

rss · Lobsters · 11月25日 10:27

**「背景」** 子域接管是指某个子域名的 DNS 记录仍指向已不再由原组织控制的资源（例如云服务商回收后重新分配的 IP 地址），攻击者只要取得该资源即可控制该子域。据外部报道，Intruder 的研究人员正是利用美国财政部遗留的 DNS 记录，通过循环申请被回收的 AWS 弹性 IP 地址，以每个约 3 美元的成本接管了五个子域，且未报告政府数据被窃取。

**「影响」** 该案例表明，仅靠回收云服务商重新分配的 IP 地址即可接管政府域名下的子域，因此使用云主机的组织应定期核查 DNS 记录，及时删除指向已释放 IP 的悬空条目。据 HackRead 报道，此次共涉及五个美国财政部子域，未报告政府数据被窃取。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.intruder.io/research/taking-over-us-treasury-subdomains-for-3-each">Taking over US Treasury subdomains for $3 each - intruder.io</a></li>
<li><a href="https://hackread.com/researchers-take-over-5-us-treasury-subdomains/">Researchers Take Over 5 US Treasury Subdomains for About $3 Each</a></li>
<li><a href="https://www.scworld.com/brief/security-researchers-identify-dangling-dns-records-on-us-treasury-subdomains">Security researchers identify dangling DNS records on US ...</a></li>
<li><a href="https://www.intruder.io/research/taking-over-us-treasury-subdomains-for-3-each">Taking over US Treasury subdomains for $3 each - intruder.io</a></li>
<li><a href="https://hackread.com/researchers-take-over-5-us-treasury-subdomains/">Researchers Take Over Five US Treasury Subdomains for About ...</a></li>

</ul>
</details>

**标签**: `#security`, `#subdomain-takeover`, `#dns`, `#vulnerability-research`, `#government-infrastructure`

---

<a id="item-tech-news-17"></a>
### [高通 Oryon 3 登顶：Chips and Cheese 架构分析](https://chipsandcheese.com/p/qualcomms-oryon-3-reaches-the-top) ⭐️ 7.0/10

Chips and Cheese 于 2026 年 11 月 26 日发布了一篇针对高通 Oryon 3 CPU 核心的微架构分析文章，标题称其“登顶”。但本次提供的条目仅为指向 Lobste.rs 讨论页的链接，未包含任何具体技术细节、测试数据或性能结论，因此无法核实该核心在何种基准、何种功耗条件下取得何种成绩。

rss · Lobsters · 11月26日 08:02

**「背景」** Oryon 是 Qualcomm 为 Snapdragon 处理器自研的 CPU 核心架构。据 Chips and Cheese 的文章，第三代 Oryon（文中简称 Oryon 3）被用于 Snapdragon X2 Elite Extreme，使该平台的 CPU 性能足以挑战 x86-64 竞品。TechPowerUp 的报道则指出，Qualcomm 跳过了“Oryon 2”的命名，Oryon 3 将接替 Snapdragon X Plus 系列芯片。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://chipsandcheese.com/p/qualcomms-oryon-3-reaches-the-top">Qualcomm ’s Oryon 3 Reaches the Top - by Chester Lam</a></li>
<li><a href="https://www.techpowerup.com/329059/qualcomm-bypasses-oryon-2-for-more-powerful-third-gen-ai-pc-chips">Qualcomm Bypasses &quot; Oryon 2&quot; for More Powerful... | TechPowerUp</a></li>

</ul>
</details>

**标签**: `#hardware`, `#cpu-architecture`, `#qualcomm`, `#chips`, `#performance-analysis`

---

<a id="item-tech-news-18"></a>
### [PICK：用形式语言包含关系让用户校验 GenAI 生成的正则表达式](https://www.siddharthaprasad.com/papers/pafk-pick.pdf) ⭐️ 7.0/10

一篇研究论文提出，让生成式 AI 一次生成多个候选表达式，再借助形式语言包含关系自动构造能区分这些候选的具体场景，由用户对这些场景进行评分，从而在有限交互中完成有意义的“人在回路”校验。作者实现了工具 PICK，并将其应用于正则表达式、线性时序逻辑和访问控制策略三种形式语言。论文摘要称，实验显示 PICK 相比直接向用户展示候选表达式有显著改进，还能识别出“没有任何候选符合需求”的情况。目前公开信息仅为摘要，具体实验规模与量化结果尚未披露。

rss · Lobsters · 11月26日 06:35

**「背景」** 开发者常用大模型生成正则表达式等程序组件，但规格描述不清、用户对输出语言理解不足或模型本身存在系统性误解，都可能引入难以察觉的缺陷。因此，生成式 AI 的负责任使用需要人工审核，而审核过程既要有效，又不能给用户造成过重负担。

**「影响」** 对使用 AI 生成正则、时序逻辑或访问控制策略的开发者而言，这一方法把校验从“阅读并理解表达式”转为“判断具体场景是否符合预期”，并能在候选全部不匹配时给出提示。不过论文只覆盖具备所需形式性质的三类受限语言，尚不适用于一般程序合成。

**标签**: `#human-in-the-loop`, `#generative-ai`, `#formal-languages`, `#regex`, `#software-verification`

---

## 财经新闻

<a id="item-finance-news-1"></a>
### [美商务部被曝施压英特尔交出 10%股权](https://www.wired.com/story/inside-trumps-demands-to-another-chips-ceo/) ⭐️ 8.0/10

据 WIRED 报道，法庭文件显示，2025 年 8 月美国商务部律师在与英特尔首席财务官通话时表示这并非“谈判”，并称总统希望周五宣布协议；几天后英特尔董事会交出了美方要求的股份。特朗普随后宣布美国政府“完全拥有并控制英特尔 10%的股份”，且未为此付费，这批股份现值约 110 亿美元。

telegram · zaihuapd · 11月25日 13:25

**「背景」** 2025 年 8 月 22 日，美国商务部长卢特尼克宣布政府已取得英特尔 10%的股份，特朗普同日称这是让政府扩大对芯片行业影响力的举措（tool-1-1、tool-1-3）。英特尔称，这笔股权由《芯片与科学法案》下尚未支付的 57 亿美元拨款和“安全飞地”项目的 32 亿美元拨款出资（tool-1-2）。

**「影响」** 若报道属实，美国政府成为英特尔最大股东，将直接改变这家芯片制造商的公司治理结构：政府作为股东可影响董事会决策，而现有股东则面临股权被稀释。据外部报道，该笔约 9.9%的股份与英特尔此前获得的约 89 亿美元联邦半导体拨款相关，并已引发股东派生诉讼，考验政府持股的治理边界。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.cnbc.com/2025/08/22/intel-goverment-equity-stake.html">U.S. takes 10% stake in Intel Trump expands control of ... - CNBC</a></li>
<li><a href="https://www.intel.com/content/www/us/en/newsroom/news/corporate/intel-and-trump-administration-reach-historic-agreement.html">Intel and Trump Administration Reach Historic Agreement to ...</a></li>
<li><a href="https://apnews.com/article/trump-intel-us-equity-stake-b538526b6698f7ebd31e99effd727693">Trump says US to get stake in Intel | AP News</a></li>
<li><a href="https://www.dandodiary.com/2026/03/articles/shareholders-derivative-litigation/intel-derivative-suit-tests-governance-implications-of-government-equity-stakes/">Intel Derivative Suit Tests Governance Implications of ...</a></li>
<li><a href="https://www.softwareseni.com/us-government-equity-stakes-in-intel-industrial-policy-or-nationalisation/">US Government Equity Stakes in Intel: How a $8.9B Grant ...</a></li>

</ul>
</details>

**标签**: `#semiconductors`, `#US industrial policy`, `#Intel`, `#government equity stake`, `#corporate governance`

---

<a id="item-finance-news-2"></a>
### [美国拟对 14 个贸易伙伴加征新关税，中国面临额外 20%](https://www.cnbc.com/2026/11/25/us-tariffs-trump-section-301.html) ⭐️ 8.0/10

美国政府拟依据 1974 年《贸易法》第 301 条，对中国、欧盟、日本、印度等 14 个贸易伙伴加征新关税，理由是这些国家存在制造业结构性产能过剩。中国将在 2018 年已加征的 25%关税之上再加征 20%；若中国未遵守 2025 年 10 月在韩国釜山达成的贸易休战协议，对华新关税可能升至 40%。

telegram · zaihuapd · 11月25日 13:59

**「背景」** 美国贸易代表办公室（USTR）已于 2026 年 3 月自行启动对 16 个经济体的第 301 条调查，本次拟议关税是其中 14 个经济体调查的后续裁定。美中两国领导人于 2025 年 10 月在韩国釜山会晤并达成为期一年的贸易休战，该协议是此次对华关税可能升至 40%这一条件的参照。

**「可能影响」** 若该提案落地，从中国、欧盟、日本、印度等 14 个贸易伙伴进口制成品的企业将面临更高成本，其中中国商品在原有 25%关税上再加 20%，相关成本可能沿供应链传导至美国消费者。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://ustr.gov/about/policy-offices/press-office/press-releases/2026/november/ustr-makes-determinations-and-proposes-actions-14-section-301-investigations-relating-structural">USTR Makes Determinations and Proposes Actions in 14 Section ...</a></li>
<li><a href="https://www.hklaw.com/en/insights/publications/2026/11/ustr-proposes-tariffs-following-14-section-301">USTR Proposes Tariffs Following 14 Section 301 Manufacturing ...</a></li>
<li><a href="https://en.wikipedia.org/wiki/Busan_Summit">Busan Summit - Wikipedia</a></li>
<li><a href="https://www.cfr.org/articles/united-states-and-china-agree-trade-truce">United States and China Agree to Trade Truce | Council on ...</a></li>
<li><a href="https://www.cnbc.com/2026/11/25/us-tariffs-trump-section-301.html">U . S . unveils new Section 301 tariffs targeting China , EU and others</a></li>

</ul>
</details>

**标签**: `#US tariffs`, `#Section 301`, `#US-China trade`, `#trade policy`, `#manufacturing overcapacity`

---