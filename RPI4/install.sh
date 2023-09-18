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
curl -fsSL https://code-server.dev/install.sh | sh
