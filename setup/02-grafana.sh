#!/usr/bin/env bash

if [ "$(id -u)" -eq 0 ]; then
    echo "sudo check ok"
    echo "----"
else
    echo "please run as root user"
    exit
fi
