# Montar `USB1` al inicio del sistema

- [x] Montar `USB1` cuando la RPI4 se encienda.
- [x] Script sh o python para configurar esto automaticamente

## Issues and Bugs
- No puedo entrar a internet desde mi RPI4 aunque todos pueden usar el internet que comparto.


## Instalacion Manual
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
#!/bin/bash

UUID=$(blkid -s UUID -o value /dev/sda1)

echo "UUID=$UUID /home/$USER/USB1 ext4 user,errors=remount-ro,auto,exec,rw 0 0" | sudo tee -a /etc/fstab
```
### Referencias
- [Montar particiones al iniciar linux](https://vivaelsoftwarelibre.com/montar-particiones-al-iniciar-linux-automaticamente/)
