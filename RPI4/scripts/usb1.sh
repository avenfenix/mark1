#!/bin/bash

UUID=$(blkid -s UUID -o value /dev/sda1)

echo "UUID=$UUID /home/$USER/USB1 ext4 user,errors=remount-ro,auto,exec,rw 0 0" | sudo tee -a /etc/fstab
