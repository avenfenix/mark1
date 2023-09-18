# Raspberry PI 4 of Mark I

## Indice
- [Montar `USB1` automaticamente](./RPI4.md#montar-usb1-automaticamente)

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
```

## Montar `USB1` automaticamente

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

## To Do

- [ ] [Compartir internet como access point al iniciar](./RPI4_AP.md)
- [ ] Montar `USB1` automaticamente.
