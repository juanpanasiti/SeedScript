# La idea
Este proyecto tiene por objetivo armar una serie de scripts para automatizar la instalación y configuración de las típicas cosa que se hacen tras las instalación del SO
Inicialmente está basado en **Linux Mint 19.3**, por lo tanto también debería ser compatible con **Ubuntu 18.04** y demas sabores

# Comandos utilizados
## Instalaciones
### Git
`sudo apt install git`

### Atom
`sudo apt install atom`

### Ruby, Rails y postgreSQL
#### Ruby
```
sudo apt install curl
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update
sudo apt-get install git-core zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev software-properties-common libffi-dev nodejs yarn
cd
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
exec $SHELL
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc
exec $SHELL
rbenv install 2.7.0
rbenv global 2.7.0
ruby -v
gem install bundler

```
#### Configurar git
(Llamar a la funcion de configuración de git)
#### Rails
```
gem install rails
rbenv rehash
rails -v
```
#### PostgreSQL
```
sudo apt install postgresql-10 libpq-dev
sudo -u postgres createuser juan -s
```
#### Crear carpeta de proyectos
```
cd
mkdir RailsProjects
```
### Psensor
`sudo apt install psensor`

### Klavaro (Flathub)
`sudo flatpak install flathub net.sourceforge.Klavaro -y`

### GIMP (Flathub)
`sudo flatpak install flathub org.gimp.GIMP -y`

### SuperTuxKart (Flathub)
`sudo flatpak install flathub net.supertuxkart.SuperTuxKart -y`

### Minetest (Flathub)
`sudo flatpak install flathub net.minetest.Minetest -y`

### Android Studio (Flathub)
`sudo flatpak install flathub com.google.AndroidStudio -y`

### Arduino IDE (Flathub)
`sudo flatpak install flathub cc.arduino.arduinoide -y `

### IntelliJ IDEA Community (Flathub)
`sudo flatpak install flathub com.jetbrains.IntelliJ-IDEA-Community -y `

### Postman (Flathub)
`sudo flatpak install flathub com.getpostman.Postman -y `

### Sublime Text (Flathub)
`sudo flatpak install flathub com.sublimetext.three -y `

### Audacity (Flathub)
`sudo flatpak install flathub org.audacityteam.Audacity -y `

### Billiards (Flathub)
`sudo flatpak install flathub de.billardgl.Billardgl -y `

### Calibre (Flathub)
`sudo flatpak install flathub com.calibre_ebook.calibre -y `

### Discord (Flathub)
`sudo flatpak install flathub com.discordapp.Discord -y `

### Dropbox (Flathub)
`sudo flatpak install flathub com.dropbox.Client -y `

### Fondo (Flathub)
`sudo flatpak install flathub com.github.calo001.fondo -y `

### GnuCash (Flathub)
`sudo flatpak install flathub org.gnucash.GnuCash -y `

### HexGL (Flathub)
`sudo flatpak install flathub org.gnome.HexGL -y `

### JDownloader (Flathub)
`sudo flatpak install flathub org.jdownloader.JDownloader -y `

### Kodi (Flathub)
`sudo flatpak install flathub tv.kodi.Kodi -y `

### Moneta (Flathub)
`sudo flatpak install flathub com.github.matfantinel.moneta -y `

### Steam (Flathub)
`sudo flatpak install flathub com.valvesoftware.Steam -y `

### Spotify (Flathub)
`sudo flatpak install flathub com.spotify.Client -y `

### Visual Studio Code (Flathub)
`sudo flatpak install flathub com.visualstudio.code -y `

### Video Downloader (Flathub)
`sudo flatpak install flathub com.github.unrud.VideoDownloader -y `

### VLC (Flathub)
`sudo flatpak install flathub org.videolan.VLC -y `

### VueScan (Flathub)
`sudo flatpak install flathub com.hamrick.VueScan -y `

### Dia
`sudo apt install dia -y`

### Shotwell
`sudo apt install shotwell -y`

## Configuraciones
### Swappiness a 10
### Git
`read "Ingrese su nombre: " nombre`
`read "Ingrese su email: " email`
```
git config --global color.ui true
git config --global user.name "$nombre"
git config --global user.email "$email"
ssh-keygen -t rsa -b 4096 -C "$email"
```

## Tips para los scripts
### Comprara numeros
#!/bin/bash
# Script to do numeric comparisons
```
var1=10
var2=20
if [ $var2 -gt $var1 ]
    then
        echo "$var2 is greater than $var1"
fi
```
+ num1 -eq num2                  check if 1st  number is equal to 2nd number
+ num1 -lt num2                   checks if 1st  number  is less than 2nd number
+ num1 -ge num2                  checks if 1st  number  is greater than or equal to 2nd number
+ num1 -gt num2                  checks if 1st  number is greater than 2nd number
+ num1 -le num2                   checks if 1st number is less than or equal to 2nd number
+ num1 -ne num2                  checks if 1st  number  is not equal to 2nd number

+ var1 = var2     checks if var1 is the same as string var2
+ var1 != var2    checks if var1 is not the same as var2
+ var1 < var2     checks if var1 is less than var2
+ var1 > var2     checks if var1 is greater than var2
+ -n var1             checks if var1 has a length greater than zero
+ -z var1             checks if var1 has a length of zero

### case
```
case $rental in
   "car") echo "For $rental rental is Rs.20 per k/m.";;
   "van") echo "For $rental rental is Rs.10 per k/m.";;
   "jeep") echo "For $rental rental is Rs.5 per k/m.";;
   "bicycle") echo "For $rental rental 20 paisa per k/m.";;
   "enfield") echo "For $rental rental Rs.3  per k/m.";;
   "thunderbird") echo "For $rental rental Rs.5 per k/m.";;
   *) echo "Sorry, I can not get a $rental rental  for you!";;
esac
```
### Códigos para formato en el bash
https://misc.flogisoft.com/bash/tip_colors_and_formatting
