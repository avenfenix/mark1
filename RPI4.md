# Raspberry PI 4 of Mark I

## Indice
- [Montar `USB1` en el inicio](./RPI4.md#montar-usb1-al-encender)

## Installation rpi-imager
- [Windows](https://downloads.raspberrypi.org/imager/imager_latest.exe)

## Basics
```
cd /home/$USER
rm -r *
mkdir USB1
```

## Software
```
apt-get install firefox-esr                         
apt-get install git                                  
curl -fsSL https://code-server.dev/install.sh | sh
```
### Referencias
- [Home - code-server Docs](https://coder.com/docs/code-server/latest)

## Montar `USB1` al encender 
- [x] Montar `USB1` cuando la RPI4 se encienda.
- [ ] Script sh o python para configurar esto automaticamente

```
sudo fdisk -l
```

```
sudo blkid
```

```
echo "UUID=<UUID de USB1> /home/$USER/USB1 ext4  user,errors=remount-ro,auto,exec,rw" >> /etc/fstab
```

```
```
### Referencias
- [Montar particiones al iniciar linux](https://vivaelsoftwarelibre.com/montar-particiones-al-iniciar-linux-automaticamente/)

## To Do

- [ ] [Compartir internet como access point al iniciar](./RPI4_AP.md)

