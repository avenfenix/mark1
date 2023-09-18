#!/bin/bash

USERNAME="$1"

echo "Por favor verifique que este conectado el USB1"

## Change hostname
rm /etc/hosts
cp ./etc/* /etc/

UUID=$(blkid -s UUID -o value /dev/sda1)
echo "UUID=$UUID /home/$USERNAME/USB1 ext4 user,errors=remount-ro,auto,exec,rw 0 0" | sudo tee -a /etc/fstab
