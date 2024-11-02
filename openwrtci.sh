#!/bin/bash
#本仓库及文件只在Github发布
#作者：QC3284@github.com(https://github.com/QC3284)
#本仓库地址：https://github.com/QC3284/openwrt-actions-config
#最后更新时间：2024.11.02
sudo rm -rf feeds/packages/net/smartdns
sudo rm -rf feeds/kenzo/smartdns
sudo rm -rf feeds/luci/applications/luci-app-smartdns
sudo rm -rf feeds/kenzo/luci-app-smartdns
sudo rm -rf feeds/luci/applications/luci-app-mosdns
sudo rm -rf feeds/packages/net/{alist,adguardhome,mosdns,xray*,v2ray*,v2ray*,sing*,smartdns}
sudo rm -rf feeds/packages/utils/v2dat
sudo rm -rf feeds/packages/lang/golang
git clone https://github.com/kenzok8/golang feeds/packages/lang/golang
git clone https://github.com/pymumu/openwrt-smartdns.git  feeds/packages/net/smartdns
git clone https://github.com/pymumu/luci-app-smartdns.git feeds/luci/applications/luci-app-smartdns
sleep 3