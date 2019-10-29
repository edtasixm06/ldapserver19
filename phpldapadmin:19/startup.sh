#! /bin/bash
bash /opt/docker/install.sh
/sbin/php-fpm
/usr/sbin/httpd -D FOREGROUND
#httpd -S
#echo $(pgrep httpd)


