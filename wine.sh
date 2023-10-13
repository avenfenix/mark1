#!/bin/bash

sudo apt-get install cabextract libfreetype6 libfreetype6:armhf libfontconfig libfontconfig:armhf libxext6 libxext6:armhf libxinerama-dev libxinerama-dev:armhf libxxf86vm1 libxxf86vm1:armhf libxrender1 libxrender1:armhf libxcomposite1 libxcomposite1:armhf libxrandr2 libxrandr2:armhf libxi6 libxi6:armhf libxcursor1 libxcursor1:armhf libvulkan-dev libvulkan-dev:armhf

cd ~/
wget https://github.com/Kron4ek/Wine-Builds/releases/download/8.0.1/wine-8.0.1-amd64.tar.xz
wget https://github.com/Kron4ek/Wine-Builds/releases/download/8.0.1/wine-8.0.1-x86.tar.xz
tar xvf wine-8.0.1-amd64.tar.xz
tar xvf wine-8.0.1-x86.tar.xz
rm wine-8.0.1-amd64.tar.xz wine-8.0.1-x86.tar.xz
sudo mv wine-8.0.1-amd64 wine64
sudo mv wine-8.0.1-x86 wine

echo 'export DISPLAY=:0
export BOX86_PATH=~/wine/bin/
export BOX86_LD_LIBRARY_PATH=~/wine/lib/wine/i386-unix/:/lib/i386-linux-gnu/:/lib/aarch64-linux-gnu/:/lib/arm-linux-gnueabihf/:/usr/lib/aarch64-linux-gnu/:/usr/lib/arm-linux-gnueabihf/:/usr/lib/i386-linux-gnu/
export BOX64_PATH=~/wine64/bin/
export BOX64_LD_LIBRARY_PATH=~/wine64/lib/i386-unix/:~/wine64/lib/wine/x86_64-unix/:/lib/i386-linux-gnu/:/lib/x86_64-linux-gnu:/lib/aarch64-linux-gnu/:/lib/arm-linux-gnueabihf/:/usr/lib/aarch64-linux-gnu/:/usr/lib/arm-linux-gnueabihf/:/usr/lib/i386-linux-gnu/:/usr/lib/x86_64-linux-gnu' >> ~/.bashrc

source ~/.bashrc

echo '#!/bin/bash 
export WINEPREFIX=~/.wine32
box86 '"$HOME/wine/bin/wine "'"$@"' > /usr/local/bin/wine
chmod +x /usr/local/bin/wine
echo '#!/bin/bash 
export WINEPREFIX=~/.wine64
box64 '"$HOME/wine64/bin/wine64 "'"$@"' > /usr/local/bin/wine64
chmod +x /usr/local/bin/wine64

box86 wine
box64 wine64

WINEPREFIX=~/.wine32 box86 wine winecfg
WINEPREFIX=~/.wine64 box64 wine64 winecfg

cd ~/Downloads/
wget https://github.com/notepad-plus-plus/notepad-plus-plus/releases/download/v8.5.2/npp.8.5.2.Installer.exe
wget https://github.com/notepad-plus-plus/notepad-plus-plus/releases/download/v8.5.2/npp.8.5.2.Installer.x64.exe
wine npp.8.5.2.Installer.exe
wine64 npp.8.5.2.Installer.x64.exe

wine64 ~/.wine32/drive_c/Program\ Files/Notepad++/notepad++.exe


