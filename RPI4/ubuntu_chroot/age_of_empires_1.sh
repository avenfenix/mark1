#!/bin/bash

# Disenhado para Ubuntu chroot

echo "------ MARK I GAMES ------"
echo ""
echo "Installing Dependencies"
apt-get install unrar
echo "Downloading Age Of Empires I"
wget https://download2281.mediafire.com/qcwn0e3s0ozg60G8kzHPGEEGfeaDfH5a2sXIAiwwCCOZQ81_uXJ8AMa7SDNifbeqIBOnp9XeXLp9UEe3tHlQw-5qa1ZwrL7Vs5RZDw-CB64rV11CI9QXnmF02mgOH1W7orP4o71KgrtUI4YZw_00ej6hFdRSiWTjlXAX3zAv0Gj-7A/pxs1ub5smjhwg0n/AOE1GLD_RPK_SPA.rar
unrar x AOE1GLD_RPK_SPA.rar
echo "\nOpen Setup.exe"
