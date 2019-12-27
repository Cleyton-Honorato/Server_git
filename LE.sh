#!/bin/sh

reset

echo "------- Antes de iniciar ... -------"
echo ""
echo "Tenha certeza que este arquivo"
echo "está sendo executado com permissão"
echo "administrativa (sudo), caso não saiba"
echo "abaixo está o comando correto:"
echo ""
echo "sudo ./LE.sh"

sleep 7

echo "-------------------------------"
echo "| Linux Essencials v1.0 (BETA)|"
echo "|-----------------------------|"
echo "|  Este arquivo irá instalar: |"
echo "|                             |"
echo "|  - GIT                      |"
echo "|  - Curl                     |"
echo "|  - NVM                      |"
echo "|  - NODE via nvm             |"
echo "|  - Yarn                     |"
echo "|  - Visual Studio Code       |"
echo "|  - Google Chrome            |"
echo "|  - ZSH                      |"
echo "-------------------------------"

sleep 8

#---------------------------------------------------------

# GIT - GIT-CORE
echo "-------------------------------"
echo "|  Instalando Git e Git Core  |"
echo "-------------------------------"

sleep 2

apt-get install git git-core -y

echo "-------------------------------"
echo "|        GIT Instalado!       |"
echo "-------------------------------"

sleep 3

#---------------------------------------------------------

#Git Flow

echo "-------------------------------"
echo "|     Instalando Git Flow     |"
echo "-------------------------------"

sleep 2

apt install git-flow

echo "-------------------------------"
echo "|     Git Flow Instalado!     |"
echo "-------------------------------"

sleep 3

#---------------------------------------------------------

#curl

echo "-------------------------------"
echo "|       Instalando curl       |"
echo "-------------------------------"

sleep 2

apt install curl

echo "-------------------------------"
echo "|       curl Instalado!       |"
echo "-------------------------------"

sleep 3

#---------------------------------------------------------

#NVM

echo "-------------------------------"
echo "|       Instalando NVM        |"
echo "-------------------------------"

sleep 2

wget -qO- https://raw.github.com/creationix/nvm/master/install.sh | sh

echo "-------------------------------"
echo "|        NVM Instalado!       |"
echo "-------------------------------"

sleep 3

#---------------------------------------------------------

#NODE via nvm

echo "-------------------------------"
echo "|   Instalando NODE via nvm    |"
echo "-------------------------------"

sleep 2

nvm ls-remote

nvm install 10.16.3

echo "-------------------------------"
echo "|        NODE instalado!       |"
echo "-------------------------------"

sleep 2

echo "-------------------------------"
echo "|        versão do node       |"
echo "-------------------------------"

node -v

sleep 3

#---------------------------------------------------------

#Yarn

echo "-------------------------------"
echo "|       Instalando Yarn       |"
echo "-------------------------------"

sleep 2

apt install yarn

echo "-------------------------------"
echo "|       Yarn Instalado!       |"
echo "-------------------------------"

sleep 3

#---------------------------------------------------------

#React native

echo "-------------------------------"
echo "| Instalando react-native-cli |"
echo "-------------------------------"

sleep 2

npm install react-native-cli -g

echo "-------------------------------"
echo "|       React instalado       |"
echo "-------------------------------"

sleep 3

#---------------------------------------------------------

#Visual Studio Code
echo "-------------------------------"
echo "|      Instalando VSCode      |"
echo "-------------------------------"

sleep 2

snap install code --classic

echo "-------------------------------"
echo "|      VSCode Instalado!      |"
echo "-------------------------------"

sleep 3

#---------------------------------------------------------

#Google Chrome

echo "-------------------------------"
echo "|  Instalando Google Chrome   |"
echo "-------------------------------"

sleep 2

apt-get update && sudo apt-get upgrade

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

gdebi google-chrome-stable_current_amd64.deb

echo "-------------------------------"
echo "|  Google Chrome Instalado!   |"
echo "-------------------------------"

sleep 3

#---------------------------------------------------------

#ZSH E oh-my-zsh

echo "-------------------------------"
echo "| Instalando ZSH e oh-my-zsh  |"
echo "-------------------------------"

sleep 2

apt-get install zsh

sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

echo "-------------------------------"
echo "| ZSH e oh-my-zsh Instalado!  |"
echo "-------------------------------"

sleep 3
tput reset

#---------------------------------------------------------

echo "-------------------------------"
echo "|   Tudo Pronto, Aproveite!   |"
echo "-------------------------------"

sleep 3


