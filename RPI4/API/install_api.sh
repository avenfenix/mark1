#!/bin/bash

#Working directory es 

## codigo para instalar
mkdir /home/$USER/bin/
cp ./rpi-api /home/$USER/bin/
cp ./rpiapi.service rpiapi.service.orig
sed -i "s/user/$USER/g" rpiapi.service
cp ./rpiapi.service /home/$USER/.config/systemd/user/rpiapi.service
rm ./rpiapi.service
mv ./rpiapi.service.orig ./rpiapi.service

systemctl --user enable rpiapi.service
systemctl --user start rpiapi.service
