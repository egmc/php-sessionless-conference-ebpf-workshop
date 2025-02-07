#!/usr/bin/env bash

if [ "$(id -u)" -eq 0 ]; then
    echo "sudo check ok"
    echo "----"
else
    echo "please run as root user"
    exit
fi

mkdir mkdir /usr/local/prometheus
wget https://github.com/prometheus/prometheus/releases/download/v3.1.0/prometheus-3.1.0.linux-amd64.tar.gz -O /tmp/prometheus.tar.gz
tar xvzf /tmp/prometheus.tar.gz -C /tmp/

cp -pr /tmp/prometheus*amd64/* /usr/local/prometheus/

cp -f $(cd $(dirname $0); pwd)/conf/prometheus.yml /usr/local/prometheus/prometheus.yml

chown -R nobody /usr/local/prometheus/

cp -f $(cd $(dirname $0); pwd)/conf/prometheus.service /etc/systemd/system/prometheus.service

systemctl daemon-reload
systemctl start prometheus.service
