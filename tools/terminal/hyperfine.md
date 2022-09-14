# hyperfine

> **[hyperfine](https://github.com/sharkdp/hyperfine) - 增强版 time 工具**

强大的命令行基准测试工具，支持任意 `shell` 命令、多次运行的统计分析和结果导出。

- 多次运行的统计分析
- 支持任意 `shell` 命令
- 关于基准进展和当前估计的持续反馈
- 可以在实际基准之前,预热执行
- 可以在每次定时运行之前，设置缓存清除命令
- 统计异常值检测
- 将结果导出为各种格式: `CSV`,`JSON`,`Markdown`
- 参数化基准
- 跨平台

![hyperfine](../images/tools/tools-hyperfine.gif)

- **工具安装**

```bash
# 安装对应工具(Ubuntu)
$ sudo apt install hyperfine

# 安装对应工具(macOS)
$ brew install hyperfine

# 最新版本
$ wget https://github.com/sharkdp/hyperfine/releases/download/v1.15.0/hyperfine_1.15.0_amd64.deb
$ sudo dpkg -i hyperfine_1.15.0_amd64.deb
```

- **使用方式**

```bash
~ » exa --help
hyperfine 1.12.0
A command-line benchmarking tool.

USAGE:
    hyperfine [OPTIONS] <command>...

OPTIONS:
    -w, --warmup <NUM>
            Perform NUM warmup runs before the actual benchmark. This can be used to fill
			(disk) caches for I/O-heavy programs.

    -m, --min-runs <NUM>
            Perform at least NUM runs for each command (default: 10).
    -M, --max-runs <NUM>
            Perform at most NUM runs for each command. By default, there is no limit.

    -r, --runs <NUM>
            Perform exactly NUM runs for each command. If this option is not specified,
            hyperfine automatically determines the number of runs.
    -p, --prepare <CMD>...
            Execute CMD before each timing run. This is useful for clearing disk caches,
            for example.
            The --prepare option can be specified once for all commands or multiple times,
            once for each command. In the latter case, each preparation command will be
            run prior to the corresponding benchmark command.
    -c, --cleanup <CMD>
            Execute CMD after the completion of all benchmarking runs for each individual
            command to be benchmarked. This is useful if the commands to be benchmarked
            produce artifacts that need to be cleaned up.
    -P, --parameter-scan <VAR> <MIN> <MAX>
            Perform benchmark runs for each value in the range MIN..MAX. Replaces the
            string '{VAR}' in each command by the current parameter value.
    -D, --parameter-step-size <DELTA>
            This argument requires --parameter-scan to be specified as well. Traverse the
            range MIN..MAX in steps of DELTA.
    -L, --parameter-list <VAR> <VALUES>
            Perform benchmark runs for each value in the comma-separated list VALUES.
            Replaces the string '{VAR}' in each command by the current parameter value.
    -s, --style <TYPE>
            Set output style type (default: auto). Set this to 'basic' to disable output
            coloring and interactive elements. Set it to 'full' to enable all effects even
            if no interactive terminal was detected. Set this to 'nocolor' to keep the
            interactive output without any colors. Set this to 'color' to keep the colors
            without any interactive output. Set this to 'none' to disable all the output
            of the tool.
    -S, --shell <SHELL>
            Set the shell to use for executing benchmarked commands.

    -i, --ignore-failure
            Ignore non-zero exit codes of the benchmarked programs.

    -u, --time-unit <UNIT>
            Set the time unit to be used. Possible values: millisecond, second.

        --export-asciidoc <FILE>
            Export the timing summary statistics as an AsciiDoc table to the given FILE.

        --export-csv <FILE>
            Export the timing summary statistics as CSV to the given FILE. If you need the
            timing results for each individual run, use the JSON export format.
        --export-json <FILE>
            Export the timing summary statistics and timings of individual runs as JSON to
            the given FILE.
        --export-markdown <FILE>
            Export the timing summary statistics as a Markdown table to the given FILE.

        --show-output
            Print the stdout and stderr of the benchmark instead of suppressing it. This
            will increase the time it takes for benchmarks to run, so it should only be
            used for debugging purposes or when trying to benchmark output speed.
    -n, --command-name <NAME>...
            Give a meaningful name to a command

    -h, --help
            Print this help message.

    -V, --version
            Show version information.
```

- **示例说明**

```bash
# 基本基准测试
# 参数可以是任何shell命令
$ hyperfine 'sleep 0.3'

# 基本基准测试(-m/--min-runs)
# 将自动确定要为每个命令执行的运行次数
# 默认情况下，它将执行至少10个基准测试运行
$ hyperfine --min-runs 5 'sleep 0.2' 'sleep 3.2'

# 注重I/O的程序(在热缓存上运行基准测试)
# 执行一定数量的程序执行的选项(预热预热 -w/--warmup)
# 如果程序执行时间受磁盘I/O限制，则基准测试结果可能会受到磁盘缓存严重影响
$ hyperfine --warmup 3 'grep -R TODO *'

# 注重I/O的程序(在冷缓存上运行基准测试)
# 运行冷缓存的基准测试(冷缓存 -p/--prepare)
# 在每次计时运行之前，运行特定命令，例如要清除Linux上的硬盘缓存
$ sync; echo 3 | sudo tee /proc/sys/vm/drop_caches
$ hyperfine --prepare 'sync; echo 3 | sudo tee /proc/sys/vm/drop_caches' 'grep -R TODO *'

# 参数化基准(-P/--parameter-scan)
# 如果你想在一个参数变化的情况下运行基准测试 (比如线程数)
$ hyperfine --prepare 'make clean' --parameter-scan num_threads 1 12 'make -j {num_threads}'

# 导出结果(--export-markdown)
$ hyperfine 'sleep 0.3' --export-csv csv.md
$ hyperfine 'sleep 0.3' --export-markdown test.md
```
