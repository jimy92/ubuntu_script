#! /bin/bash

testfile()
{
	if [ ! -f "$1" ]
	then
		echo "error no file $1!"
		exit 0
	fi
}

testfile "$1"

ret=$(file -b $1)

if [[ $ret = *rar* ]] || [[ $ret = *RAR* ]]
then
rar x $1
echo "rar"
exit 1
fi


if [[ $ret = *tar* ]]
then
tar xvf $1
echo "tar"
exit 1
fi


if [[ $ret = *bzip2* ]] && [[ $1 = *tar* ]]
then
tar jxvf $1
echo "tar.bz2"
exit 1
fi

if [[ $ret = *gzip* ]] && [[ $1 = *tar* ]]
then
tar zxvf $1
echo "tar.gz"
exit 1
fi

if [[ $ret = *bzip2* ]]
then
bunzip2 $1
echo "bz2"
exit 1
fi

if [[ $ret = *gzip* ]]
then
gunzip $1
echo "gz"
exit 1
fi

if [[ $ret = *Zip* ]]
then
unzip $1
echo "zip"
exit 1
fi

