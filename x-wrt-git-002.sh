#!/bin/bash
sed -i 's/192.168.15.1/192.168.5.1/g' package/base-files/files/bin/config_generate
echo "src-git passwall https://github.com/xiaorouji/openwrt-passwall.git" >> feeds.conf.default
sleep 3
