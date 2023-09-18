# Mark I
Source Code and Development of Mark I.

## Components
- [Raspberry Pi 4b rev1.4](./RPI4/RPI4.md)
- Tablet with MT6592 CPU (Bootloader Locked)
- Motorola E7i Power (Bootloader Locked)
- [USB SanDisk 3.2Gen1](./USB1/USB1.md) (28,67 GiB)
## Descripcion

*Mark I* seria el primer sistema distribuido desplegable localmente de los muchos que se esperan crear. Su cometido es asistir, ayudar, traducir idiomas, hackear, pasar de voz a texto, ofrecer servicios de todo tipo, etc. etc. etc. Si bien la complejidad de desplegar en distintos dispositivos e ir agregando dispositivos es bastante alta esperamos que este software ayude a que esta tarea en especifica y tambien ayude a poder crear este tipo de sistema mucho mas comunmente. La gran funcionalidad y su poder computacional es un logro esperable si todo sale como debe. Hay muchos temas de optimizacion que se deben resolver.

## Temas
- [Compartir escritorio linux via Sunshine](./RPI4/SHARING_DESKTOP.md)
- [Optimizar Raspberry PI 4](./RPI4/RPI_BOOST.md)
- [Monitor API](./MONITOR_API.md)
- [Games](./GAMES/GAMES.md)

## To Do

### Network
- [ ] Share Network over Wifi on boot and connect automatically tablet to this network.

### Display
- [ ] Sunshine start on boot for share desktop.
- [ ] WakeOnLan on Moonlight Tablet for boot RPI.

### Performance
- [ ] Optimize connection.
- [ ] Optimize Raspberry Pi.
- [ ] Temperature Monitor

### Android
- [ ] Compilar platforms-tools

## Referencias

### Misc
- [Temperature Monitor linuxhint.com](https://linuxhint.com/raspberry_pi_temperature_monitor/)
- [Una wea para instalar de todo](https://github.com/jmcerrejon/PiKISS)

### Android
- [ADB Para ARM](https://github.com/qhuyduong/arm_adb)
- [ACLOCAL](https://stackoverflow.com/questions/33278928/how-to-overcome-aclocal-1-15-is-missing-on-your-system-warning)
