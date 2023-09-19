# Boost xxx: RPI4 -> MARK I

https://forums.raspberrypi.com/viewtopic.php?t=139003

https://forums-raspberrypi-com.translate.goog/viewtopic.php?t=139003&_x_tr_sl=auto&_x_tr_tl=es&_x_tr_hl=es&_x_tr_pto=wapp

https://www.raspberrypi.com/documentation/computers/config_txt.html

https://www.youtube.com/watch?v=QI5KKsjVKQE

## Commander Pi Download
```
git clone https://github.com/Jack477/CommanderPi
sudo chmod +x install.sh

./install.sh
```
## To download Sysbench
```
sudo apt-get install -y sysbench

sysbench --test=cpu --cpu-max-prime=20000 run
```
