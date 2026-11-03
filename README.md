# pixel-usb-nopower

KernelSU/Magisk 模块：Pixel（Tensor）连 USB 时不取电，数据和 adb 正常。

原理：向 `/sys/devices/platform/google,charger/charge_stop_level` 写入 5，驱动会挂起 USB 输入。

## 安装

`build.sh` 打包后刷入 zip，重启。

## 用法

管理器里的执行按钮用来切换。命令行：

```sh
usbpow off [min%]  # 不取电，电量 <= min（默认 30）时自动恢复
usbpow on          # 恢复
usbpow             # 状态
```
