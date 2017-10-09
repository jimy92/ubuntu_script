
echo "Manual Installation!!!!!!"

echo "sudo apt-get install vsftpd"
echo "sudo vi /etc/vsftpd.conf"
echo "将默认的#去掉即可。"
echo "anonymous_enable=NO "       #    		//表示：不允许匿名访问
echo "local_enable=YES "          #        //设定本地用户可以访问。
echo "write_enable=YES "          #         //设定可以进行写操作
echo "local_umask=022  "          #          //设定上传后文件的权限掩码。
echo "重启vsftpd服务"
echo "sudo service vsftpd restart"
#


