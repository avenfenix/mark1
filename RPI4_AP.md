# Como compartir un access point desde la Raspberry PI

### Actualizar sistema
```
sudo apt-get update
sudo apt-get upgrade
```
### Instalar hostapd and dnsmasq
```
sudo apt-get install hostapd
sudo apt-get install dnsmasq
```

### Detener procesos para editar configuracion tranquilamente
```
sudo systemctl stop hostapd
sudo systemctl stop dnsmasq
```

### Establecer IP fija 
```
sudo nano /etc/dhcpcd.conf
```
```
# /etc/dhcpcd.conf
interface wlan0
static ip_address=192.168.0.10/24
denyinterfaces eth0
denyinterfaces wlan0
```

## Referencias
- [Wireless Access Point with RPI](https://thepi.io/how-to-use-your-raspberry-pi-as-a-wireless-access-point/)
