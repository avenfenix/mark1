#!/bin/bash

USERNAME="$1"

## IP ESTATICA USB0 
echo "interface usb0\nstatic ip_address=192.168.42.2/24" >> /etc/dhcpcd.conf

## PAQUETES
apt-get update

### SUNSHINE
apt install libboost-chrono1.74.0
wget https://github.com/LizardByte/Sunshine/releases/download/v0.20.0/sunshine-debian-bullseye-arm64.deb
apt-get install -f ./sunshine-debian-bullseye-arm64.deb
cp ./scripts/sunshine.sh /home/$USERNAME/scripts/

### MOONLIGHT
curl -1sLf 'https://dl.cloudsmith.io/public/moonlight-game-streaming/moonlight-qt/setup.deb.sh' | distro=raspbian codename=buster sudo -E bash
apt install moonlight-qt
apt update
apt upgrade

## CLEAN
rm -r sunshine*
