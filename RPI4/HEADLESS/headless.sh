#!/bin/bash

###  SUNSHINE
wget https://github.com/LizardByte/Sunshine/releases/download/v0.20.0/sunshine-debian-bullseye-arm64.deb
apt-get install -f ./sunshine-debian-bullseye-arm64.deb
rm sunshine-debian-bullseye-arm64.deb

### MOONLIGHT
curl -1sLf 'https://dl.cloudsmith.io/public/moonlight-game-streaming/moonlight-qt/setup.deb.sh' | distro=raspbian codename=buster sudo -E bash
apt install moonlight-qt
apt update
apt upgrade
