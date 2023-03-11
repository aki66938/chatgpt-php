# docker版chatgpt-web

本项目基于[dirk1983/chatgpt](https://github.com/dirk1983/chatgpt)

有兴趣在此基础上进行二次开发的朋友，请联系原作者。

## 镜像的构成

想要构建一个尽可能小的docker环境来运行作者的项目

旨在为其他使用本项目的朋友提供便利、轻量且快速的构建方式。故本项目基于alpine+nginx+php81

当前镜像体积大小为29M

## 使用方式

1、通过dockerfile本地搭建

克隆本项目并cd进入项目根目录并修改stream.app，替换其中的key

```
bash
> cd chatgpt-php-docker
> docker build -t <容器名称> .
> docker run -d -p 8080:80 <容器名称>
```

基于以上，你可以进行测试和二次开发

2、通过

```
bash
> docker pull akirun/chatgpt-php
> docker run -d -p 8080:80 akirun/chatgpt-php
```

基于以上你可以部署到服务器供朋友访问
