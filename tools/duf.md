# duf

> **[duf](https://github.com/muesli/duf) - 传统 df 命令的替代工具**

安装之后，直接使用就可以了，非常简单。

- **User-friendly, colorful output**
- **Adjusts to your terminal's theme & width**
- **Sort the results according to your needs**
- **Groups & filters devices**
- **Can conveniently output JSON**

![duf](../images/tools-duf.png)

---

- **安装方式**

```bash
# 安装对应工具
$ brew install duf # macOS
$ sudo apt install duf # Ubuntu
$ pkg install duf # Android
$ scoop install duf # Windows

# 添加配置别名(.zshrc)
alias df="duf"
```

- **简单使用**

```bash
# 统计
$ duf

# 将仅列出特定的设备和挂载点
$ duf /home /some/file

# 列出所有内容(pseudo, duplicate, inaccessible file systems)
$ duf --all
```

- **条件过滤**

```bash
# 显示和隐藏特定的列
$ duf --only local,network,fuse,special,loops,binds
$ duf --hide local,network,fuse,special,loops,binds

# 显示和隐藏特定的文件系统
$ duf --only-fs tmpfs,vfat
$ duf --hide-fs tmpfs,vfat
$ duf --only-mp /,/home,/dev
$ duf --hide-mp /,/home,/dev
$ duf --only-mp '/sys/*,/dev/*'

# 对输出进行排序
$ duf --sort size
$ duf --output mountpoint,size,usage
$ duf --inodes
$ duf --theme light
$ duf --avail-threshold="10G,1G"
$ duf --usage-threshold="0.5,0.9"

# 输出导出为json格式
$ duf --json
```
