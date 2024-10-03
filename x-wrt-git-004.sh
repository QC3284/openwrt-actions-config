#!/bin/bash
#本仓库及文件只在Github发布
#作者：QC3284@github.com(https://github.com/QC3284)
#本仓库地址：https://github.com/QC3284/openwrt-actions-config
#最后更新时间：2024.10.03
wget http://downloads.pangubox.com:6380/lintel/CR660X/pb-boot/pb-boot.ecc -O pb-boot.ecc || wget https://raw.githubusercontent.com/QC3284/openwrt-actions-config/main/pb-boot-cr660x-back/pb-boot.ecc -O pb-boot.ecc
wget http://downloads.pangubox.com:6380/lintel/CR660X/pb-boot/pb-boot.img -O pb-boot.img || wget https://raw.githubusercontent.com/QC3284/openwrt-actions-config/main/pb-boot-cr660x-back/pb-boot.img -O pb-boot.img
wget http://downloads.pangubox.com:6380/lintel/CR660X/pb-boot/pb-boot.sha256 -O pb-boot.sha256 || wget https://raw.githubusercontent.com/QC3284/openwrt-actions-config/main/pb-boot-cr660x-back/pb-boot.sha256 -O pb-boot.sha256
wget https://downloads.openwrt.org/releases/23.05.4/targets/ramips/mt7621/openwrt-23.05.4-ramips-mt7621-xiaomi_mi-router-cr6606-initramfs-kernel.bin
wget https://downloads.openwrt.org/releases/23.05.4/targets/ramips/mt7621/openwrt-23.05.4-ramips-mt7621-xiaomi_mi-router-cr6606-squashfs-firmware.bin
wget https://downloads.openwrt.org/releases/23.05.4/targets/ramips/mt7621/openwrt-23.05.4-ramips-mt7621-xiaomi_mi-router-cr6606-squashfs-sysupgrade.bin
sleep 3
7zz a -mx=9 -mmt=8 "openwrt-23.05.4-ramips-mt7621-xiaomi_mi-router-cr6606.zip" "openwrt-23.05.4-ramips-mt7621-xiaomi_mi-router-cr6606-initramfs-kernel.bin" "openwrt-23.05.4-ramips-mt7621-xiaomi_mi-router-cr6606-squashfs-firmware.bin" "openwrt-23.05.4-ramips-mt7621-xiaomi_mi-router-cr6606-squashfs-sysupgrade.bin"
sleep 3
sudo rm -rf openwrt-23.05.4-ramips-mt7621-xiaomi_mi-router-cr6606-squashfs-firmware.bin
sudo rm -rf openwrt-23.05.4-ramips-mt7621-xiaomi_mi-router-cr6606-squashfs-sysupgrade.bin
sudo rm -rf openwrt-23.05.4-ramips-mt7621-xiaomi_mi-router-cr6606-initramfs-kernel.bin
sleep 3
wget https://downloads.immortalwrt.org/releases/23.05.3/targets/ramips/mt7621/immortalwrt-23.05.3-ramips-mt7621-xiaomi_mi-router-cr6606-initramfs-kernel.bin
wget https://downloads.immortalwrt.org/releases/23.05.3/targets/ramips/mt7621/immortalwrt-23.05.3-ramips-mt7621-xiaomi_mi-router-cr6606-squashfs-firmware.bin
wget https://downloads.immortalwrt.org/releases/23.05.3/targets/ramips/mt7621/immortalwrt-23.05.3-ramips-mt7621-xiaomi_mi-router-cr6606-squashfs-sysupgrade.bin
sleep 3
7zz a -mx=9 -mmt=8 "immortalwrt-23.05.3-ramips-mt7621-xiaomi_mi-router-cr6606.zip" "immortalwrt-23.05.3-ramips-mt7621-xiaomi_mi-router-cr6606-initramfs-kernel.bin" "immortalwrt-23.05.3-ramips-mt7621-xiaomi_mi-router-cr6606-squashfs-firmware.bin" "immortalwrt-23.05.3-ramips-mt7621-xiaomi_mi-router-cr6606-squashfs-sysupgrade.bin"
sleep 3
sudo rm -rf immortalwrt-23.05.3-ramips-mt7621-xiaomi_mi-router-cr6606-initramfs-kernel.bin
sudo rm -rf immortalwrt-23.05.3-ramips-mt7621-xiaomi_mi-router-cr6606-squashfs-firmware.bin
sudo rm -rf immortalwrt-23.05.3-ramips-mt7621-xiaomi_mi-router-cr6606-squashfs-sysupgrade.bin
sleep 3
