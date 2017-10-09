#! /bin/bash

creatdir()
{
	dir="$1"
	if [ ! -d "$dir" ]
	then
		sudo mkdir $dir
	fi
}

sudo mkdir /tftpboot
sudo chmod 777 /tftpboot -R
sudo apt-get install tftp tftpd
sudo apt-get install openbsd-inetd

dir="/etc/inetd.conf"
echo "tftp dgram udp wait nobody /usr/sbin/tcpd /usr/sbin/in.tftpd /tftpboot">>$dir

dir2="/etc/default/tftpd-hpa"
creatdir $dir2
echo "#Defaults for tftpd-hpa">>$dir2
echo "RUN_DAEMON=\"yes\"">>$dir2
echo "OPTIONS=\"-l -s /tftpboot\"">>$dir2

sudo /etc/init.d/openbsd-inetd reload
sudo /etc/init.d/openbsd-inetd restart

