FROM ubuntu:22.04

# 这里要替换 your_name 为您的名字, 和your_email 为您的Email
MAINTAINER caixiaoguang <caixiaoguang@huawei.com>

# 更新源
RUN apt-get update

# 清除缓存
RUN apt-get autoclean

# 安装
RUN apt install -y netopeer2 sysrepo-plugind libyang2-tools || true
RUN /usr/share/netopeer2/merge_hostkey.sh
RUN /usr/share/netopeer2/merge_config.sh
RUN apt install -f
RUN echo 'root:@zen123' | chpasswd


# 启动时运行这个命令
#CMD ["ps"]
