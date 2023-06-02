#!/bin/bash

## Variaveis 
URL_GOOGLE_CHROME="https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb"



DIRETORIO_DOWNLOADS="$HOME/Downloads/programas"

## Removendo Travas do apt ##
echo "---> REMOVENDO TRAVAS DO APT E HABILITANDO SNAPS <---"
sudo rm /var/lib/dpkg/lock-frontend; sudo rm/var/cache/apt/archives/lock
sudo apt install --install-suggests gnome-software
sudo apt install ubuntu-restricted-extras


## instalando o Snap ##
sudo apt install snapd

## instalando Gnome ##
sudo apt install vanilla-gnome-desktop
## desinstalando o linux mint ##
sudo apt-get purge cinnamon --auto-remove
sudo apt remove cinnamon-desktop-environment

## Atualizando o repositório ##
sudo apt update

## Download de programas externos ##

mkdir "$DIRETORIO_DOWNLOADS"
wget -c "$URL_GOOGLE_CHROME"       -P "$DIRETORIO_DOWNLOADS"


echo "---> Instalando programas <---"
##Instalando o ambiente de trabalho##
sudo apt install codeblocks
sudo apt install vim

##Download de Snaps##
sudo snap install pycharm-community --classic
sudo snap install code --classic  
sudo snap install spotify
sudo apt update

echo "--> Instalando Pacotes MacOS like <--"
#Instalando apps MacOSlike#
sudo apt install plank
sudo apt install synapse 

##instalando temas e icones##
sudo add-apt-repository ppa:daniruiz/flat-remix -y
sudo apt update
sudo apt install flat-remix-gtk -y

sudo apt update

##instalando Git##
echo "---> instalando git e pacotes asdf <---"
sudo apt install git


##instalando build essecial##
sudo apt install build-essential default-jdk libssl-dev exuberant-ctags ncurses-term ack-grep silversearcher-ag fontconfig imagemagick libmagick libmagickwand-dev software-propeties-common git vim-gtk3 curl -y



##instalar o asdf##
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.11.3
echo . "$HOME/.asdf/asdf.sh"
echo . "$HOME/.asdf/completions/asdf.bash"
sudo apt update



##instalando nodejs##
asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
asdf install nodejs latest

##instalando Ruby##
asdf plugin add ruby https://github.com/asdf-vm/asdf-ruby.git
asdf install ruby latest

##instlando golang##
asdf plugin-add golang https://github.com/kennyp/asdf-golang.git
asdf install golang latest

##instalando earlang##
asdf plugin add erlang https://github.com/asdf-vm/asdf-erlang.git
asdf install erlang latest

##instalando elixir##
asdf plugin-add elixir https://github.com/asdf-vm/asdf-elixir.git
asdf install elixir latest

##instalando kotlin##
asdf plugin add kotlin https://github.com/asdf-community/asdf-kotlin.git
asdf install kotlin latest

##instalando rust##
asdf plugin-add rust https://github.com/code-lever/asdf-rust.git
asdf install rust latest

##instalando Crystal##
asdf plugin-add crystal https://github.com/asdf-community/asdf-crystal.git
asdf install crystal latest

asdf update
asdf plugin-update --all

echo "--> instalando bancos de dados e ferramentas <--"
##instalando bancos de dados e ferramentas##
sudo apt-install postgresql-10 postgresql-contrib postgresql-server-dev-10 redis-server libhiredis-dev memcached libmemcached-dev

## instalando mySQL ##
wget http://repo.mysql.com/mysql-apt-config_0.8.13-1_all.deb -O mysql-apt-config.deb
sudo dpkg -i mysql-apt-config.deb
sudo dpkg-reconfigure mysql-apt-config
sudo apt update
sudo apt install mysql-server



##instalando o mongoDB##
sudo apt update && sudo apt install gnupg -y
wget -qO - https: // www.mongodb.org / static / pgp / server- 4.2 .asc | sudo apt-key add -
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu bionic/
mongodb-org/4.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.2.list _ _ _ _ _ _ _ _ _
sudo apt update
sudo apt install mongodb-org
sudo systemctl start mongod
sudo systemctl enable mongod

##instalando docker##
sudo apt-get update
sudo apt-get -y install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(. /etc/os-release; echo "$UBUNTU_CODENAME") stable"
sudo apt-get update
sudo apt-get -y install docker-ce docker-compose
sudo docker --version


##instalando tmux##
sudo apt install tmux
##instalando tilix##
sudo apt install tilix bsh


echo "--> Finalizando <---"
## Finalização, atualização e limpeza##
sudo apt update && sudo apt dist-upgrade -y
sudo apt autoclean
sudo apt autoremove -y

## Mostrar lista de plugins###
asdf
asdf plugin list
sudo reboot






