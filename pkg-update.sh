#!/bin/bash

# xray-core
bash xray-core/update.sh

# sing-box
mkdir -p sing-box/files
curl -Ls https://raw.githubusercontent.com/openwrt/packages/master/net/sing-box/files/sing-box.conf > sing-box/files/sing-box.conf
curl -Ls https://raw.githubusercontent.com/openwrt/packages/master/net/sing-box/files/sing-box.init > sing-box/files/sing-box.init
curl -Ls https://raw.githubusercontent.com/openwrt/packages/master/net/sing-box/Makefile > sing-box/Makefile

# v2ray-data
git clone https://github.com/pmkol/v2ray-geodata v2ray-geodata
