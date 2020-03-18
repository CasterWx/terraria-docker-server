# terraria-docker-server

泰拉瑞亚服务器Docker镜像.

之前和朋友玩泰拉瑞亚时，Steam的联机一直连不上，所以在服务器上搭了一个泰拉的主机，但是官方给的包只能用7777端口，和朋友玩时只能用一张图，所以自己构建了一个docker的泰拉瑞亚服务器镜像，可以用虚拟端口的方式在一台服务器上开启多个地图。

### 公有的主机

IP 47.96.85.135

端口 7778~7783

上面六台主机密码均为docker

--------------

1. 安装配置Docker环境

2. 下载该仓库中文件

```
git clone "https://github.com/CasterWx/terraria-docker-server.git"
```

3. 在仓库目录terraria-docker-server下执行build命令

```
docker build -t terraria-docker-server:lastest .
```

等待构建完成.

![image.png](http://antzuhl.cn/upload/2020/3/image-e9d3a4e050c24f708c0a56e3150c5cde.png)

使用`docker images`命令查看terraria-docker-server镜像是否生成.

![image.png](http://antzuhl.cn/upload/2020/3/image-d0c393e488974b21aa99f93a7c471dde.png)

4. 创建容器

```
docker run -id --name "terraria-server" -p 7778:7777 terraria-docker-server:lastest
```

如果没有异常，就可以打开游戏连接了

5. 进入服务器

服务器密码默认为'docker'

![image1.png](http://antzuhl.cn/upload/2020/3/image-a740ff2eceda438889f9264a66f9583b.png)

![image2.png](http://antzuhl.cn/upload/2020/3/image-39d5ff029ba94e37abbfcae4ed53265b.png)

![image3.png](http://antzuhl.cn/upload/2020/3/image-ddb58b5d9fd44a21861b23624883ff2b.png)

### 其他

这里默认我生成了一张最大的地图，叫做AntzUhl-Docker-World的地图，最大联机人数为200，普通难度，如果有特殊需求，可以在build之前自己修改配置文件中的信息。
