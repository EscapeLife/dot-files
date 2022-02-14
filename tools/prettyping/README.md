# prettyping

> **[prettyping](https://github.com/denilsonsa/prettyping) - 使输出更漂亮、更丰富多彩、更紧凑和更容易阅读**

```bash
# 下载最新版工具
$ curl -O https://raw.githubusercontent.com/denilsonsa/prettyping/master/prettyping
$ chmod +x prettyping

# 获取帮助信息
$ ./prettyping --help
Usage: prettyping [prettyping parameters] <standard ping parameters>

This script is a wrapper around the system is "ping" tool. It will substitute
each ping response line by a colored character, giving a very compact overview
of the ping responses.

prettyping parameters:
  --[no]color      Enable/disable color output. (default: enabled)
  --[no]multicolor Enable/disable multi-color unicode output. Has no effect if
                     either color or unicode is disabled. (default: enabled)
  --[no]unicode    Enable/disable unicode characters. (default: enabled)
  --[no]legend     Enable/disable the latency legend. (default: enabled)
  --[no]terminal   Force the output designed to a terminal. (default: auto)
  --last <n>       Use the last "n" pings at the statistics line. (default: 60)
  --columns <n>    Override auto-detection of terminal dimensions.
  --lines <n>      Override auto-detection of terminal dimensions.
  --rttmin <n>     Minimum RTT represented in the unicode graph. (default: auto)
  --rttmax <n>     Maximum RTT represented in the unicode graph. (default: auto)
  --awkbin <exec>  Override the awk interpreter. (default: awk)
  --pingbin <exec> Override the ping tool. (default: ping)
  -6               Shortcut for: --pingbin ping6

ping parameters handled by prettyping:
  -a  Audible ping is not implemented yet.
  -f  Flood mode is not allowed in prettyping.
  -q  Quiet output is not allowed in prettyping.
  -R  Record route mode is not allowed in prettyping.
  -v  Verbose output seems to be the default mode in ping.

# 执行命令快速测速
$ ./prettyping www.baidu.com
0 ▁ 10 ▂ 20 ▃ 30 ▄ 40 ▅ 50 ▆ 60 ▇ 70 █ 80 ▁ 90 ▂ 100 ▃ 110 ▄ 120 ▅ 130 ▆ 140 ▇ 150 █ 160 ▁ 170 ▂ 180 ▃ 190 ▄ 200 ▅ 210 ▆ 220 ▇ 230 █ ∞
PING www.baidu.com (14.215.177.38): 56 data bytes
▄▄▅▄▅▄▅▄▄▄▄▄▅▄▅▄█▅^C
 0/ 18 ( 0%) lost;   36/  42/  76ms; last:   44ms
 0/ 18 ( 0%) lost;   36/  42/  76/   5ms (last 18)
--- www.baidu.com ping statistics ---
18 packets transmitted, 18 packets received, 0.0% packet loss
round-trip min/avg/max/stddev = 36.679/41.994/76.061/8.818 ms
```
