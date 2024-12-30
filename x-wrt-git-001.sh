#!/bin/bash
#本仓库及文件只在Github发布
#作者：QC3284@github.com(https://github.com/QC3284)
#本仓库地址：https://github.com/QC3284/openwrt-actions-config
#最后更新时间：2024.12.31
git clone https://github.com/kiddin9/kwrt-packages.git opldf
sleep 2
cp -r opldf/coremark package/utils/
cp -r opldf/adguardhome feeds/packages/net/
cp -r opldf/luci-app-adguardhome package/
sleep 2
sudo rm -rf opldf
cd package
git clone https://github.com/garypang13/luci-theme-edge.git
git clone https://github.com/jerrykuku/luci-theme-argon.git
git clone https://github.com/jerrykuku/luci-app-argon-config.git
git clone https://github.com/derisamedia/luci-theme-alpha.git
git clone https://github.com/derisamedia/luci-app-alpha-config.git
git clone https://github.com/f8q8/luci-app-filetransfer.git
git clone https://github.com/sirpdboy/luci-app-netdata.git
git clone https://github.com/zzsj0928/luci-app-pushbot.git
git clone https://github.com/animegasan/luci-app-wolplus.git
git clone https://github.com/sirpdboy/luci-app-eqosplus.git
git clone https://github.com/sirpdboy/luci-app-lucky.git lucky
git clone https://github.com/QC3284/luci-app-opkg-autoupdate.git
echo "Done"
sleep 3

