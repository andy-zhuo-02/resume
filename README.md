# 个人简历

基于 [hijiangtao/resume](https://github.com/hijiangtao/resume/) 调整的中文 LaTeX 简历，使用 XeLaTeX 编译。采用鸿蒙字体、单栏正文、北大红章节标题、浅色分隔线和右上角照片区。条目标题、正文与辅助信息分别设置层级，日期统一右对齐。

## 编辑内容

- `resume-zh_CN.tex`：姓名、联系方式及简历内容。当前内容已按个人主页整理，后续可直接更新各小节。
- `resume.cls`：颜色、字号、页边距、标题及照片框样式。
- `fonts/HarmonyOS/`：当前使用的 HarmonyOS Sans / HarmonyOS Sans SC 常规和粗体字体。
- `zh_CN-HarmonyOS.sty`：鸿蒙字体中文配置；字体从项目目录加载，不依赖系统安装。
- `resume.preview.png`：当前模板预览。

当前内容包括教育与研究方向、学术论文、开源项目、代表性荣誉与竞赛、教学经历。信息来自 [个人主页](https://andy-zhuo-02.github.io/) 及其链接的论文、项目仓库；电话沿用已有源码。本科教育与所选奖项补充自 2023 年本科简历《卓安简历-北京大学.pdf》，成绩排名注明为本科前三年；博士入学时间、预计毕业时间、专业、导师及论文与项目贡献由本人补充。项目发布时间不代表参与起止时间。

## 添加照片

个人照片使用项目目录下的 `images/personal_photo.jpg`。推荐使用 3:4 的竖版照片，照片区最大尺寸为 2.025 × 2.7 cm，图片会按比例缩放。

如果使用 PNG，把源码中的 `\resumephoto{images/personal_photo.jpg}` 改成 `\resumephoto{images/personal_photo.png}`。没有照片时自动显示占位框，不影响编译。

如果不需要照片，删除页眉右侧的 `minipage`，并将左侧宽度从 `0.81\textwidth` 改为 `\textwidth`。

## 编译

在项目目录运行：

```sh
xelatex -interaction=nonstopmode -halt-on-error resume-zh_CN.tex
xelatex -interaction=nonstopmode -halt-on-error resume-zh_CN.tex
```

输出为 `resume-zh_CN.pdf`。也可将整个项目上传至 Overleaf，并选择 XeLaTeX 编译器。

常见 LaTeX 中间文件及生成的简历 PDF 已列入 `.gitignore`。清理中间文件时保留 `.tex`、`.cls`、`.sty`、字体、照片和最终 PDF。

## License

沿用 [MIT License](LICENSE)。字体不受该许可证覆盖。

## 底部二维码

个人网站、GitHub 和 Gitee 的二维码使用 LaTeX 的 qrcode 包直接生成。更新链接时，同步修改对应二维码和标签的 URL；三个二维码保留白色静区，标签可点击。
