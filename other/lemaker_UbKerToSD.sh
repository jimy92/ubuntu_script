#! /bin/bash
set -e

system_name="LeMaker"

dev_dir="/dev"
dev_name="sdb"

#sudo dd if=/dev/zero of=${system_name}.img bs=1M count=3500

echo "o:clean all disk"
echo "n:creat primary"
echo "p:printf disk"
echo "w:save disk"
echo "primary1 16384 114687"
echo "primary2 114688 -1"
sudo fdisk ${dev_dir}/${dev_name}

sudo fdisk -l

#sudo umount ${dev_dir}/${dev_name}1
#sudo umount ${dev_dir}/${dev_name}1
sudo mkfs.vfat ${dev_dir}/${dev_name}1
sudo mkfs.ext4 ${dev_dir}/${dev_name}2

sudo dd if=bootloader.bin of=${dev_dir}/${dev_name}  bs=512 seek=4097
sudo dd if=u-boot-dtb.img of=${dev_dir}/${dev_name} bs=512 seek=6144
sudo dd if=misc.img of=${dev_dir}/${dev_name}1

sudo mount ${dev_dir}/${dev_name}2 /mnt
sudo cp -a rootfs/* /mnt
sync
sudo umount /mnt

sync


