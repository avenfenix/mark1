#!/bin/bash

USERNAME="$1"
echo "Installing for $USERNAME"

## IP ESTATICA USB0
echo "interface usb0" >> /etc/dhcp.conf
echo static ip_address=192.168.42.2/24 >> /etc/dhcpcd.conf

## CONFIG PERSONAL
cat ./boot/config.txt > /boot/config.txt

## ETC FILES
#rm "/etc/rc.local"
#cp ./etc/* /etc/

## MONTAR USB1 AUTOMATICAMENTE
UUID=$(blkid -s UUID -o value /dev/sda1)
echo "UUID=$UUID /home/$USERNAME/USB1 ext4 user,errors=remount-ro,auto,exec,rw 0 0" | sudo tee -a /etc/fstab

## PAQUETES
apt-get update
apt-get remove chromium-browser
apt-get install firefox-esr
apt-get install screen
#apt-get install git
#curl -fsSL https://code-server.dev/install.sh | sh

### OVERCLOCK
git clone https://github.com/Jack477/CommanderPi
cd CommanderPi
chmod +x install.sh
./install.sh
cd ..
rm -r CommanderPi
