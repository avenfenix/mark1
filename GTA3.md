# Grand Theft Auto III on Mark I

## To Do

- [x] Instalar motor de GTA 3
- [ ] Descargar archivos faltantes del juego
- [ ] Enjoy

## Arbol de archivos

- USB1
    - games
        - gta3.zip
        - data.7z

## Archivos Faltantes

Las carpetas son: `anim` `models` ``

```The file/directory ./data/CAPS.dat is missing.```


El siguiente error es debido a algunos adicionales de re3 y es facilmente solucionable con algunos comandos.

```The file/directory ./models/frontend_xone.txd is missing.```

```
# Supongamos los archivos de gta3 se instalan en /home/$USER/games/GTAIII
cd /home/$USER/
git clone https://codeberg.org/Jeder/re3
cd re3/gamefiles/
cp -r * /home/$USER/games/GTAIII
# LISTO
```


- [Link GTA 3 Windows](https://www.gratispaste.com/?v=7945)
- [Caps.dat](https://gtamods.com/wiki/CAPS.DAT)
- [Standard 'data' folder](https://libertycity.net/files/gta-3/64539-standartnaja-papka-data.html)
- [re3 Game files](https://codeberg.org/Jeder/re3/src/branch/master/gamefiles)
