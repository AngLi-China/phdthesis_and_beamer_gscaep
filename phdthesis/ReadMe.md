# 中物院毕业论文模板

作者：李昂

邮箱：ang.li.1997@icloud.com

日期：2024年6月11日

致谢：所依赖的前模板的不具名作者

github 仓库地址: https://github.com/AngLi-China/phdthesis_and_beamer_gscaep.git

coding 仓库地址: https://only842170670.coding.net/public/person/phdthesis_and_beamer_gscaep/git/files

coding 仓库 clone 专用地址: https://e.coding.net/only842170670/person/phdthesis_and_beamer_gscaep.git

## 环境依赖 for Mac
1. MikTeX 22.1
2. make 3.81
3. VS Code 1.88.1
4. Code的插件：LaTeX Workshop (James-Yu.latex-workshop)
5. (用于支持转 word) Pandoc 3.1.12.3

## 环境依赖 for Windows
1. MikTeX 24.1
2. make 4.4.1 (mingw32-make)
3. VS Code 1.88.1
4. Code的插件：LaTeX Workshop (James-Yu.latex-workshop)

> 此处的版本号为测试过的版本，理论上大于此版本都可以运行，低于此版本不保证能运行。

> 此处作者推荐使用 VS Code，不过理论上支持 miktex 的系统均可运行

## 使用步骤：生成 PDF 文件
1. 使用 VS Code 打开 phdthsis 文件夹
2. 根据需要编辑 TeX 文件，一般是目录结构描述中标记了 `【】` 的文件
3. 打开 main.tex，并点击右上角的 Build LaTeX project（绿色三角形）

> 第二步的Build命令可以用命令行 `./run latexmk-xe` 调用脚本 `run.cmd` 中的编译命令，此方法适用于非 VS Code 用户。（Mac用户可以使用相同的命令行调用脚本 `run` 中的编译命令）

> `./run latexmk-xe` 命令中会自动调用 `make`，完成 `fig/tikz` 中 `tikzpicture` 的编译

> 有些错误不自动报错时，可以调用 `./run xelatex` 查看错误信息。

> 可以调用 `./run clean` 清理中间文件。

## 使用步骤：生成 Word 文件

**目前仅支持 Mac 系统，理论上 Windows 也支持，请自行研究 Windows 版本 Pandoc 的用法，欢迎给我提交 PR**

1. 支持命令 `./run word`
2. 打开根目录下的 `main.docx`

## 目录结构描述
| 文件名                            |           作用           |
| :-------------------------------- | :----------------------: |
| ReadMe.md                         |          此文件          |
| main.pdf                          |        生成的论文        |
| main.synctex.gz                   |    双向导航的辅助文件    |
| main.tex                          |     【主 TeX 文件 】     |
| run                               |        Mac 的脚本        |
| run.cmd                           |      Windows 的脚本      |
| 中物院毕业论文模版.docx           |      中物院官方模板      |
| .vscode/settings.json             |    VS Code 的配置文件    |
| appendix/*.tex                    |       【附录A-D】        |
| chapter*/chapter*.tex             |    【第*章的主文件 】    |
| chapter*/ta_*.tex                 |    【第*章中的表格】     |
| extra/abstract.tex                |         【摘要】         |
| extra/acknowledgements.tex        |         【致谢】         |
| extra/Authorization.tex           |    独创性声明和授权书    |
| extra/cover.tex                   |         【封面】         |
| extra/publications.tex            |    【论文及其他成果】    |
| extra/reference.bib               |  【参考文献的 bib 库】   |
| extra/setup/content.tex           |           目录           |
| extra/setup/Definition.tex        |         一些定义         |
| extra/setup/format.tex            |        格式的定义        |
| extra/setup/GBT7714-2005NLang.bst |     参考文献样式文件     |
| extra/setup/package.tex           |         引用宏包         |
| extra/setup/reference.tex         |         参考文献         |
| extra/setup/type.tex              |      硕士、博士定义      |
| fig/                              |      【图像文件夹】      |
| fig/tikz/makefile                 |   Mac 的 makefile 文件   |
| fig/tikz/makefile-win             | Windows 的 makefile 文件 |
| fig/tikz/*.tex                    |   【tikz 的 TeX 文件】   |
| fig/tikz/*.pdf                    |         tikz图像         |
| temp/                             | 存放中间文件的临时文件夹 |