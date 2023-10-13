sudo apt-get install cabextract -y                                                                   # winetricks needs this installed
sudo mv /usr/local/bin/winetricks /usr/local/bin/winetricks-old                                      # Backup old winetricks
cd ~/Downloads && wget https://raw.githubusercontent.com/Winetricks/winetricks/master/src/winetricks # Download
sudo chmod +x winetricks && sudo mv winetricks /usr/local/bin/                                       # Install
