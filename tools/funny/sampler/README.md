# Sampler

> **[Sampler](https://github.com/sqshq/sampler) - visualization for any shell command**

- **run local**

```bash
# 下载最新版本
$ curl -Lo sampler https://github.com/sqshq/sampler/releases/download/v1.1.0/sampler-1.1.0-darwin-amd64

# 设置可执行权限
$ chmod +x ./sampler

# 执行信息聚合页面
$ ./sampler
```

- **run docker**

```bash
# create a config file
$ vim ./config/config.yml

# build the container image
$ docker build --tag sampler .

# run a container
$ docker run --interactive --tty \
    --volume $(pwd)/config.yml:/root/config.yml \
    sampler --config ./config/config.yml
```
