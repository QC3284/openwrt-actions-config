#!/bin/bash
sudo rm -rf feeds/packages/net/smartdns
sudo rm -rf feeds/luci/applications/luci-app-smartdns
git clone https://github.com/pymumu/openwrt-smartdns.git  feeds/packages/net/smartdns
git clone https://github.com/pymumu/luci-app-smartdns.git feeds/luci/applications/luci-app-smartdns