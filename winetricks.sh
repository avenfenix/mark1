#!/bin/bash


cd ~/
wget https://raw.githubusercontent.com/Winetricks/winetricks/master/src/winetricks
chmod +x winetricks
sudo mv winetricks /usr/local/bin/

echo '#!/bin/bash 
export BOX86_NOBANNER=1 WINE=wine WINEPREFIX=~/.wine32 WINESERVER=~/wine/bin/wineserver
wine '"/usr/local/bin/winetricks "'"$@"' > /usr/local/bin/winetricks32
chmod +x /usr/local/bin/winetricks32
echo '#!/bin/bash 
export BOX64_NOBANNER=1 WINE=wine64 WINEPREFIX=~/.wine64 WINESERVER=~/wine64/bin/wineserver
wine64 '"/usr/local/bin/winetricks "'"$@"' > /usr/local/bin/winetricks64

winetricks32 --gui
winetricks64 --gui

winetricks32 dotnet20sp2
winetricks64 dotnet20sp2

cd ~/Desktop
echo '[Desktop Entry]
Name=Wine32 Explorer
Exec=bash -c "wine explorer"
Icon=wine
Type=Application' > ~/Desktop/Wine32_Explorer.desktop
chmod +x ~/Desktop/Wine32_Explorer.desktop
cp ~/Desktop/Wine32_Explorer.desktop /usr/share/applications/

cd ~/Desktop
echo '[Desktop Entry]
Name=Wine64 Explorer
Exec=bash -c "wine64 explorer"
Icon=wine
Type=Application' > ~/Desktop/Wine64_Explorer.desktop
chmod +x ~/Desktop/Wine64_Explorer.desktop
cp ~/Desktop/Wine64_Explorer.desktop /usr/share/applications/

cd ~/Desktop
echo '[Desktop Entry]
Name=Winetricks32 Explorer
Exec=bash -c "winetricks32 --gui"
Icon=wine
Type=Application' > ~/Desktop/Winetricks32_gui.desktop
chmod +x ~/Desktop/Winetricks32_gui.desktop
cp ~/Desktop/Winetricks32_gui.desktop /usr/share/applications/

cd ~/Desktop
echo '[Desktop Entry]
Name=Winetricks64 Explorer
Exec=bash -c "winetricks64 --gui"
Icon=wine
Type=Application' > ~/Desktop/Winetricks64_gui.desktop
chmod +x ~/Desktop/Winetricks64_gui.desktop
cp ~/Desktop/Winetricks64_gui.desktop /usr/share/applications/


chmod +x /usr/local/bin/winetricks64

sudo apt-get install -y zenity
