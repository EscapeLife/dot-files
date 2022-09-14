# exa

> **[exa](https://github.com/ogham/exa) - 增强版 ls 工具**

更加人性化地显示目录下文件的工具。它通过不同颜色展示来区别文件类型，还支持以树状的方式展示文件层级、展示 `Git` 状态等方便的功能。

![exa](../images/tools/tools-exa.png)

```bash
# 安装对应工具(Ubuntu)
$ sudo apt install exa

# 安装对应工具(macOS)
$ brew install exa
```

```bash
~ » exa --help
Usage:
  exa [options] [files...]

META OPTIONS
  -?, --help         show list of command-line options
  -v, --version      show version of exa

DISPLAY OPTIONS
  -1, --oneline      display one entry per line
  -l, --long         display extended file metadata as a table
  -G, --grid         display entries as a grid (default)
  -x, --across       sort the grid across, rather than downwards
  -R, --recurse      recurse into directories
  -T, --tree         recurse into directories as a tree
  -F, --classify     display type indicator by file names
  --colo[u]r=WHEN    when to use terminal colours (always, auto, never)
  --colo[u]r-scale   highlight levels of file sizes distinctly
  --icons            display icons
  --no-icons         don not display icons (always overrides --icons)

FILTERING AND SORTING OPTIONS
  -a, --all                  show hidden and dot files
  -d, --list-dirs            list directories as files; don not list their contents
  -L, --level DEPTH          limit the depth of recursion
  -r, --reverse              reverse the sort order
  -s, --sort SORT_FIELD      which field to sort by
  --group-directories-first  list directories before other files
  -D, --only-dirs            list only directories
  -I, --ignore-glob GLOBS    glob patterns (pipe-separated) of files to ignore
  Valid sort fields:         name, Name, extension, Extension, size, type,
                             modified, accessed, created, inode, and none.
                             date, time, old, and new all refer to modified.

LONG VIEW OPTIONS
  -b, --binary         list file sizes with binary prefixes
  -B, --bytes          list file sizes in bytes, without any prefixes
  -g, --group          list each file is group
  -h, --header         add a header row to each column
  -H, --links          list each file is number of hard links
  -i, --inode          list each file is inode number
  -m, --modified       use the modified timestamp field
  -n, --numeric        list numeric user and group IDs
  -S, --blocks         show number of file system blocks
  -t, --time FIELD     which timestamp field to list (modified, accessed, created)
  -u, --accessed       use the accessed timestamp field
  -U, --created        use the created timestamp field
  --changed            use the changed timestamp field
  --time-style         how to format timestamps (default, iso, long-iso, full-iso)
  --no-permissions     suppress the permissions field
  --octal-permissions  list each file is permission in octal format
  --no-filesize        suppress the filesize field
  --no-user            suppress the user field
  --no-time            suppress the time field
  -@, --extended       list each file is extended attributes and sizes
```
