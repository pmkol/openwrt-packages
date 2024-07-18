# OpenWrt Packages 在线更新脚本
在线升级插件版本前，请先fork本项目，并在你的仓库执行以下操作：

【 注意：下方文件链接是本项目的地址，请自行更改成你的仓库地址 】

- 在 [pkg-update.sh](https://github.com/pmkol/openwrt-packages/blob/main/pkg-update.sh) 添加要更新的插件
- 在 [build-packages.yml](https://github.com/pmkol/openwrt-packages/blob/main/.github/workflows/build-packages.yml#L36) 添加要编译的插件
- 在 [pkg-install.sh](https://github.com/pmkol/openwrt-packages/blob/main/pkg-install.sh#L8) 配置默认更新的插件
- 在 [pkg-install.sh](https://github.com/pmkol/openwrt-packages/blob/main/pkg-install.sh#L9) 配置你的仓库地址
- 双击右上角的 ★ 等待编译完成

#### 快速使用 ####
快速更新本项目示例的默认插件xray-core、sing-box
```
curl https://raw.githubusercontent.com/pmkol/openwrt-packages/main/pkg-install.sh | bash
```

#### 更多说明 ####
更新默认仓库的指定插件
```
curl https://raw.githubusercontent.com/用户名/仓库名/main/pkg-install.sh | bash -s xray-core
```

更新指定仓库的默认插件（该仓库中的固件必须使用本项目编译）
```
curl https://raw.githubusercontent.com/用户名/仓库名/main/pkg-install.sh | bash -s https://github.com/pmkol/openwrt-packages
```

更新指定仓库中的指定插件（该仓库中的固件必须使用本项目编译）
```
curl https://raw.githubusercontent.com/用户名/仓库名/main/pkg-install.sh | bash -s xray-core https://github.com/pmkol/openwrt-packages
```
