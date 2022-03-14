#!/bin/bash
sudo apt-get update -y
sudo add-apt-repository ppa:flatpak/stable -
sudo apt-get update -y
sudo apt-get install -y flatpak gnome-software-plugin-flatpak
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
echo "Y" | sudo flatpak install flathub io.mrarm.mcpelauncher

echo 'alias mcpe="flatpak run io.mrarm.mcpelauncher"' > ~/.bashrc