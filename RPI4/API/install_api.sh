#!/bin/bash

#Working directory es 

## codigo para instalar
mkdir /home/$USER/bin/
cp ./rpi-api /home/$USER/bin/
cp ./rpiapi.service /home/$USER/.config/systemd/user/rpiapi.service

systemctl --user enable rpiapi.service
systemctl --user start rpiapi.service
