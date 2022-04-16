# from

> https://github.com/dragove/nvim

# NEOVIM CONFIG WITH PURE LUA

## Prerequisite

```bash
# neovim 软件包
# bat rust编写的命令行高亮查看文本的工具
# ripgrep 支持正则搜索
# fd文件名搜索
# llvm的入门级介绍http://blog.fpliu.com/it/software/LLVM/Clang
# llvm 包含clang
scoop install neovim bat ripgrep fd llvm
# 各种lsp包
pnpm install cssmodules-language-server bash-language-server eslint pyright typescript typescript-language-server -g

# 字体安装
https://github.com/ryanoasis/nerd-fonts

# 包管理软件安装，根据不同操作系统选择不同的安装方式
# https://github.com/wbthomason/packer.nvim

# windows安装方式
git clone https://github.com/wbthomason/packer.nvim "$env:LOCALAPPDATA\nvim-data\site\pack\packer\start\packer.nvim"

# 安装完成后
nvim
:PackerSync
```

## LSP servers

I'm currently using Archlinux with [paru](https://github.com/Morganamilo/paru) as my AUR helper. For installing language servers, you can use scripts below.

```shell
sudo pacman -S lua-language-server
paru -S jdtls
```

## 快捷键汇总

```bash
# learn from https://www.zhihu.com/question/19863631
<leader> 是空格
"+p # 从系统的剪贴板中粘贴内容
# 以"+y 开始，可以加到f区去？
"+yy # 复制当前行到系统剪贴板
"+y$ # 复制当前位置到行位到系统剪贴板
ggvGy # 全选复制
dw # 删除这个词右侧
vbd # 删除这个词的左侧
H # 当前页的第一行
L # 当前页的最后一行
zc # 折叠
zC # 折叠全部
zo # 展开
zO # 展开全部
% # 跳转到匹配的括号

tab # 下一个补全内容
shift + tab # 上一个补全内容
option + command + 1 # 窗口1
ctrl + \  # 打开终端
# buffer
ctrl + h  # 循环模式的左buffer
ctrl + l  # 循环模式的右buffer
:%bd # 关闭全部buffer

# 文件树 https://github.com/kyazdani42/nvim-tree.lua
ctrl + n  # 目录
ctrl + x  # 向下切分
ctrl + v  # 水平切分
q # 关闭文件树
W # 折叠全部
[c # 到上一个有git修改的文件
]c # 到下一个有git修改的文件
K # 第一个儿子
J # 最后一个儿子
tab # 打开tab停留在文件树
p # 复制文件
x # 剪切文件
a # 创建文件
d # 删除文件
D # 放到回收站
y # 复制文件名
Y # 复制文件路径
# search
space + s + f # 文件搜索
space + s + g # 正则内容搜索
# lsp操作
gd
gD
K # 类似hover
space r n # 重命名

# 选中转化为大小写
gU # 大写
gu # 小写

# symbol 查看器：https://github.com/simrat39/symbols-outline.nvim

# vscode 单文件抢救
s + space

# debug
```
# 命令汇总

```bash
# 查看错误信息
:message 
:Gitsigns toggle_current_line_blame
```
