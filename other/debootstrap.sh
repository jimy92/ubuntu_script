#! /bin/bash

set -e

rootfs_dir="./rootfs"
distro="trusty"

creatdir()
{
	dir="$1"
	if [ ! -d "$dir" ]
	then
		sudo mkdir $dir
	fi
}

#sudo apt-get update
sudo apt-get install debootstrap
sudo apt-get install qemu-user-static binfmt-support

creatdir $rootfs_dir

debootstrap --arch=armhf --foreign $distro $rootfs_dir

sudo cp /usr/bin/qemu-arm-static ${rootfs_dir}/usr/bin/
sudo cp /etc/resolv.conf ${rootfs_dir}/etc
sudo chroot $rootfs_dir


