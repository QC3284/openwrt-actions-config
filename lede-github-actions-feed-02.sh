#!/bin/bash
#本仓库及文件只在Github发布
#作者：QC3284@github.com(https://github.com/QC3284)
#本仓库地址：https://github.com/QC3284/openwrt-actions-config
#最后更新时间：2024.10.03
rm -rf feeds/luci/applications/luci-app-mosdns
rm -rf feeds/packages/net/{alist,adguardhome,mosdns,xray*,v2ray*,v2ray*,sing*,smartdns}
rm -rf feeds/packages/utils/v2dat
rm -rf feeds/packages/lang/golang
git clone https://github.com/kenzok8/golang feeds/packages/lang/golang