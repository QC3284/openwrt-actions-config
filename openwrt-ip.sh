#!/bin/bash
#本仓库及文件只在Github发布
#作者：QC3284@github.com(https://github.com/QC3284)
#本仓库地址：https://github.com/QC3284/openwrt-actions-config
#最后更新时间：2025.2.4
sed -i 's/192.168.1.1/10.0.0.1/g' package/base-files/files/bin/config_generate
sleep 2
curl -sSL https://raw.githubusercontent.com/chenmozhijin/turboacc/luci/add_turboacc.sh -o add_turboacc.sh && bash add_turboacc.sh --no-sfe
git clone https://github.com/vernesong/OpenClash.git clash
cp -r clash/luci-app-openclash package/luci-app-openclash
git clone https://github.com/jerrykuku/luci-theme-argon.git package/luci-theme-argon
git clone https://github.com/jerrykuku/luci-app-argon-config.git package/luci-app-argon-config
git clone https://github.com/kiddin9/luci-theme-edge.git package/luci-theme-edge
git clone https://github.com/animegasan/luci-app-wolplus.git package/luci-app-wolplus
git clone https://github.com/sirpdboy/luci-app-eqosplus.git package/luci-app-eqosplus
git clone https://github.com/sirpdboy/luci-app-autotimeset.git package/luci-app-autotimeset
git clone https://github.com/sirpdboy/luci-app-lucky.git package/lucky
git clone https://github.com/DustReliant/luci-app-filetransfer.git package/luci-app-filetransfer
git clone https://github.com/sbwml/luci-app-filemanager.git package/luci-app-filemanager
git clone https://github.com/sirpdboy/luci-app-netdata.git package/luci-app-netdata
git clone https://github.com/sirpdboy/luci-app-advancedplus.git package/luci-app-advancedplus
echo "src-git passwall_packages https://github.com/xiaorouji/openwrt-passwall-packages.git;main" >> "feeds.conf.default"
echo "src-git passwall https://github.com/xiaorouji/openwrt-passwall.git;main" >> "feeds.conf.default"
sleep 3