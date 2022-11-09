#!/bin/bash

echo "Installing Sweet Dunes"

#sddm theme

cd /usr/share/sddm/themes

echo "Downloading SDDM theme"
git clone "https://github.com/MrGizmo123/sddm-sugar-dark"
echo "Theme downloaded, change theme to sugar-dark"

#cool clock

cd ~

echo "Installing Cool Clock"
cd ~/SweetDunes
chmod +x ~/SweetDunes/Cool/Clock/inf_loop.sh ~/SweetDunes/CoolClock/command.sh
echo "exec --no-startup-id ~/SweetDunes/CoolClock/inf_loop.sh" >> ~/.config/i3/config

#picom 

echo "Installing Picom config"
cp picom/picom.conf ~/.config/picom/

#polybar

echo "Installing polybar config"
cp polybar/config.ini ~/.config/polybar/
chmod +x ~/SweetDunes/polybar/polybar.sh
echo "exec --no-startup-id ~/SweetDunes/polybar/polybar.sh"

#grub

echo "Downloading grub theme"

git clone "https://github.com/vinceliuice/grub2-themes"

cp Background.jpg grub2-themes/background.jpg

echo "Install grub Theme"
chmod +x grub2-themes/install.sh
grub2-themes/install.sh

#rofi

echo "Downloading rofi theme"
git clone https://github.com/lr-tech/rofi-themes-collection.git

echo "Installing rofi theme"
mkdir -p ~/.local/share/rofi/themes/
cp themes/rounded-yellow-dark.rasi ~/.local/share/rofi/themes/

echo "Done!"

echo "Change your sddm theme to sugar-dark"
echo "Change your rofi theme to rounded-yellow-dark by running rofi-theme-selector"
