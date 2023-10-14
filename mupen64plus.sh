#!/bin/bash

cd ~
sudo apt install -y libboost-dev
sudo apt install -y libboost-filesystem-dev
wget https://github.com/mupen64plus/mupen64plus-core/releases/download/2.5.9/mupen64plus-bundle-src-2.5.9.tar.gz
tar -zxf mupen64plus-bundle-src-2.5.9.tar.gz 
cd mupen64plus-bundle-src-2.5.9/
sudo CFLAGS='-mfpu=neon -mtune=cortex-a72 -march=armv8-a' ./m64p_build.sh NEON=1 USE_GLES=1 VFP_HARD=1 NEW_DYNAREC=1
