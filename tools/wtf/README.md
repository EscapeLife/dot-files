# wtf

> **[wtf](https://github.com/wtfutil/wtf) - The personal information dashboard for your terminal**

- **run local**

```bash
# 下载最新版本
$ wget https://github.com/wtfutil/wtf/releases/download/v0.36.0/wtf_0.36.0_darwin_amd64.tar.gz
$ tar -xf wtf_0.36.0_darwin_amd64.tar.gz && cd wtf_0.36.0_darwin_amd64

# 设置可执行权限
$ chmod a+x ./wtf

# 执行信息聚合页面
$ ./wtf
```

- **run docker**

```bash
# download or create the Dockerfile
$ curl -o Dockerfile https://raw.githubusercontent.com/wtfutil/wtf/master/Dockerfile

# build the docker container
$ docker build -t wtfutil .

# run container with a local config file
$ docker run -it -v path/to/config.yml:/config/config.yml wtfutil --config=/config/config.yml
```
