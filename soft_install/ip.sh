#! /bin/bash

mode="static"
ipdir="/etc/network/interfaces"

if [ "$mode" = "static" ]
then
echo ">>>>>>>>>>static mode<<<<<<<<<<"
echo "auto lo">$ipdir
echo "iface lo inet loopback">>$ipdir
echo "auto eth0">>$ipdir
echo "iface eth0 inet static">>$ipdir
echo "address 192.168.1.168">>$ipdir
echo "gateway 192.168.1.1">>$ipdir
echo "netmask 255.255.255.0">>$ipdir
fi

if [ "$mode" = "dhcp" ]
then
echo ">>>>>>>>>>>dhcp mode<<<<<<<<<<"
echo "auto lo">$ipdir
echo "iface lo inet loopback">>$ipdir
echo "auto eth0">>$ipdir
echo "iface eth0 inet dhcp">>$ipdir
fi

dnsdir2="/etc/resolv.conf"
echo "nameserver 114.114.114.114">>$dnsdir2

dnsdir3="/etc/resolvconf/resolv.conf.d/base"
echo "nameserver 114.114.114.114">>$dnsdir3

sudo /etc/init.d/networking restart

ifconfig

