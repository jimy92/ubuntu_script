#! /bin/bash

sudo apt-get update
sudo apt-get -u upgrade

sudo apt-get install build-essential	-y #包含了常用的编译工具，gcc.g++.make...
sudo apt-get install u-boot-tools uboot-mkimage ncurses-dev -y
sudo apt-get install ssh -y
sudo apt-get install xrdp	-y	#远程桌面
sudo apt-get install git -y
sudo apt-get install gdebi -y            #安装已下载的包的工具
sudo apt-get install wget -y              #从网络上自动下载文件的自由工具
sudo apt-get install kpartx fakeroot texinfo bison -y
sudo apt-get install libncurses5-dev zlib1g-dev gawk flex patch git-core g++ subversion -y

sudo apt-get install lib32z1 lib32ncurses5 lib32stdc++6 g++-multilib lib32gcc1 libc6-i386 -y			#64位系统安装32位的库
sudo apt-get install flashplugin-installer
