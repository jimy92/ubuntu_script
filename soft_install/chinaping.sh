#! /bin/bash

echo "hello"

sudo apt-get install ibus ibus-clutter ibus-gtk ibus-gtk3 ibus-qt4 im-switch

im-switch -s ibus

sudo apt-get install ibus-googlepinyin
sudo apt-get install ibus-sunpinyin
#reboot and last decide show all decision
ibus-setup

