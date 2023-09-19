#!/bin/bash
# GTA3 Install

USERNAME="$USER"

cd /home/$USERNAME/USB1/games/
sudo mkdir GTAIII
cd GTAIII
sudo git clone https://github.com/Jai-JAP/RPi-GTA-re
cd RPi-GTA-re
sudo unzip re3-gamefiles.zip
sudo unzip re3-rel-arm64.zip
cd ..
sudo cp -r ./RPi-GTA-re/re3-gamefiles/* .
sudo cp ./RPi-GTA-re/re3 .
sudo rm -r ./RPi-GTA-re/
sudo cp /home/$USERNAME/USB1/games/gta3.zip .
sudo unzip gta3.zip
sudo rm gta3.zip
