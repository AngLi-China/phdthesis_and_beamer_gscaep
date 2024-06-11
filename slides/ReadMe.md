# 中物院毕业答辩 beamer 模板

作者：李昂

邮箱：ang.li.1997@icloud.com

日期：2024年6月11日

github 仓库地址: https://github.com/AngLi-China/phdthesis_and_beamer_gscaep.git

coding 仓库地址: https://only842170670.coding.net/public/person/phdthesis_and_beamer_gscaep/git/files

coding 仓库 clone 专用地址: https://e.coding.net/only842170670/person/phdthesis_and_beamer_gscaep.git

## 环境依赖 for Mac
1. MikTeX 22.1
2. VS Code 1.88.1
3. Code的插件：LaTeX Workshop (James-Yu.latex-workshop)

## 环境依赖 for Windows
1. MikTeX 24.1
2. VS Code 1.88.1
3. Code的插件：LaTeX Workshop (James-Yu.latex-workshop)

> 此处的版本号为测试过的版本，理论上大于此版本都可以运行，低于此版本不保证能运行。

> 此处作者推荐使用 VS Code，不过理论上支持 miktex 的系统均可运行

## 使用步骤：生成 PDF 文件
1. 使用 VS Code 打开 slides 文件夹
2. 根据需要编辑 TeX 文件，一般是目录结构描述中标记了 `【】` 的文件
3. 打开 main.tex，并点击右上角的 Build LaTeX project（绿色三角形）

> 第二步的Build命令可以用命令行 `./run latexmk-xe` 调用脚本 `run.cmd` 中的编译命令，此方法适用于非 VS Code 用户。（Mac用户可以使用相同的命令行调用脚本 `run` 中的编译命令）

> `./run latexmk-xe` 命令中会自动调用 `make`，完成 `fig/tikz` 中 `tikzpicture` 的编译

> 有些错误不自动报错时，可以调用 `./run xelatex` 查看错误信息。

> 可以调用 `./run clean` 清理中间文件。

## 目录结构描述
| 文件名                |           作用           |
| :-------------------- | :----------------------: |
| ReadMe.md             |          此文件          |
| main.pdf              |        生成的论文        |
| main.synctex.gz       |    双向导航的辅助文件    |
| main.tex              |     【主 TeX 文件 】     |
| run                   |        Mac 的脚本        |
| run.cmd               |      Windows 的脚本      |
| bm.docx               |       beamer 模板        |
| reference.bib         |  【参考文献的 bib 库】   |
| .vscode/settings.json |    VS Code 的配置文件    |
| ta*/ta_*.tex          |         【表格】         |
| temp/                 | 存放中间文件的临时文件夹 |