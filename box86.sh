#!/bin/bash

sudo dpkg --add-architecture armhf && sudo apt-get update
sudo apt-get install libc6:armhf -y

sudo apt install gcc-arm-linux-gnueabihf # building 32-bit ARM code on aarch64 requires this armhf gcc cross-compiler toolchain 
git clone https://github.com/ptitSeb/box86
cd box86
mkdir build; cd build; cmake .. -DRPI4ARM64=1 -DCMAKE_BUILD_TYPE=RelWithDebInfo # -DRPI4ARM64=1 for Pi4 aarch64 (use `-DRPI3ARM64=1` for a PI3 model)
make -j2
sudo make install
sudo systemctl restart systemd-binfmt
