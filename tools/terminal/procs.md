# procs

> **[procs](https://github.com/dalance/procs) - 增强版 ps 工具**

能够展示进程占用的 `TCP/UDP` 端口、`Docker` 容器名称等更多信息的命令行进程管理工具，以及轻松地按列排序和关键字过滤进程。

![procs](../images/tools/tools-procs.png)

```bash
# 安装对应工具(Ubuntu)
$ sudo snap install procs

# 安装对应工具(macOS)
$ brew install procs

# 字段补全
$ source <(procs --completion-out bash)
```

```bash
# procs 待过滤的关键字
~ » procs --help
procs 0.13.0
A modern replacement for ps

please see https://github.com/dalance/procs#configuration to configure columns

USAGE:
    procs [OPTIONS] [--] [KEYWORD]...

ARGS:
    <KEYWORD>... Keywords for search

OPTIONS:
    -a, --and    AND  logic for multi-keyword
    -o, --or     OR   logic for multi-keyword
    -d, --nand   NAND logic for multi-keyword
    -r, --nor    NOR  logic for multi-keyword

    -t, --tree   Tree view
    -w, --watch  Watch mode with default interval (1s)
    -W, --watch-interval <second> Watch mode with custom interval

    -l, --list   Show list of kind
        --thread Show thread

    -i, --insert <kind> Insert column to slot
        --only <kind>   Specified column only
        --sorta <kind>  Sort column by ascending
        --sortd <kind>  Sort column by descending

    -c, --color <COLOR> Color mode [possible values: auto, always, disable]
        --theme <THEME> Theme mode [possible values: auto, dark, light]
    -p, --pager <PAGER> Pager mode [possible values: auto, always, disable]
        --interval <millisec> Interval to calculate throughput [default: 100]
        --config   Generate configuration sample file
        --completion <shell>  Generate shell completion file [possible values: bash, elvish, fish, powershell, zsh]
        --completion-out <shell> Generate shell completion file and write to stdout [possible values: bash, elvish, fish, powershell, zsh]
        --no-header Suppress header

    -h, --help Print help information
    -V, --version Print version information
```

```bash
# 通过非数字关键字搜索
> procs zsh

# 按数字关键字搜索
> procs --or 6000 60000 60001 16723
> procs --and 6000 60000 60001 16723
> procs --nor 6000 60000 60001 16723
> procs --nand 6000 60000 60001 16723

# 显示Docker容器名称
> procs escape-life

# 监控模式
# n: 将排序列修改为下一列
# p: 将排序列改为前一列
# a: 将排序顺序改为升序
# d: 修改排序顺序为降序
# q: 退出
> procs --watch
> procs --watch-interval 3

# 树状视图
> procs --tree

# 排序列
> procs --sorta cputime
> procs --sortd cpu
> procs --sortd rss
```
