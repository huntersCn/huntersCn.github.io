---
title: 署名者
icon: fas fa-users
order: 4
permalink: /signatures/
layout: page
lang: ja-JP
---

{% assign bili = site.data.signatories.bilibili %}
{% assign qq = site.data.signatories.qq %}
{% assign total = bili.size | plus: qq.size %}

中国の Bilibili と QQ コミュニティから、合計 **{{ total }} 名**が参加しました（順不同・敬称略）。

<p><img src="https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fhunterscn.github.io%2Fplayernum.json&amp;query=%24.playernum&amp;label=%E5%85%B1%E5%90%8C%E7%BD%B2%E5%90%8D%E8%80%85%E6%95%B0&amp;color=blue" alt="共同署名者数" loading="lazy"></p>

![ワイルズ中国プレイヤー総意見フィードバック 参加者一覧](/image/players.png){: width="480" }

## Bilibili（{{ bili.size }} 名）

{{ bili | join: "、" }}

## QQ（{{ qq.size }} 名）

{{ qq | join: "、" }}

---

掲載名に誤りや重複がある場合は、[GitHub](https://github.com/huntersCn/huntersCn/issues) よりご連絡ください。

{% include reading-nav.html %}
