#!/bin/bash

USERNAME="$1"

echo "Por favor verifique que este conectado el USB1"

## CHANGE HOSTNAME
rm /etc/hosts
cp ./etc/* /etc/

## HOME
cd /home/$USER
rm -r *

## MONTAR USB1 AUTOMATICAMENTE
UUID=$(blkid -s UUID -o value /dev/sda1)
echo "UUID=$UUID /home/$USERNAME/USB1 ext4 user,errors=remount-ro,auto,exec,rw 0 0" | sudo tee -a /etc/fstab

## ACTUALIZAR SISTEMA
apt-get update
apt-get upgrade

## SOFTWARE
apt-get install firefox-esr                         
#apt-get install git                                  
#curl -fsSL https://code-server.dev/install.sh | sh

### SUNSHINE
wget https://github.com/LizardByte/Sunshine/releases/download/v0.20.0/sunshine-debian-bullseye-arm64.deb
apt-get install -f sunshine-debian-bullseye-arm64.deb

### MOONLIGHT
curl -1sLf 'https://dl.cloudsmith.io/public/moonlight-game-streaming/moonlight-qt/setup.deb.sh' | distro=raspbian codename=buster sudo -E bash
sudo apt install moonlight-qt
sudo apt update
sudo apt upgrade
# Habilitar Hardware Decoding
cat ./boot/config.txt > /boot/config.txt 
