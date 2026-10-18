---
title: 印刷版
icon: fas fa-file-lines
order: 4
permalink: /paper/
layout: page
lang: ja-JP
---

このサイトは、配布用の印刷版に収まりきらなかった内容を補足するための完全版です。

## ダウンロード

{% if site.paper.pdf_url and site.paper.pdf_url != "" %}
[印刷版 PDF をダウンロードする]({{ site.paper.pdf_url | relative_url }})
{% if site.paper.updated %}<small>更新：{{ site.paper.updated }}</small>{% endif %}
{% else %}
> **PDF 準備中**  
> {{ site.paper.note_ja }}  
> {{ site.paper.note_zh }}
{% endif %}

## 紙面と Web の役割

### 印刷版

- 全体像を短時間で伝える要約版
- 主要な不具合・提案の要約
- 共同署名者と配布用リンク
- 配布しやすい枚数

### Web 版（このページ）

- 不具合報告・設計提案の全文
- すべてのスクリーンショットと比較画像
- 日本語・中国語の両言語
- 更新履歴と完全な署名者リスト

## 中文说明

纸质版用于现场分发与快速阅读，网页版保留全部条目、截图与两语全文。
PDF 完成后会在此处提供下载；在此之前，请直接使用[问题反馈](/zh/bug/)与[设计与系统建议](/zh/suggestions/)页面。
