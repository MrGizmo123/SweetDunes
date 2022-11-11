#!/bin/bash

echo "Installing Sweet Dunes"

#fonts 

echo "Installing fonts"

cd ~ 
sudo cp SweetDunes/fonts/* /usr/share/fonts/
fc-cache

echo "fonts installed"

#sddm theme

cd /usr/share/sddm/themes

echo "Downloading SDDM theme"
sudo git clone "https://github.com/MrGizmo123/sddm-sugar-dark"
echo "Theme downloaded, change theme to sugar-dark"

#cool clock

cd ~

echo "Installing Cool Clock"

chmod +x ~/SweetDunes/CoolClock/inf_loop.sh ~/SweetDunes/CoolClock/command.sh
echo "exec --no-startup-id ~/SweetDunes/CoolClock/inf_loop.sh" >> ~/.config/i3/config

#picom 

echo "Installing Picom config"

mkdir -p ~/.config/picom/backup
mv ~/.config/picom/* ~/.config/picom/backup/

cp ~/SweetDunes/picom/picom.conf ~/.config/picom/

#polybar

echo "Installing polybar config"

mkdir -p ~/.config/polybar/backup
mv ~/.config/polybar/* ~/.config/polybar/backup/

cp ~/SweetDunes/polybar/config.ini ~/.config/polybar/
chmod +x ~/SweetDunes/polybar/polybar.sh
echo "exec --no-startup-id ~/SweetDunes/polybar/polybar.sh"

pkill polybar
~/SweetDunes/polybar/polybar.sh

#grub

echo "Downloading grub theme"

cd ~/SweetDunes/
git clone "https://github.com/vinceliuice/grub2-themes"

cp Background.jpg grub2-themes/background.jpg

echo "Install grub Theme"
chmod +x grub2-themes/install.sh
sudo grub2-themes/install.sh --theme tela --icon color --screen 1080p

#rofi

echo "Downloading rofi theme"
git clone https://github.com/lr-tech/rofi-themes-collection.git

echo "Installing rofi theme"
sudo mkdir -p /usr/share/rofi/themes/
sudo cp ~/SweetDunes/rofi-themes-collection/themes/rounded-yellow-dark.rasi /usr/share/rofi/themes/

echo "Done!"

echo "Starting Cool Clock"

~/SweetDunes/CoolClock/inf_loop.sh &

echo "Change your sddm theme to sddm-sugar-dark"
echo "Change your rofi theme to rounded-yellow-dark by running rofi-theme-selector"
