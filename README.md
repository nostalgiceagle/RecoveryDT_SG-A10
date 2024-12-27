## <p align="center"> Recovery DT for Samsung Galaxy A10</p>


| Basics  | Specifications sheet|
|-------------|-----------|
| <p align="center"> CPU Architecture </p>| <p align="center"> 64BIT </p>|
| <p align="center"> System Architecture</p> | <p align="center"> 32BIT </p>|
| <p align="center"> Memory</p> | <p align="center"> 2GB / 4GB (LPDDR4x [1866 MHz])</p> |
| <p align="center"> Storage </p>| <p align="center"> 32GB (eMMC) </p>|
| <p align="center"> Expandable storage</p> |<p align="center">  Upto 512GB (with MicroSD Card) </p>|
| <p align="center">  WLAN</p> |<p align="center">  Wi-Fi 802.11 b/g/n, Wi-Fi Direct </p>|
| <p align="center">  Bluetooth</p> | <p align="center"> 5.0, A2DP, LE</p> |
| <p align="center">  Positioning </p>| <p align="center"> GPS, GLONASS, GALILEO, BDS </p>|
| <p align="center"> Chipset</p> | <p align="center"> Exynos 7884 (14 nm)</p>|
| <p align="center"> CPU </p>| <p align="center"> Octa-core (2x1.6 GHz Cortex-A73 & 6x1.35 GHz Cortex-A53)</p> |
| <p align="center">  GPU</p> |<p align="center">  Mali-G71 MP2</p> |
| <p align="center"> SIM </p>| <p align="center"> Dual SIM (Nano) 2G, 3G, 4G(voLTE)</p>|
| <p align="center"> UI & UX</p> |<p align="center">  Android 9.0 (Pie), upgradable to Android 11, One UI 3 (From Samsung, else OneUI6.1 available for this device at this date) </p>|
| <p align="center">  USB</p> | <p align="center"> microUSB 2.0, OTG </p>|
| <p align="center"> Color(s) Available</p> | <p align="center"> Blue, Black, Red, Gold</p> |
| <p align="center">  Model(s) Available </p>|<p align="center">  SM-A105F, SM-A105G, SM-A105M, SM-A105FN</p>|

> By default the device has 32bit system, you can port 64bit vendor to use 64bit system.
#### • Credits
> • Eureka Team for their DT & Kernel.
> 
> • Royna for new Eureka-Kernel with EROFS support.
>
> • Kevios12 because yes.
> 
> • TWRP Team for their Recovery.
> 
> • OrangeFOX team for their Recovery.
> 
> • PBRB Team for their Recovery.
##### <p align="center"> How-to compile it?</p>
<p align="center">  ———————————— </p>

```sh
. build/envsetup.sh
lunch omni_a10-eng
make recoveryimage -j$(nproc --all)
```
> [!TIP]
> You can also compile it from github actions as soon as it will be available.