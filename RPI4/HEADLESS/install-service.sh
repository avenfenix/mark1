#!/bin/bash

echo 'KERNEL=="uinput", SUBSYSTEM=="misc", OPTIONS+="static_node=uinput", TAG+="uaccess"' | sudo tee /etc/udev/rules.d/85-sunshine.rules
mkdir /home/$USER/.config/systemd/
mkdir /home/$USER/.config/systemd/user/
cp ./sunshine.service /home/$USER/.config/systemd/user/
systemctl --user enable sunshine.service

