# httpie

> **[httpie](https://github.com/httpie/httpie) - 增强版 curl 工具**

- Expressive and intuitive syntax
- Formatted and colorized terminal output
- Built-in JSON support
- Forms and file uploads
- HTTPS, proxies, and authentication
- Arbitrary request data
- Custom headers
- Persistent sessions
- wget-like downloads

![httpie](../images/tools/tools-httpie.gif)

- **工具安装**

```bash
# 安装对应工具(Ubuntu)
$ sudo snap install httpie
$ sudo snap refresh httpie

# 安装对应工具(macOS)
$ brew update
$ brew install httpie
$ brew upgrade httpie

# Debian and Ubuntu
$ curl -SsL https://packages.httpie.io/deb/KEY.gpg | apt-key add -
$ curl -SsL -o /etc/apt/sources.list.d/httpie.list https://packages.httpie.io/deb/httpie.list
$ sudo apt update
$ sudo apt install httpie
$ sudo apt upgrade httpie
```

- **使用方式**

```bash
# 获取帮助信息
$ ➜ http --help
usage:
    http [METHOD] URL [REQUEST_ITEM [REQUEST_ITEM ...]]

HTTPie: modern, user-friendly command-line HTTP client for the API era. <https://httpie.io>

Positional arguments:
  These arguments come after any flags and in the order they are listed here.
  Only URL is required.

  METHOD
      The HTTP method to be used for the request (GET, POST, PUT, DELETE, ...).
      This argument can be omitted in which case HTTPie will use POST if there
      is some data to be sent, otherwise GET:
          $ http example.org               # => GET
          $ http example.org hello=world   # => POST

  URL
      The request URL. Scheme defaults to 'http://' if the URL
      does not include one. (You can override this with: --default-scheme=http/https)

      You can also use a shorthand for localhost
          $ http :3000                    # => http://localhost:3000
          $ http :/foo                    # => http://localhost/foo
```

- **示例说明**

```bash
# https://httpie.io/docs/cli/examples

# 直接访问
$ http httpie.io/hello

# 使用输出选项之一查看正在发送的请求
$ http -v pie.dev/get

# 自定义HTTP方法、HTTP头和JSON数据
$ http PUT pie.dev/put X-API-Token:123 name=John

# 提交表格
$ http -f POST pie.dev/post hello=World

# 在不使用离线模式发送的情况下构建和打印请求
$ http --offline pie.dev/post hello=offline

# 使用GitHubAPI对身份验证的问题发表评论
$ http -a USERNAME POST https://api.github.com/repos/httpie/httpie/issues/83/comments body='HTTPie is awesome! :heart:'

# 使用重定向输入上传文件
$ http pie.dev/post < files/data.json

# 下载文件并通过重定向输出保存
$ http pie.dev/image/png > image.png

# 使用wget模式下载文件
$ http --download pie.dev/image/png

# 使用指定的会话来使对同一主机的请求之间的通信的某些方面持续存在
$ http --session=logged-in -a username:password pie.dev/get API-Key:123
$ http --session=logged-in pie.dev/headers

# 设置一个自定义的主机头来处理丢失的DNS记录
$ http localhost:8000 Host:example.com
```
