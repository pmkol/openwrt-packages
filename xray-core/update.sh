#!/bin/sh
cd "$(dirname "$0")"
version=$(curl -s https://api.github.com/repos/XTLS/Xray-core/releases/latest | jq -r '.tag_name' | sed 's/v//g')
sha=$(curl "https://codeload.github.com/XTLS/xray-core/tar.gz/v{$version}" | sha256sum - | awk '{print $1'})
sed "s/^PKG_VERSION.*/PKG_VERSION:=${version}/g" Makefile > Makefile1
sed "s/^PKG_HASH.*/PKG_HASH:=${sha}/g" Makefile1 > Makefile2
rm Makefile1 Makefile
mv Makefile2 Makefile
