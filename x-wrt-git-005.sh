#!/bin/bash
#本仓库及文件只在Github发布
#作者：QC3284@github.com(https://github.com/QC3284)
#本仓库地址：https://github.com/QC3284/openwrt-actions-config
#最后更新时间：2025.1.24
sudo rm -rf feeds/luci/applications/luci-app-ramfree
sleep 2
cp -r opldf/luci-app-ramfree package/
sudo rm -rf opldf
echo "Done"
sleep 3