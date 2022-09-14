# ripgrep

> **[ripgrep](https://github.com/BurntSushi/ripgrep) - 增强版 grep 工具**

超快的文本搜索工具。不仅快还更加人性化，比如自动忽略 .gitignore 中的文件、自动递归搜索、自动高亮展示匹配的结果。`ripgrep` 在 `Windows`、`MaCOS` 和 `Linux` 上拥有一流的支持，可以下载并使用每个 `release` 二进制文件。`ripgrep` 类似于其他流行的搜索工具，如 `ag`，`ACK` 和 `grep`。

![ripgrep](../images/tools/tools-ripgrep.png)

- **工具安装**

```bash
# 安装对应工具(Ubuntu)
$ sudo apt-get install ripgrep

# 安装对应工具(macOS)
$ brew install ripgrep
```

- **使用方式**

```bash
~ » ripgrep --help
ripgrep 13.0.0
Andrew Gallant <jamslam@gmail.com>

ripgrep (rg) recursively searches the current directory for a regex pattern.
By default, ripgrep will respect gitignore rules and automatically skip hidden
files/directories and binary files.

Use -h for short descriptions and --help for more details.

Project home page: https://github.com/BurntSushi/ripgrep

USAGE:
    rg [OPTIONS] PATTERN [PATH ...]
    rg [OPTIONS] -e PATTERN ... [PATH ...]
    rg [OPTIONS] -f PATTERNFILE ... [PATH ...]
    rg [OPTIONS] --files [PATH ...]
    rg [OPTIONS] --type-list
    command | rg [OPTIONS] PATTERN
    rg [OPTIONS] --help
    rg [OPTIONS] --version
```

- **示例说明**

```bash
# 直接搜索内容
$ rg 'name' ./

# 搜索name为独立单词的内容(-w)
$ rg -w 'name' ./

# 只打印包含匹配内容的文件名(-l)
$ rg -w 'name' ./ -l
src/cpp/server.cpp
src/cpp/uart.cpp

# 只搜索cpp文件(-t)；用-T来不搜索某种类型文件
$ rg -w 'name' ./ -tcpp -Tpy

# 正则搜索(-e)
$ rg -e "sa.*port" ./ -tcpp

# 显示匹配内容及上下各两行(-C)
$ rg -e "sa.*port" ./ -tcpp -C2

# 显示不含"debug"的行(-v)
$ rg -v "debug" -tcpp ./

# 只显示匹配部分(-o)
$ rg -e "if.*debug" ./ -tcpp -o

# 忽略大小写(-i)
$ rg -ie "if.*debug" ./ -tcpp -o

# 把pattern当成常量字符(-F), 像.(){}*+不需要escape
# 如果要搜索的字符是以-开头，那么要用--来作为分隔符
$ rg -F "i++)" ./ -tcpp
$ rg -e "-foo"

# 打印所有将被搜索的文件 --files
$ rg --files

# 输出内置识别文件类型
$ rg --type-list
```
