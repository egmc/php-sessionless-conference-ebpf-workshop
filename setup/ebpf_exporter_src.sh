#!/usr/bin/env bash
if [ "$(id -u)" -eq 0 ]; then
    echo "this scripted is intended to run by non-root user"
    exit
else
    echo "user check OK"
fi

git clone https://github.com/egmc/ebpf_exporter.git
git fetch origin ebpf-php-sample
git checkout -b ebpf-php-sample origin/ebpf-php-sample
