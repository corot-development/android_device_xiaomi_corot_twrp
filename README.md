# TWRP device tree for Redmi K60 Ultra
Redmi K60 Ultra (codenamed _"corot"_) 
![corot](https://i02.appmifile.com/329_operator_sg/14/08/2023/3fcfdc0e83081349795e70056be19e35.png)
## Device specifications

Basic   | Spec Sheet
-------:|:-------------------------
SoC     | MediaTek Dimensity 9200+
CPU     | 1x 3.35 GHz Cortex-X3, 3x 3.0 GHz Cortex-A715, 4x 2.0 GHz Cortex-A510
GPU     | Immortalis-G715 MC11
Memory  | 12/16/24 GB
Shipped Android Version | 13
Storage | 256/512/1024 GB
Battery | 5000 mAh, Li-Polymer

## Fix mifs? 
[commit](https://github.com/YuKongA/android_bootable_recovery_twrp-14/commit/d7167c4d7b9cd341c049d62c876f365b58a39542)

## How to compile？
```
. build/envsetup.sh
lunch twrp_corot-eng
mka vendorbootimage
```

## Features

Works:
- [X] ADB
- [X] Display
- [X] Touch 
- [X] Fasbootd
- [X] USB OTG
