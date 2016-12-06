#!/bin/bash

dpkg --add-architecture i386

apt-get update
apt-get install -y $(cat /tmp/deps)
rm -rf /var/lib/apt/lists/*

