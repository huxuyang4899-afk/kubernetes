#!/bin/bash
rm -rf /etc/apt/sources.list.d/*
sudo sed -i \
  -e 's#http://mirrors.ustc.edu.cn/ubuntu/#http://mirrors.aliyun.com/ubuntu/#g' \
  -e '/noble-proposed/ s/^/#/' \
  /etc/apt/sources.list
if apt update ;
then 
echo "换源成功"
else
echo "换源失败"
exit 1
fi
