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

## Unmask `hostapd`
```
sudo systemctl unmask hostapd
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

### Configurar Servidor DHCP
```
## Para hacer un backup del archivo original
sudo mv /etc/dnsmasq.conf /etc/dnsmasq.conf.orig
```
```
sudo nano /etc/dnsmasq.conf
```
```
# /etc/dnsmasq.conf
interface=wlan0
  dhcp-range=192.168.0.11,192.168.0.30,255.255.255.0,24h
```
### Configurar `hostapd` para hostear access point
```
sudo nano /etc/hostapd/hostapd.conf
```
```
interface=wlan0
bridge=br0
hw_mode=g
channel=7
wmm_enabled=0
macaddr_acl=0
auth_algs=1
ignore_broadcast_ssid=0
wpa=2
wpa_key_mgmt=WPA-PSK
wpa_pairwise=TKIP
rsn_pairwise=CCMP
ssid=NETWORK
wpa_passphrase=PASSWORD
```
```
sudo nano /etc/default/hostapd
```

```
## Descomentar linea
DAEMON_CONF="/etc/hostapd/hostapd.conf"
```


## Referencias
- [Wireless Access Point with RPI](https://thepi.io/how-to-use-your-raspberry-pi-as-a-wireless-access-point/)
