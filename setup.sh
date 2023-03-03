#!/bin/bash

# Regular Colors
Black='\033[0;30m'        # Black
Red='\033[0;31m'          # Red
Green='\033[0;32m'        # Green
Yellow='\033[0;33m'       # Yellow
Blue='\033[0;34m'         # Blue
Purple='\033[0;35m'       # Purple
Cyan='\033[0;36m'         # Cyan
White='\033[0;37m'        # White
NC='\033[0m' # No Color

printf "${Green}Configuration de l'environnement Git${NC}\n\n"


printf "Entrer votre ${Blue}username${NC} (git): "
while read username; do
    test "$username" != "" && break
    printf "Entrer votre ${Blue}username${NC} (git): "
done

printf "Entrer votre ${Blue}email${NC} (git): "
while read email; do
    test "$email" != "" && break
    printf "Entrer votre ${Blue}email${NC} (git): "
done

printf "\n"

git config --global user.name $username
printf "* Configuration du username :${Yellow}$username${NC} ${Green}[OK]${NC}\n"

git config --global user.email $email
printf "* Configuration de l'email : ${Yellow}$email${NC} ${Green}[OK]${NC}\n"

printf "\nCreation des alias git\n"
printf "\------------\n"

git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
printf "* ${Yellow}git lg${NC} ${Green}[OK]${NC}\n"

git config --global alias.co checkout
printf "* ${Yellow}git co${NC} ${Green}[OK]${NC}\n"

git config --global alias.br branch
printf "* ${Yellow}git br${NC} ${Green}[OK]${NC}\n"

git config --global alias.st status
printf "* ${Yellow}git st${NC} ${Green}[OK]${NC}\n"