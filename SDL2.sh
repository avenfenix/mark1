# SDL2
sudo apt-get install -y libfreetype6-dev libgl1-mesa-dev libgles2-mesa-dev libdrm-dev libgbm-dev libudev-dev libasound2-dev liblzma-dev libjpeg-dev libtiff-dev libwebp-dev git build-essential
cd ~
wget https://libsdl.org/release/SDL2-2.0.10.tar.gz
tar zxvf SDL2-2.0.10.tar.gz
cd SDL2-2.0.10
./configure --enable-video-kmsdrm --disable-video-opengl --disable-video-x11 --disable-video-rpi &&
make -j$(nproc) &&
sudo make install

Next, we need SDL2_image:
cd ~
wget https://libsdl.org/projects/SDL_image/release/SDL2_image-2.0.5.tar.gz
tar zxvf SDL2_image-2.0.5.tar.gz
cd SDL2_image-2.0.5
./configure && make -j $(nproc) &&
sudo make install

...and SDL2_ttf:
cd ~
wget https://libsdl.org/projects/SDL_ttf/release/SDL2_ttf-2.0.15.tar.gz
tar zxvf SDL2_ttf-2.0.15.tar.gz
cd SDL2_ttf-2.0.15
./configure && make -j $(nproc) &&
sudo make install
sudo ldconfig -v
