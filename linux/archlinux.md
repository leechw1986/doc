# 制作Ｕ盘启动
  - 用 lsblk 找到U盘并确保没有挂载
  - mkfs.vfat /dev/sdb
  - dd bs=4M if=/home/qiw/Downloads/archlinux-2016.11.01-dual.iso of=/dev/sdb && sync

# 安装
  - 手动磁盘分区： cfdisk


    备注：8G的空间分了3个区，sda1分配了128M作为/boot挂载点，sda5分配了6G作为/挂载点，sda6分配了1.9G作为swap交换分区。



  - 格式化分区：


    mkfs.ext4 /dev/sdaX
    mkfs.ext4 /dev/sdaX



  - 格式化swap分区并启用：


    mkswap /dev/sdaX
    swapon /dev/sdaX


  - 挂载分区：


    mount /dev/sdaX /mnt
    mkdir /mnt/boot
    mount /dev/sdaX /mnt/boot


  - 连接网络：


    dhcpcd

  - 测试网络：


    ping -c 4 http://www.baidu.com


- 设置软件源：


    nano /etc/pacman.d/mirrorlist

    内容大致修改为：

    Server = http://mirrors.163.com/archlinux/$repo/os/$arch
    Server = http://mirrors.sohu.com/archlinux/$repo/os/$arch
    Server = http://mirrors.ustc.edu.cn/archlinux/$repo/os/$arch
    备注：更改镜像列表后请务必使用pacman -Syy强制刷新数据库。


- 安装基本系统：


    pacstrap /mnt base
    下载一段时间

- 生成fstab：


    genfstab -U -p /mnt >> /mnt/etc/fstab


- 检查生成的fstab是否正确：


    nano /mnt/etc/fstab
    若在运行genfstab或是之后发生错误，请勿再次运行genfstab，而是直接手动编辑fstab文件。


- 配置基础系统：


    arch-chroot /mnt /bin/bash


- 配置基础系统：


    arch-chroot /mnt /bin/bash
    nano /etc/locale.gen
    内容大致修改为：
    en_US.UTF-8 UTF-8
    zh_CN.UTF-8 UTF-8
    zh_TW.UTF-8 UTF-8
    locale-gen
    echo LANG=en_US.UTF-8 > /etc/locale.conf
    ln -s /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
    hwclock --systohc --utc
    echo archlinuxpc > /etc/hostname
    设置自动连接有线网络：
    systemctl start dhcpcd
    systemctl enable dhcpcd


# 系统

  ```
  字体 : $pacman -S wqy-microhei
  输入法 : 

  ```
