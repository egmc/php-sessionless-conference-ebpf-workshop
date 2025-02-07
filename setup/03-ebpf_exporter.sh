
#!/usr/bin/env bash

if [ "$(id -u)" -eq 0 ]; then
    echo "sudo check ok"
    echo "----"
else
    echo "please run as root user"
    exit
fi

wget https://github.com/cloudflare/ebpf_exporter/releases/download/v2.4.2/ebpf_exporter.x86_64 -O /usr/local/bin/ebpf_exporter
chmod +x /usr/local/bin/ebpf_exporter
