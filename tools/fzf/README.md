# fzf

> **[fzf](https://github.com/junegunn/fzf) - 命令行模糊查找器**

`Ctrl+R` 可以在 `history` 搜索命令，不过用起来很反人类。`fzf` 使用效果如下，非常方便，从此再也不用畏惧长命令了。

- **没有依赖关系**
- **快速响应**
- **最全面的功能集**
- **灵活的布局**

| 按键     | 描述                           |
| -------- | ------------------------------ |
| `CTRL-T` | 命令行打印选中内容             |
| `CTRL-R` | 命令行历史记录搜索, 并打印输出 |
| `ALT-C`  | 模糊搜索目录, 并进入(`cd`)     |

![fzf](../../images/tools-fzf.png)

---

```bash
# 安装对应工具
$ brew install fzf # macOS
$ sudo apt-get install fzf # Ubuntu

# 更新并部署方式(.zshrc)
$(brew --prefix)/opt/fzf/install

# 添加配置别名(.zshrc)
alias his="history | fzf"
```

```bash
# 打开文件搜索功能
$ fzf

# 启用用户交互查找
$ find * -type f | fzf
```
