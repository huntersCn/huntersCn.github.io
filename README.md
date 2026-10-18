# モンスターハンターワイルズ 中国プレイヤー有志フィードバック

《怪物猎人：荒野》中国玩家反馈企划的网页版。使用 [Chirpy](https://github.com/cotes2020/jekyll-theme-chirpy) 模板构建，
包含日语 / 中文的完整不具合报告、设计建议、共同署名名单，以及纸质版 PDF 的预留入口。

## 页面结构

| 路径 | 内容 |
| --- | --- |
| `/` | 项目首页（日语为主，附中文入口） |
| `/ja/bug/` | 日本語：不具合・改善フィードバック |
| `/ja/suggestions/` | 日本語：ゲームデザイン提案 |
| `/zh/bug/` | 中文：问题与意见反馈 |
| `/zh/suggestions/` | 中文：设计与系统建议 |
| `/signatures/` | 共同署名者名单（原项目 `players.png` 与文字名单） |
| `/paper/` | 印刷版说明与 PDF 下载入口 |

报告正文位于 `ja/`、`zh/`，原始截图位于 `image/`（已转为 WebP 以加快网页加载，文件名不变）。
名单数据在 `_data/signatories.yml`。

## 本地运行

需要 **Ruby 3.4+** 与 **Bundler**。Windows 建议使用
[RubyInstaller with Devkit](https://rubyinstaller.org/downloads/)，安装时勾选 MSYS2 开发工具链。

### Windows（推荐）

双击或在终端运行：

```powershell
.\tools\serve.cmd
```

首次运行会自动 `bundle install`，然后在 <http://127.0.0.1:4000> 启动带热更新的本地预览。

也可以手动执行：

```powershell
bundle config set --local path vendor/bundle
bundle install
bundle exec jekyll serve --livereload
```

### macOS / Linux

```bash
bundle config set --local path vendor/bundle
bundle install
bundle exec jekyll serve --livereload
# 或使用模板自带脚本
bash tools/run.sh
```

### 只构建静态文件

```powershell
.\tools\build.ps1
# 输出目录：_site/
```

## 纸质版 PDF

1. 将最终 PDF 放到 `assets/files/`（目录不存在时新建）。
2. 在 `_config.yml` 中填写：

```yaml
paper:
  pdf_url: "/assets/files/feedback-print.pdf"
  updated: "2026-10-18"
```

3. `/paper/` 页面会自动显示下载按钮；未填写时显示“准备中”。

> 纸质版的 Word/DOCX 源文件不会直接发布，建议先导出为 PDF 再上传。

## 部署

仓库已包含 `.github/workflows/pages-deploy.yml`，推送到 `main` 后由 GitHub Actions
构建并发布到 GitHub Pages。也可以在仓库的 **Settings → Pages → Build and deployment**
中选择 **GitHub Actions**。

如果部署在子路径（例如项目站点而非 `hunterscn.github.io`），请在 `_config.yml` 中设置
`baseurl`，并在 Actions 中使用对应的 `base_path`。

## 内容维护

- 更新报告：直接编辑 `ja/*.md`、`zh/*.md`；标题、语言、永久链接在文件头部的 front matter 中。
- 新增图片：放到 `image/`，在 Markdown 中使用 `/image/文件名.webp`。
- 更新名单：编辑 `_data/signatories.yml`。
- 修改站点标题 / 描述 / 社交预览图：编辑 `_config.yml`。
- 标题图标：`icons/` 中是从游戏解包 UI 裁切的图标，对应关系与裁切来源见
  [`tools/ICON-MAP.md`](tools/ICON-MAP.md)。图标只替换原本带 emoji 的标题。

## 说明

本企划是中国玩家自发组织的非官方反馈，与 CAPCOM 无隶属关系。
`MONSTER HUNTER WILDS` 是 CAPCOM CO., LTD. 的商标。
网站模板与静态资源遵循其原始 MIT 许可证；报告文字与截图版权归原作者所有。
