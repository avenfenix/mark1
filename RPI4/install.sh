#!/bin/bash

USERNAME="$1"

## CONFIG PERSONAL
cat ./boot/config.txt > /boot/config.txt

## ETC FILES
rm /etc/hosts
rm /etc/rc.local
cp ./etc/* /etc/

## HOME
cd /home/$USER
rm -r *

## MONTAR USB1 AUTOMATICAMENTE
UUID=$(blkid -s UUID -o value /dev/sda1)
echo "UUID=$UUID /home/$USERNAME/USB1 ext4 user,errors=remount-ro,auto,exec,rw 0 0" | sudo tee -a /etc/fstab

## IP ESTATICA USB0 
echo "interface usb0\nstatic ip_address=192.168.42.2/24" | sudo tee -a /etc/dhcpcd.conf

## ACTUALIZAR SISTEMA
apt-get update
apt-get upgrade

## SOFTWARE
apt-get install firefox-esr
apt-get install screen
#apt-get install git
#curl -fsSL https://code-server.dev/install.sh | sh

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

### OVERCLOCK
git clone https://github.com/Jack477/CommanderPi
chmod +x install.sh
./install.sh
apt-get install -y sysbench

### REMOVE 
apt-get remove chromium-browser
