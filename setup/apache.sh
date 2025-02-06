#!/usr/bin/env bash
if [ "$(id -u)" -eq 0 ]; then
    echo "sudo check ok"
    echo "----"
else
    echo "please run as root user"
    exit
fi

mkdir /etc/systemd/system/apache2.service.d
cp $(cd $(dirname $0); pwd)/conf/env.conf /etc/systemd/system/apache2.service.d/

systemctl daemon-reload
systemctl restart apache2.service
