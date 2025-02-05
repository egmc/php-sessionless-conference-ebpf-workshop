#!/usr/bin/env bash

if [ "$(id -u)" -eq 0 ]; then
    echo "sudo check ok"
    echo "----"
else
    echo "please run as root user"
    exit
fi


apt update
apt install -y bpftrace

apt install -y libelf-dev
apt install -y ubuntu-dbgsym-keyring

echo "deb http://ddebs.ubuntu.com $(lsb_release -cs) main restricted universe multiverse
deb http://ddebs.ubuntu.com $(lsb_release -cs)-updates main restricted universe multiverse
deb http://ddebs.ubuntu.com $(lsb_release -cs)-proposed main restricted universe multiverse" | \
sudo tee -a /etc/apt/sources.list.d/ddebs.list
apt update
apt install -y bpftrace-dbgsym

# install packages
apt-get install -y apt-transport-https ca-certificates curl clang llvm jq
apt-get install -y libelf-dev libpcap-dev libbfd-dev binutils-dev build-essential make
apt-get install -y linux-tools-common linux-tools-$(uname -r)
apt-get install -y bpfcc-tools
apt-get install -y python3-pip


# middlewares

DEBIAN_FRONTEND=noninteractive NEEDRESTART_MODE=a apt install -y apache2
DEBIAN_FRONTEND=noninteractive NEEDRESTART_MODE=a apt install -y mysql-server
DEBIAN_FRONTEND=noninteractive NEEDRESTART_MODE=a apt install -y php
DEBIAN_FRONTEND=noninteractive NEEDRESTART_MODE=a apt install -y php-curl php-dev php-gd php-xml php-yaml php-mbstring php-mysqlnd
