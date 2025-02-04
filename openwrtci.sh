#!/bin/bash
#本仓库及文件只在Github发布
#作者：QC3284@github.com(https://github.com/QC3284)
#本仓库地址：https://github.com/QC3284/openwrt-actions-config
#最后更新时间：2025.2.4
sudo rm -rf feeds/packages/lang/golang
sleep 2
git clone https://github.com/kenzok8/golang feeds/packages/lang/golang
sleep 3