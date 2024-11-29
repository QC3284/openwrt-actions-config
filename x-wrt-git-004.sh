#!/bin/bash
#本仓库及文件只在Github发布
#作者：QC3284@github.com(https://github.com/QC3284)
#本仓库地址：https://github.com/QC3284/openwrt-actions-config
#最后更新时间：2024.11.29
7zz a -mx=9 -mmt=8 "openwrt-23.05.5-ramips-mt7621-xiaomi_mi-router-cr6606.zip" "openwrt-23.05.5-ramips-mt7621-xiaomi_mi-router-cr6606-initramfs-kernel.bin" "openwrt-23.05.5-ramips-mt7621-xiaomi_mi-router-cr6606-squashfs-firmware.bin" "openwrt-23.05.5-ramips-mt7621-xiaomi_mi-router-cr6606-squashfs-sysupgrade.bin"
sleep 3
sudo rm -rf openwrt-23.05.5-ramips-mt7621-xiaomi_mi-router-cr6606-squashfs-firmware.bin
sudo rm -rf openwrt-23.05.5-ramips-mt7621-xiaomi_mi-router-cr6606-squashfs-sysupgrade.bin
sudo rm -rf openwrt-23.05.5-ramips-mt7621-xiaomi_mi-router-cr6606-initramfs-kernel.bin
sleep 3
7zz a -mx=9 -mmt=8 "immortalwrt-23.05.4-ramips-mt7621-xiaomi_mi-router-cr6606.zip" "immortalwrt-23.05.4-ramips-mt7621-xiaomi_mi-router-cr6606-initramfs-kernel.bin" "immortalwrt-23.05.4-ramips-mt7621-xiaomi_mi-router-cr6606-squashfs-firmware.bin" "immortalwrt-23.05.4-ramips-mt7621-xiaomi_mi-router-cr6606-squashfs-sysupgrade.bin"
7zz a -mx=9 -mmt=8 "cr660x-pb-boot.zip" "pb-boot.ecc" "pb-boot.img" "pb-boot.sha256"
sleep 3
sudo rm -rf pb-boot.ecc
sudo rm -rf pb-boot.img
sudo rm -rf pb-boot.sha256
sudo rm -rf immortalwrt-23.05.4-ramips-mt7621-xiaomi_mi-router-cr6606-initramfs-kernel.bin
sudo rm -rf immortalwrt-23.05.4-ramips-mt7621-xiaomi_mi-router-cr6606-squashfs-firmware.bin
sudo rm -rf immortalwrt-23.05.4-ramips-mt7621-xiaomi_mi-router-cr6606-squashfs-sysupgrade.bin
sleep 3
