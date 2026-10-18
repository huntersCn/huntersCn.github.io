# モンスターハンターワイルズ 中国プレイヤー有志フィードバック

《怪物猎人：荒野》中国玩家反馈项目的网页版。使用 [Chirpy](https://github.com/cotes2020/jekyll-theme-chirpy) 构建，
把纸质版正文与网页版细节合并为同一套阅读结构。

## 页面结构

| 路径 | 内容 |
| --- | --- |
| `/` | 项目首页 |
| `/ja/` | 日文正文：难度、终盘、通用动作、画面与 UI |
| `/zh/` | 中文正文 |
| `/ja/bugs/`、`/zh/bugs/` | 问题与复现记录（B-01～B-07） |
| `/ja/proposals/`、`/zh/proposals/` | 独立改进方案（P-01～P-19） |
| `/weapons/` | 14 种武器索引 |
| `/ja/weapons/...`、`/zh/weapons/...` | 每种武器单独一页 |
| `/signatures/` | 共同署名者名单 |

正文中的 `B-xx` 角标跳到问题记录，`P-xx` 跳到独立改进方案；本作的解决方向直接写在正文中；长期设计集中在文末折叠，默认关闭。武器页把网页版条目与纸质版武器反馈合并。
纸质版不再单独提供 PDF 页面，主要内容已经进入正文。

## 本地运行

需要 **Ruby 3.4+** 与 **Bundler**。Windows 建议使用
[RubyInstaller with Devkit](https://rubyinstaller.org/downloads/)，安装时勾选 MSYS2 开发工具链。

### Windows

```powershell
cd huntersCn.github.io
.\tools\serve.cmd
```

首次运行会自动安装依赖，然后在 <http://127.0.0.1:4000> 启动带热更新的预览。
只构建静态文件：

```powershell
.\tools\build.ps1
```

### macOS / Linux

```bash
bundle config set --local path vendor/bundle
bundle install
bundle exec jekyll serve --livereload
```

## 内容维护

- 正文：`_tabs/ja.md`、`_tabs/zh.md`
- 问题记录：`ja/bugs.md`、`zh/bugs.md`
- 独立改进方案：`ja/proposals.md`、`zh/proposals.md`
- 武器页：`ja/weapons/`、`zh/weapons/`
- 签名数据：`_data/signatories.yml`
- 术语对照：`tools/TERMS.md`
- 标题图标：`icons/`，对应关系见 `tools/ICON-MAP.md`

正文用 `B-xx` 角标连接问题记录；长期设计集中在正文末尾的 `<details>` 中，默认关闭。
修改问题时请保留 `b-xx` 的 `id`，否则角标会失效。

## 部署

推送到 `main` 后由 `.github/workflows/pages-deploy.yml` 构建并发布到 GitHub Pages。
在仓库 **Settings → Pages → Build and deployment** 中选择 **GitHub Actions**。

如果部署在子路径，请在 `_config.yml` 设置 `baseurl`。

## 说明

本网站是中国玩家自发整理的非官方反馈，与 CAPCOM 无隶属关系。
`MONSTER HUNTER WILDS` 是 CAPCOM CO., LTD. 的商标。
网站模板与静态资源遵循其原始 MIT 许可证；反馈文字与截图版权归原作者所有。
