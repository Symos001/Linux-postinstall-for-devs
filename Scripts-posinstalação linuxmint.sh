#!/bin/bash

sudo apt update 

sudo apt upgrade 

#instalando zsh

echo "---> instalando ZSH <---"

sudo apt install zsh

chsh -s $(which zsh)



echo "---> REMOVENDO TRAVAS DO APT E HABILITANDO SNAPS <---"
sudo rm /var/lib/dpkg/lock-frontend; sudo rm/var/cache/apt/archives/lock
sudo apt install --install-suggests gnome-software
sudo apt install ubuntu-restricted-extras
sudo rm /etc/apt/preferences.d/nosnap.pref

## instalando o Snap ##
sudo apt install snapd



echo "---> INSTALANDO  Snap apps <---"

sudo snap install thunderbird
sudo snap install whatsapp-for-linux
sudo snap install pycharm-community --classic
sudo snap install code --classic  
sudo snap install mysql-workbench-community
sudo snap install spotify
sudo apt update

echo "---> Instalando apps uteis <--"
sudo apt install synapse 
sudo apt install preload
flatpak install flathub io.github.jeffshee.Hidamari

echo "--> Instalando dev thing's <--"

sudo apt install git

##instalando build essecial##
sudo apt install build-essential default-jdk libssl-dev exuberant-ctags ncurses-term ack-grep silversearcher-ag fontconfig imagemagick libmagick libmagickwand-dev software-propeties-common git vim-gtk3 curl -y

sudo apt update

##instalar o asdf##
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.12.0
. "$HOME/.asdf/asdf.sh"

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

##instalando bancos de dados e ferramentas##
sudo apt-install postgresql-10 postgresql-contrib postgresql-server-dev-10 redis-server libhiredis-dev memcached libmemcached-dev

## instalando mySQL ##
wget http://repo.mysql.com/mysql-apt-config_0.8.13-1_all.deb -O mysql-apt-config.deb
sudo dpkg -i mysql-apt-config.deb
sudo dpkg-reconfigure mysql-apt-config
sudo apt update
sudo apt install mysql-server

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

##instalando Xampp e colocando um icone no destop
wget "https://sourceforge.net/projects/xampp/files/XAMPP%20Linux/7.4.27/xampp-linux-x64-7.4.27-2-installer.run/download" -O xampp-installer.run
chmod +x xampp-installer.run
sudo ./xampp-installer.run
echo -e '[Desktop Entry]\n Version=1.0\n Name=xampp\n Exec=gksudo /opt/lampp/manager-linux-x64.run\n Icon=/opt/lampp/icons/world1.png\n Type=Application\n Categories=Application' | sudo tee /usr/share/applications/xampp.desktop
sudo apt-get install gksu
sudo chmod +x /usr/share/applications/xampp.desktop
cp /usr/share/applications/xampp.desktop  ~/Área\ de\ Trabalho/


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






