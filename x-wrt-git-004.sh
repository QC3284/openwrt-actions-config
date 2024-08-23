#!/bin/bash
curl http://downloads.pangubox.com:6380/lintel/CR660X/pb-boot/pb-boot.ecc -o pb-boot.ecc || curl https://raw.githubusercontent.com/QC3284/openwrt-actions-config/main/pb-boot-cr660x-back/pb-boot.ecc -o pb-boot.ecc
curl http://downloads.pangubox.com:6380/lintel/CR660X/pb-boot/pb-boot.img -o pb-boot.img || curl https://raw.githubusercontent.com/QC3284/openwrt-actions-config/main/pb-boot-cr660x-back/pb-boot.img -o pb-boot.img
curl http://downloads.pangubox.com:6380/lintel/CR660X/pb-boot/pb-boot.sha256 -o pb-boot.sha256 || curl https://raw.githubusercontent.com/QC3284/openwrt-actions-config/main/pb-boot-cr660x-back/pb-boot.sha256 -o pb-boot.sha256
sleep 3