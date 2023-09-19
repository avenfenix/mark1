#!/bin/bash

## IP ESTATICA USB0 
echo "interface usb0\nstatic ip_address=192.168.42.2/24" >> /etc/dhcpcd.conf

## PAQUETES
sudo apt-get update

### SUNSHINE
sudo apt-get install cmake gcc-10 g++-10 libssl-dev libavdevice-dev libboost-thread-dev libboost-filesystem-dev libboost-log-dev libpulse-dev libopus-dev libevdev-dev
sudo apt-get install libxtst-dev libx11-dev libxrandr-dev libxfixes-dev libxcb1-dev libxcb-shm0-dev libxcb-xfixes0-dev
sudo apt-get install nvidia-cuda-dev nvidia-cuda-toolkit
git clone https://github.com/loki-47-6F-64/sunshine.git --recurse-submodules
cd sunshine && mkdir build && cd build
cmake -DCMAKE_C_COMPILER=gcc-10 -DCMAKE_CXX_COMPILER=g++-10 ..
make -j ${nproc}
usermod -a -G input $USER
echo 'KERNEL=="uinput", GROUP="input", MODE="0660"' >> /etc/udev/rules.d/85-sunshine-input.rules
mkdir /home/$USER/.config/systemd/
mkdir /home/$USER/.config/systemd/user
cp sunshine.service ~/.config/systemd/user/
systemctl --user enable sunshine

### MOONLIGHT
curl -1sLf 'https://dl.cloudsmith.io/public/moonlight-game-streaming/moonlight-qt/setup.deb.sh' | distro=raspbian codename=buster sudo -E bash
apt install moonlight-qt
apt update
apt upgrade

## CLEAN
rm -r sunshine*
