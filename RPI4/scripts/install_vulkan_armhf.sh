#!/bin/bash

sudo apt update
sudo apt upgrade -y
sudo apt-get install libxcb-randr0-dev libxrandr-dev -y
sudo apt-get install libxcb-xinerama0-dev libxinerama-dev libxcursor-dev -y
sudo apt-get install libxcb-cursor-dev libxkbcommon-dev xutils-dev -y
sudo apt-get install xutils-dev libpthread-stubs0-dev libpciaccess-dev -y
sudo apt-get install libffi-dev x11proto-xext-dev libxcb1-dev libxcb-*dev -y
sudo apt-get install libssl-dev libgnutls28-dev x11proto-dri2-dev -y
sudo apt-get install x11proto-dri3-dev libx11-dev libxcb-glx0-dev -y
sudo apt-get install libx11-xcb-dev libxext-dev libxdamage-dev libxfixes-dev -y
sudo apt-get install libva-dev x11proto-randr-dev x11proto-present-dev -y
sudo apt-get install libclc-dev libelf-dev mesa-utils -y
sudo apt-get install libvulkan-dev libvulkan1 libassimp-dev -y
sudo apt-get install libdrm-dev libxshmfence-dev libxxf86vm-dev libunwind-dev -y
sudo apt-get install libwayland-dev wayland-protocols -y
sudo apt-get install libwayland-egl-backend-dev -y
sudo apt-get install valgrind libzstd-dev vulkan-tools -y
sudo apt-get install git build-essential bison flex ninja-build -y
sudo apt install -y libxcb-randr0-dev libxrandr-dev \
        libxcb-xinerama0-dev libxinerama-dev libxcursor-dev \
        libxcb-cursor-dev libxkbcommon-dev xutils-dev \
        xutils-dev libpthread-stubs0-dev libpciaccess-dev \
        libffi-dev x11proto-xext-dev libxcb1-dev libxcb-*dev \
        bison flex libssl-dev libgnutls28-dev x11proto-dri2-dev \
        x11proto-dri3-dev libx11-dev libxcb-glx0-dev \
        libx11-xcb-dev libxext-dev libxdamage-dev libxfixes-dev \
        libva-dev x11proto-randr-dev x11proto-present-dev \
        libclc-dev libelf-dev git build-essential mesa-utils \
        libvulkan-dev ninja-build libvulkan1 \
        libdrm-dev libxshmfence-dev libxxf86vm-dev libunwind-dev \
		valgrind libzstd-dev vulkan-tools

# Install Python and Pip
sudo apt-get install python3 python3-pip
sudo pip3 install meson
sudo pip3 install mako

# Install libdrm
cd ~
wget https://dri.freedesktop.org/libdrm/libdrm-2.4.109.tar.xz
tar xvpf libdrm-2.4.109.tar.xz
cd libdrm-2.4.109/
mkdir build
cd build
FLAGS="-O2 -march=armv8-a+crc+simd -mtune=cortex-a72" CXXFLAGS="-O2 -march=armv8-a+crc+simd -mtune=cortex-a72" meson -Dudev=true -Dvc4=true -Dintel=false -Dvmwgfx=false -Dradeon=false -Damdgpu=false -Dnouveau=false -Dfreedreno=false -Dinstall-test-programs=true ..
ninja -j3
sudo ninja install
cd ~
rm -rf ~/libdrm-2.4.109.tar.xz
rm -rf ~/libdrm-2.4.109/



cd ~
git clone https://gitlab.freedesktop.org/mesa/mesa.git mesa_vulkan
