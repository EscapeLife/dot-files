# fd

> **[fd](https://github.com/chinanf-boy/fd-zh) - 一款开源的文件搜索神器**

`fd` 是一种简单ㄡ快速和用户友好的 `fd` 替代方案，虽然它不寻求复刻 `find` 所有强大的功能,但它提供了明智的 (自定的) `80%` 的用例。

- 方便语法: `fd PATTERN`而不是`find -iname '*PATTERN*'`
- 彩色终端输出 (类似于*ls*)
- 它是 *快速的* (见[基准](https://github.com/chinanf-boy/fd-zh#%E5%9F%BA%E5%87%86)下面)
- 聪明案例: 默认情况下；搜索不区分大小写；如果模式包含大写字符[\*](http://vimdoc.sourceforge.net/htmldoc/options.html#'smartcase'), 则切换为区分大小写字符
- 默认情况下,忽略隐藏的目录和文件
- 忽略匹配你 `.gitignore` 文件中的模式，默认情况
- 正则表达式
- `Unicode` 感知
- 命令输入量 _50%_ 优于[\*](https://github.com/ggreer/the_silver_searcher)`find` :-)
- 用类似于 `GNU` 穿行的语法，执行并行命令

![fzf](../images/tools/tools-fd.gif)

- **安装方式**

```bash
# Mac
$ brew install fd
$ brew upgrade fd

# Ubuntu
# https://github.com/sharkdp/fd/releases
$ sudo dpkg -i fd_7.0.0_amd64.deb
```

- **命令帮助**

```bash
$ fd -h
fd 8.2.1

USAGE:
    fd [FLAGS/OPTIONS] [<pattern>] [<path>...]

FLAGS:
    -H, --hidden            搜索隐藏的文件和目录
    -I, --no-ignore         不要忽略 .(git | fd)ignore 文件匹配
        --no-ignore-vcs     不要忽略.gitignore文件的匹配
    -s, --case-sensitive    区分大小写的搜索（默认值：智能案例）
    -i, --ignore-case       不区分大小写的搜索（默认值：智能案例）
    -F, --fixed-strings     将模式视为文字字符串
    -a, --absolute-path     显示绝对路径而不是相对路径
    -L, --follow            遵循符号链接
    -p, --full-path         搜索完整路径（默认值：仅限 file-/dirname）
    -0, --print0            用null字符分隔结果
    -h, --help              打印帮助信息
    -V, --version           打印版本信息

OPTIONS:
    -d, --max-depth <depth>        设置最大搜索深度（默认值：无）
    -t, --type <filetype>...       按类型过滤：文件（f），目录（d），符号链接（l），
                                   可执行（x），空（e）
    -e, --extension <ext>...       按文件扩展名过滤
    -x, --exec <cmd>               为每个搜索结果执行命令
    -E, --exclude <pattern>...     排除与给定glob模式匹配的条目
        --ignore-file <path>...    以.gitignore格式添加自定义忽略文件
    -c, --color <when>             何时使用颜色：never，*auto*, always
    -j, --threads <num>            设置用于搜索和执行的线程数
    -S, --size <size>...           根据文件大小限制结果。

ARGS:
    <pattern>    the search pattern, a regular expression (optional)
    <path>...    the root directory for the filesystem search (optional)
```

- **简单使用**

```bash
# 简单搜索
$ fd Hello
dir1/Hello.java

# 包含隐藏目录
$ fd -H Hello
.hg/HelloDjango.md

# 忽略大小写
$ fd -i Hello
dir1/Hello.java
hello_fd.md

# 严格匹配大小写
$ fd -s hello
hello_fd.md

# 返回绝对路径
$ fd -l hello
-rw-r--r--  1 escape  staff     0B  3  1 18:42 dir1/Hello.java

# 搜索内容包含路径
$ fd -p xun
dir1
dir1/Hello.java

# 包括 .gitignore 里的文件
$ fd -I java
dir1/Hello.java
```

- **高级技巧**

```bash
# 按深度
$ fd -d 3 rs
rust/fd_demo.rs

# 按文件类型
$ fd -t l
$ fd -t d
$ fd -t x

# 按扩展名
$ fd -e md
hello_fd.md

# 排除
$ fd -E '*s*'
dir1
dir1/Hello.java

# 按所有者
$ fd -l -o escape
drw-r--x--  5 escape  staff   160B  3  1 18:42 dir1
-rw-r--r--  1 escape  staff     0B  3  1 18:42 dir1/Hello.java

# 组合命令
$ fd java -X rm -rf
$ fd py -X vim

# 正则表达式
$ fd '^s.*'
$ fd -g 's*'
```
