#!/bin/bash

mkdir /home/$USER/.config/systemd/
mkdir /home/$USER/.config/systemd/user/
cp ./sunshine.service /home/$USER/.config/systemd/user/
systemctl --user enable sunshine.service

