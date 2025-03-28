##############################################################################
# TMUX CHEATSHEET (中文速查表)  -  by ziyenano (created on 2018/03/15)
# Version: 1, Last Modified: 2018/03/15 00:30
# https://github.com/skywind3000/awesome-cheatsheets
##############################################################################


##############################################################################
# session
##############################################################################

tmux                      # 创建新的 session
tmux new -S name          # 创建新的 session 并指定一个name
tmux ls                   # 查看多少个后台工作的 session
tmux a/at/attach          # 重新连接 session
tmux a/at/attach -t num   # 如果有多个 session, 指定 session num 连接
tmux kill-ses -t myses    # kill 某个 session
tmux kill-ses -a          # kill 所有 session, 除了当前的 session
tmux kill-ses -a -t myses # kill 所有 session, 除了 myses


##############################################################################
# 操作方式
##############################################################################

<prefix> + key            # <prefix> 默认为 ctrl + b
<prefix> + c              # 表示先按 ctrl + b 再按 c 键


##############################################################################
# 帮助信息
##############################################################################

<prefix> + ?              # 查看所有的 key map


##############################################################################
# window 操作
##############################################################################

<prefix> + c              # 新建一个 window
<prefix> + n              # 下一个 window
<prefix> + p              # 上一个 window
<prefix> + w              # 列出 window
<prefix> + &              # 关闭当前 window
<prefix> + num[1-9]       # 选定特定 num 的 window
<prefix> + f              # 查找 window
<prefix> + ,              # 重命名 window
<prefix> + .              # 移动 window



##############################################################################
# pane 操作
##############################################################################

<prefix> + %              # 纵向分裂
<prefix> + "              # 横向分裂
<prefix> + 方向键          # 在一个 window 中切换 pane
<prefix> + ctrl-方向键     # 调整 pane 大小
<prefix> + z              # 全屏化当前 pane, 再次执行退出全屏
<prefix> + x              # 关闭当前 pane
<prefix> + q              # 显示 pane 编号
<prefix> + o              # 跳到下一个 pane
<prefix> + {              # 跟前一个编号的 pane 交换
<prefix> + }              # 跟后一个编号的 pane 交换
<prefix> + ;              # 跳转到上一个活跃的 pane
<prefix> + !              # 将 pane 转化为 window
<prefix> + <Space>        # 改变 pane 的布局


##############################################################################
# session
##############################################################################

<prefix> + d              # detach 整个session, 后续可以重新连接
<prefix> + s              # 列出 session
<prefix> + $              # 重命名 session
<prefix> + (              # 跳到上一个 seesion
<prefix> + )              # 跳到下一个 seesion


##############################################################################
# Misc
##############################################################################
<prefix> + t              # 显示时钟
<prefix> + :              # 命令行

##############################################################################
# pane 同步
##############################################################################

:setw synchronize-panes  # 打开(关闭) pane 同步模式, 发送命令到所有的 pane 中
                         # 只影响当前 window 的 pane

##############################################################################
# 复制模式 (copy-mode)
##############################################################################

添加下面一行到 $HOME/.tmux.conf, 通过 vim 的快捷键实现浏览, 复制等操作;

setw -g mode-keys vi

更多 vim 快捷键可参考 ../editors/vim.txt, 以下列出一些常用快捷键.

<prefix> + [              # 进入 copy mode

vi             emacs      功能
^              M-m        # 跳转到一行开头
Escape         C-g        # 放弃选择
k              Up         # 上移
j              Down       # 下移
h              Left       # 左移
l              Right      # 右移
L                         # 最后一行
M              M-r        # 中间一行
H              M-R        # 第一行
$              C-e        # 跳转到行尾
:              g          # 跳转至某一行
C-d            M-Down     # 下翻半页
C-u            M-Up       # 上翻半页
C-f            Page down  # 下翻一页
C-b            Page up    # 上翻一页
w              M-f        # 下一个字符
b              M-b        # 前一个字符
q              Escape     # 退出
?              C-r        # 往上查找
/              C-s        # 往下查找
n              n          # 查找下一个

Space          C-Space    # 进入选择模式
Enter          M-w        # 确认选择内容, 并退出

<prefix> + ]              # 粘贴选择内容(粘贴 buffer_0 的内容)

:show-buffer              # 显示 buffer_0 的内容
:capture-buffer           # 复制整个能见的内容到当前的 buffer
:list-buffers             # 列出所有的 buffer
:choose-buffer            # 列出所有的 buffer, 并选择用于粘贴的 buffer
:save-buffer buf.txt      # 将 buffer 的内容复制到 buf.txt
:delete-buffer -b 1       # 删除 buffer_1


##############################################################################
# mouse-mode
##############################################################################

:setw -g mode-mouse on           # 打开鼠标模式
:set -g mouse-select-pane on     # 通过鼠标选择 pane
:set -g mouse-resize-pane on     # 通过鼠标更改 pane 大小
:set -g mouse-select-window on   # 通过鼠标选择 window


##############################################################################
# References
##############################################################################

https://gist.github.com/MohamedAlaa/2961058
https://tmuxcheatsheet.com/

所有的快捷键都有对应的 command, 参考:
http://man.openbsd.org/OpenBSD-current/man1/tmux.1

可以通过 $HOME/.tmux.conf 更改配置, 参考一些比较好的 tmux 配置:
https://github.com/gpakosz/.tmux
