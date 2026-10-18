---
title: 署名者
icon: fas fa-users
order: 3
permalink: /signatures/
layout: page
lang: ja-JP
---

{% assign bili = site.data.signatories.bilibili %}
{% assign qq = site.data.signatories.qq %}
{% assign total = bili.size | plus: qq.size %}

中国の Bilibili と QQ コミュニティから、合計 **{{ total }} 名**が参加しました（順不同・敬称略）。

![ワイルズ中国プレイヤー総意見フィードバック 参加者一覧](/image/players.png){: width="480" }

## Bilibili（{{ bili.size }} 名）

{{ bili | join: "、" }}

## QQ（{{ qq.size }} 名）

{{ qq | join: "、" }}

---

掲載名に誤りや重複がある場合は、[GitHub](https://github.com/huntersCn/huntersCn/issues) よりご連絡ください。
