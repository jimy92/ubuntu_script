#!/usr/bin/python
#coding:utf-8

import os
import sys

sambadir = "/etc/samba/smb.conf"
username = "jimy"

def configSamba():
	print("start install samba......")
	os.system("sudo apt-get install samba samba-common smbclient")
	os.system("sudo cp /etc/samba/smb.conf /etc/samba/smb.conf.bak")

	str = 	"\n[jimy]\n" + \
			"path = /home/" + username + "\n" + \
			"available = yes\n" + \
			"browseable = yes\n"+ \
			"public = yes\n" + \
			"writable = yes\n" + \
			"valid users=jimy\n" + \
			"\n[tftpboot]\n" + \
			"path = /tftpboot\n" + \
			"available = yes\n" + \
			"browseable = yes\n" + \
			"public = yes\n" + \
			"writable = yes\n" + \
			"\n[opt]\n" + \
			"path = /opt\n" + \
			"available = yes\n" + \
			"browseable = yes\n" + \
			"public = yes\n" + \
			"writable = yes\n"

	fp = open(sambadir,'a')
	fp.write(str)
	fp.close()
	
	os.system("sudo smbpasswd -a $username")
	os.system("sudo /etc/init.d/smbd reload")
	os.system("sudo /etc/init.d/smbd restart")
	
	print("end install samba")

def main():
	configSamba()

if __name__ == "__main__":
	main()

