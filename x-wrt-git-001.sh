#!/bin/bash
git clone https://github.com/garypang13/luci-theme-edge.git
git clone https://github.com/jerrykuku/luci-theme-argon.git
git clone https://github.com/jerrykuku/luci-app-argon-config.git
git clone https://github.com/sirpdboy/luci-theme-opentopd.git
git clone https://github.com/derisamedia/luci-theme-alpha.git
git clone https://github.com/derisamedia/luci-app-alpha-config.git
git clone https://github.com/f8q8/luci-app-filetransfer.git
git clone https://github.com/kongfl888/luci-app-timedreboot.git
git clone https://github.com/sirpdboy/luci-app-netdata.git
git clone https://github.com/zzsj0928/luci-app-pushbot.git
git clone https://github.com/animegasan/luci-app-wolplus.git
git clone https://github.com/sirpdboy/luci-app-eqosplus.git
git clone https://github.com/sirpdboy/luci-app-ddns-go.git ddns-go
git clone https://github.com/QC3284/coremark-openwrt.git utils/coremark
git clone https://github.com/QC3284/luci-app-adguardhome.git
sleep 2
wget https://github.com/vernesong/OpenClash/archive/refs/heads/master.zip
unzip master.zip
cp -r "OpenClash-master/luci-app-openclash" "luci-app-openclash"
pushd luci-app-openclash/tools/po2lmo
make && sudo make install
popd
sudo rm -rf master.zip
sudo rm -rf "OpenClash-master"
sleep 3
