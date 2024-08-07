PB-Boot for Xiaomi CR6608/CR6609/CR6606

*.img 默认是NAND版本升级文件
*.bin默认是NOR文件
*.sha256是校验文件
*.ecc是带OOB数据用于nand编程器的bootloader.


此bootloader会从NAND Flash的0x200000读取uImage,目前不支持FitImage!!!

固件结构应该为: uImage+UBI镜像.




 
