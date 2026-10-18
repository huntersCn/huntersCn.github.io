# 标题图标对应表

只替换报告中原本使用 emoji 的标题，不替换正文，也不额外给每个小节加图标。

| 标题（中 / 日） | 图标 | 来源（游戏内 UI） |
| --- | --- | --- |
| 问题错误反馈 / 問題・不具合フィードバック | `icons/issues.png` | `iconFont_KB00_IMLM4.PNG` 感叹号 |
| 设计改动意见 / 設計変更意見 | `icons/design.png` | `tex030300_0_IMLM4.png` 书本 |
| 怪物相关 / モンスター関連 | `icons/monster.png` | `tex_EmIcon_00/EM0001` |
| 玩家相关 / プレイヤー関連 | `icons/player.png` | `tex000201_40_IMLM4.png` 剑盾 |
| 据点/设施 / 拠点・施設 | `icons/base.png` | `tex000201_40_IMLM4.png` 帐篷 |
| 其他 / その他 | `icons/other.png` | `tex030300_0_IMLM4.png` 文件页 |
| 任务 / クエスト | `icons/quest.png` | `tex020202_0_IMLM4.png` 沙漏 |
| 通用 / 汎用 | `icons/other.png` | 同上（复用） |
| 用户界面 / ユーザーインターフェース | `icons/ui.png` | `tex020500_0_IMLM4.png` 菜单框 |
| 水下狩猎 / 水中の狩猟操作 | `icons/water.png` | `tex020902_1_IMLM4.png` 水滴 |
| 技能 / スキル | `icons/skill.png` | `tex000201_40_IMLM4.png` 宝石 |
| 随从猫 / オトモアイルー | `icons/palico.png` | `tex020902_0_IMLM4.png` 艾露猫 |
| 支援猎人 / 支援ハンター | `icons/support.png` | `tex000201_40_IMLM4.png` 盾 |
| 鹭鹰龙 / セクレト | `icons/seikret.png` | `tex_EmIcon_00/EM0022` |
| 系统 / システム | `icons/system.png` | `tex000201_40_IMLM4.png` 砥石/工具 |
| 画面表现 / 画面表現 | `icons/graphics.png` | `tex020902_1_IMLM4.png` 闪光 |
| 网络 / ネットワーク | `icons/network.png` | `tex020400_0_IMLM4.png` Wi-Fi |
| 原野 / フィールド | `icons/field.png` | `tex020700_0_IMLM4.png` 放大镜 |

## 说明

- 图标统一输出为 96×96 透明 PNG，网页中按 `1em` 左右显示。
- 白色线稿图标在浅色模式下会反相为深色（`gi-invert`），深色模式下保持白色。
- 图标放在 `icons/`，不参与 Jekyll 的 Markdown 渲染，只作为静态资源复制。
- 如果后续要换图标，保持文件名不变即可，不需要改正文。
