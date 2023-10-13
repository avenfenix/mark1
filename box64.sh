#!/bin/bash

# Requirements
sudo apt-get install -y cmake

cd ~
git clone https://github.com/ptitSeb/box64
cd box64
mkdir build; cd build; cmake .. -DRPI4ARM64=1 -DCMAKE_BUILD_TYPE=RelWithDebInfo
make -j2
sudo make install
sudo systemctl restart systemd-binfmt
