#!/bin/bash 
# install VS Code, Python, systemd
# Update the package list
set -e

clear

echo "Bienvenue sur Aquadash"
echo " "
echo "Entrez votre mot de passe pour commencer l'installation"

sudo clear
echo "Début de l'installation. Cela devrait prendre quelques minutes"
echo "Des messages vont s'afficher dans le terminal sous peu, ne pas s'en inquiéter"
sleep 4

sudo apt update -y

# Install VS Code
sudo apt install code -y

# Install Python
sudo apt install python3 -y

# Install Systemd
sudo apt install systemd -y

# Script to install the latest Docker and Docker Compose on Debian-based systems
sudo apt install curl -y
curl -fsSL test.docker.com -o get-docker.sh && sh get-docker.sh
sudo apt install docker-compose -y



# Installing git and cloning the backend
sudo apt install git -y

# Pulling sensors
cd ..
clear
echo "C'est presque terminé, veuillez s'il vous plait entrer vos informations d'autentification git tea" 
echo " "
git clone https://git.aquapoly.ca/Aquapoly/Sensors.git s

# Pulling Backend
clear
echo "Encore une fois" 
echo " "
git clone https://git.aquapoly.ca/Aquapoly/Aquadash-backend.git 

python3 -m venv .venv


clear 

echo "Installation réussie, il est conseillé de redémarer l'ordinateur"

while true; do
    read -r -p "Voulez vous redémarer maintenant? (O/n) " answer
    case $answer in
        [oO]* ) clear ;echo "Redémarage..."; sleep 5; reboot; break;;
        [Nn]* ) exit;;
        * ) echo "Veuiller entrer O ou N s'il vous plait";;
    esac
done