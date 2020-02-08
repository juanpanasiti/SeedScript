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

###
`sudo apt install `

###
`sudo apt install `

###
`sudo apt install `

###
`sudo apt install `

###
`sudo apt install `

###
`sudo apt install `

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

### Códigos para formato en el bash
