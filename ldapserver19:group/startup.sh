#! /bin/bash
bash /opt/docker/install.sh
ulimit -n 1024
/sbin/slapd -d0


