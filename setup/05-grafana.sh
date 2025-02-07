#!/usr/bin/env bash

# ref
# https://grafana.com/docs/grafana/latest/setup-grafana/installation/debian/


if [ "$(id -u)" -eq 0 ]; then
    echo "sudo check ok"
    echo "----"
else
    echo "please run as root user"
    exit
fi
export DEBIAN_FRONTEND=noninteractive
export NEEDRESTART_MODE=a

sudo apt-get install -y apt-transport-https software-properties-common wget
mkdir -p /etc/apt/keyrings/
wget -q -O - https://apt.grafana.com/gpg.key | gpg --dearmor | tee /etc/apt/keyrings/grafana.gpg > /dev/null

echo "deb [signed-by=/etc/apt/keyrings/grafana.gpg] https://apt.grafana.com stable main" | sudo tee -a /etc/apt/sources.list.d/grafana.list
apt-get update
apt-get install -y grafana

/sbin/service grafana-server start
