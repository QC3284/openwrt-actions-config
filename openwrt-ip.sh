#!/bin/bash
#本仓库及文件只在Github发布
#作者：QC3284@github.com(https://github.com/QC3284)
#本仓库地址：https://github.com/QC3284/openwrt-actions-config
#最后更新时间：2025.5.2
sed -i 's/192.168.1.1/192.168.5.1/g' package/base-files/files/bin/config_generate
sleep 2
curl -sSL https://raw.githubusercontent.com/chenmozhijin/turboacc/luci/add_turboacc.sh -o add_turboacc.sh && bash add_turboacc.sh --no-sfe
git clone --branch master --single-branch https://github.com/vernesong/OpenClash.git clash
cp -r clash/luci-app-openclash package/luci-app-openclash
sudo rm -rf clash
git clone https://github.com/sirpdboy/luci-app-autotimeset.git package/luci-app-autotimeset
git clone https://github.com/sirpdboy/luci-app-advancedplus.git package/luci-app-advancedplus
git clone -b luci2 https://github.com/kuoruan/luci-app-v2ray.git package/luci-app-v2ray
git clone https://github.com/kuoruan/openwrt-v2ray.git package/v2ray-core
git clone https://github.com/kuoruan/openwrt-upx.git package/openwrt-upx
echo "src-git passwall_packages https://github.com/xiaorouji/openwrt-passwall-packages.git;main" >> "feeds.conf.default"
echo "src-git passwall2 https://github.com/xiaorouji/openwrt-passwall2.git;main" >> "feeds.conf.default"
echo "src-git mtk_openwrt_feed https://git01.mediatek.com/openwrt/feeds/mtk-openwrt-feeds" >> feeds.conf.default
sleep 3