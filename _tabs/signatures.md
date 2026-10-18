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

<div class="signature-hero">
  <p class="signature-total">中国の Bilibili と QQ コミュニティから、合計 <strong>{{ total }}</strong> 名が参加しました。</p>
  <p class="signature-meta">Bilibili {{ bili.size }} 名 ・ QQ {{ qq.size }} 名 ・ 順不同・敬称略</p>
  <p class="signature-badge">
    <img src="https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fhunterscn.github.io%2Fplayernum.json&amp;query=%24.playernum&amp;label=%E5%85%B1%E5%90%8C%E7%BD%B2%E5%90%8D%E8%80%85%E6%95%B0&amp;color=blue" alt="共同署名者数" loading="lazy">
  </p>
</div>

<figure class="signature-figure">
  <img src="/image/players.png" alt="ワイルズ中国プレイヤー総意見フィードバック 参加者一覧" loading="lazy">
  <figcaption>参加者一覧（順不同・敬称略）</figcaption>
</figure>

<div class="signature-groups">
  <section class="signature-group">
    <h2>Bilibili <span>{{ bili.size }} 名</span></h2>
    <p class="signature-names">{{ bili | join: " · " }}</p>
  </section>
  <section class="signature-group">
    <h2>QQ <span>{{ qq.size }} 名</span></h2>
    <p class="signature-names">{{ qq | join: " · " }}</p>
  </section>
</div>

<p class="signature-note">掲載名に誤りや重複がある場合は、<a href="https://github.com/huntersCn/huntersCn/issues">GitHub</a> よりご連絡ください。</p>

{% include reading-nav.html %}
