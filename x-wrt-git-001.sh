#!/bin/bash
#本仓库及文件只在Github发布
#作者：QC3284@github.com(https://github.com/QC3284)
#本仓库地址：https://github.com/QC3284/openwrt-actions-config
#最后更新时间：2024.12.31
git clone https://github.com/kiddin9/kwrt-packages.git opldf
sleep 2
sudo rm -rf package/utils/coremark
cp -r opldf/coremark package/utils/
cp -r opldf/luci-app-adguardhome package/
echo "Done"
sleep 3

