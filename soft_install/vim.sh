#!/bin/bash

username=jimy

echo welcome script of vim
sudo apt-get install vim
sudo ln -sf /usr/bin/vim /usr/bin/vi
vimdir="/etc/vim/vimrc.local"

echo "set nocp">$vimdir
echo "set is">>$vimdir
echo "syntax on">>$vimdir
echo "set backspace=indent,eol,start">>$vimdir
echo "colo slate">>$vimdir

echo "set ru">>$vimdir
echo "set nu">>$vimdir
echo "set cin">>$vimdir
echo "set lines=30">>$vimdir
echo "set columns=88">>$vimdir
echo "set ts=2">>$vimdir
echo "set sw=2">>$vimdir
echo "set autoindent">>$vimdir
echo "set sm">>$vimdir
echo "set matchtime=1">>$vimdir

echo "set hls">>$vimdir
echo "set incsearch">>$vimdir

echo "set mouse=a">>$vimdir
echo "set selection=exclusive">>$vimdir
echo "set selectmode=mouse,key">>$vimdir

echo "set fileencodings=utf-8,gbk,ucs-bom,cp936">>$vimdir
echo "set termencoding=chinese">>$vimdir
echo "set termencoding=utf-8">>$vimdir
echo "set encoding=utf-8">>$vimdir
echo "set ambiwidth=double">>$vimdir
