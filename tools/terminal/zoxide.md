# zoxide

> **[zoxide](https://github.com/ajeetdsouza/zoxide) - 增强版 cd 工具**

更聪明的 `cd` 命令，能够记住你最常使用的目录，从而让目录跳转更加方便和快捷。

![zoxide](../images/tools/tools-zoxide.gif)

```bash
# 安装对应工具(Ubuntu)
$ sudo apt install zoxide

# 安装对应工具(macOS)
$ brew install zoxide

# 补全
$ eval "$(zoxide init zsh)"
$ eval "$(zoxide init bash)"
```

```bash
~ » zoxide --help
zoxide v0.4.3-unknown
A faster way to navigate your filesystem

USAGE:
    zoxide <SUBCOMMAND>

FLAGS:
    -h, --help       Prints help information
    -V, --version    Prints version information

SUBCOMMANDS:
    add       Add a new directory or increment its rank
    help      Prints this message or the help of the given subcommand(s)
    import    Import from z database
    init      Generates shell configuration
    query     Search for a directory
    remove    Remove a directory
```

```bash
# z 目录

z foo              # cd into highest ranked directory matching foo
z foo bar          # cd into highest ranked directory matching foo and bar
z foo /            # cd into a subdirectory starting with foo

z ~/foo            # z also works like a regular cd command
z foo/             # cd into relative path
z ..               # cd one level up
z -                # cd into previous directory

zi foo             # cd with interactive selection (using fzf)

z foo<SPACE><TAB>  # show interactive completions (zoxide v0.8.0+, bash 4.4+/fish/zsh only)
```
