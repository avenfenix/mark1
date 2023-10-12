#!/bin/bash

cd ~
# Actualizar
sudo apt-get update
sudo apt-get upgrade

# Instalar Dotnet
wget https://download.visualstudio.microsoft.com/download/pr/a2afb4da-478b-4ffa-aeeb-a37a313d6fc8/0897a8456d42f306519de9a15b1e14ef/dotnet-sdk-6.0.414-linux-arm64.tar.gz
mkdir -p $HOME/dotnet && tar zxf dotnet-sdk-6.0.414-linux-arm64.tar.gz -C $HOME/dotnet
source .bashrc

# Instalar OpenBullet
mkdir ~/Apps/
mkdir ~/Apps/OpenBullet2
wget https://github.com/openbullet/OpenBullet2/releases/download/0.2.5/OpenBullet2.zip
unzip OpenBullet2.zip -d ~/Apps/OpenBullet2/
