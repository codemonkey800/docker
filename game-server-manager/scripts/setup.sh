#!/bin/bash

useradd -rm gsm
mkdir -p /home/gsm

if ! wget -O /home/gsm/server https://gameservermanagers.com/dl/$1; then
    exit -1
fi
chmod +x /home/gsm/server
chown -R gsm:gsm /home/gsm

