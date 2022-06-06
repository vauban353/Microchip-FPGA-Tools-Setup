# Microchip-FPGA-Tools-Setup

This script is intended for use on Ubuntu to setup environment variables allowing command line development for PolarFire SoC.

## Executing the script

This script needs to be sourced. Do not forget the leading dot.

```
. ./setup-microchip-tools.sh
```

## Adjusting the script for your installation
By default the script assumes that the tools are installed in your home directory as follows:

```
  Home
    |
    |-Microchip
        |
        |- Libero_SoC_v2021.3
        |- license
        |- Linux_Licensing_Daemon
        |- SoftConsole-v2021.3-7.0.0.599
```

Edit the top of the script to adjust installation directory names if the tools are installed in other locations on your machine or if you are using different versions of the tools.

## Notes on installing Libero 2022.1 on Ubuntu 22.04
There are a couple pre-requisites required I did not see mentioned by the installer:
```
sudo apt-get install python3-pyqt5
sudo apt-get install lsb
```
