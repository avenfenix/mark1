#!/bin/bash
# GTA3 Install

cd /home/$USER/USB1/games/
mkdir GTAIII
cd GTAIII
wget https://github.com/Jai-JAP/RPi-GTA-re/blob/main/re3-gamefiles.zip
unzip re3-gamefiles.zip
cp -r re3-gamefiles/* .
rm -r re3-gamefiles
wget https://github.com/Jai-JAP/RPi-GTA-re/blob/main/re3-rel-arm64.zip
unzip re3-rel-arm64.zip
rm re3-rel-arm64.zip
cp /home/$USER/USB1/games/gta3.zip .
unzip gta3.zip
