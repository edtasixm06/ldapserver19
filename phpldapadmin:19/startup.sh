#! /bin/bash
bash /opt/docker/install.sh
/sbin/php -fpm
/usr/sbin/httpd $OPTIONS
httpd -S
echo $(pgrep httpd)


