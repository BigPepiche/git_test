#!/bin/bash
# install VS Code, Python, systemd
# Update the package list
sudo apt update -y

# Install VS Code
sudo apt install code -y

# Install Python
sudo apt install python3 -y

# Install Systemd
sudo apt install systemd

# Script to install the latest Docker and Docker Compose on Debian-based systems
sudo apt install curl -y
curl -fsSL test.docker.com -o get-docker.sh && sh get-docker.sh
sudo apt install docker-compose 

# Installing git and cloning the backend
sudo apt install git
cd ..
git clone https://git.aquapoly.ca/Aquapoly/Aquadash-backend.git



reboot