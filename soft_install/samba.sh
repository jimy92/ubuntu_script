#! /bin/bash

username="jimy"

creatdir()
{
	dir="$1"
	if [ ! -d "$dir" ]
	then
		sudo mkdir $dir
	fi
}

sudo apt-get install samba samba-common smbclient
sudo cp /etc/samba/smb.conf /etc/samba/smb.conf.bak

sambadir="/etc/samba/smb.conf"

creatdir "/home/${username}"
echo "[jimy]">>$sambadir
echo "path = /home/${username}">>$sambadir
echo "available = yes">>$sambadir
echo "browseable = yes">>$sambadir
echo "public = yes">>$sambadir
echo "writable = yes">>$sambadir
echo "valid users=jimy">>$sambadir

creatdir "/tftpboot"
echo "[tftpboot]">>$sambadir
echo "path = /tftpboot">>$sambadir
echo "available = yes">>$sambadir
echo "browseable = yes">>$sambadir
echo "public = yes">>$sambadir
echo "writable = yes">>$sambadir

creatdir "/opt"
echo "[opt]">>$sambadir
echo "path = /opt">>$sambadir
echo "available = yes">>$sambadir
echo "browseable = yes">>$sambadir
echo "public = yes">>$sambadir
echo "writable = yes">>$sambadir

sudo smbpasswd -a $username

sudo /etc/init.d/smbd reload
sudo /etc/init.d/smbd restart
