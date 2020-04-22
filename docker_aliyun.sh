#!/bin/bash
#author 281388879@qq.com

yum remove docker docker-client docker-client-latest docker-common docker-latest docker-latest-logrotate  docker-logrotate docker-engine docker-selinux docker-engine -y

wget -O /etc/yum.repos.d/CentOS-Base.repo http://mirrors.aliyun.com/repo/Centos-7.repo
yum install -y yum-utils device-mapper-persistent-data lvm2
yum-config-manager --add-repo http://mirrors.aliyun.com/docker-ce/linux/centos/docker-ce.repo
yum makecache fast

yum install -y git wget docker-ce docker-ce-cli containerd.io
systemctl enable docker & systemctl start docker
curl -sSL https://get.daocloud.io/daotools/set_mirror.sh | sh -s http://f1361db2.m.daocloud.io
sudo systemctl restart docker

curl -L https://get.daocloud.io/docker/compose/releases/download/1.25.5/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
docker-compose --version


