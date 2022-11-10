# SweetDunes
![Preview](screenshots/desktop.png)

# Disclaimer

This rice is not meant for the best performance but for aesthetics. Many things (especially the clock) could definitely be improved. Any contributions are welcome. Also I use Arch BTW.

## Dependencies

```
i3-gaps picom-git rofi polybar sddm mpd
```

## Installation

### For Arch

Install the dependencies, [i3](https://wiki.archlinux.org/title/I3), [sddm](https://wiki.archlinux.org/title/SDDM) beforehand, the installer will not install these. Also dont forget to install [xorg](https://wiki.archlinux.org/title/Xorg)

```
$ sudo pacman -S rofi polybar mpd mpc
```
[picom-git](https://aur.archlinux.org/packages/picom-git) needs to be installed from the AUR. See [AUR Installation Instructions](https://wiki.archlinux.org/title/Arch_User_Repository)

Clone this repo into your home directory and run install script (has not been tested, but its relatively simple, should work on a fresh arch install)
```
$ cd ~
$ git clone https://github.com/MrGizmo123/SweetDunes
$ chmod +x ~/SweetDunes/install.sh
$ sudo ~/SweetDunes/install.sh
```

You will manually need to change your sddm theme by going to /etc/sddm.conf and changing the current theme to sugar dark. 
If it does not exist run this
```
$ sudo cp /usr/lib/sddm.conf.d/default.conf /etc/sddm.conf
```

It should look like this
```
Stuff ... 

[Current]=sugar-dark

Stuff ...
```

You will also need to change your rofi theme to 'rounded-yellow-dark' by running
```
$ rofi-theme-selector
```

### For other Distros

Config files are provided. You can swap them into the required locations. i.e. (This may change accoring to your exact setup)
* fonts in the /usr/share/fonts then `$ fc-cache -fv` 
* the polybar config.ini at ~/.config/polybar 
* i3 config at ~/.config/i3/ 
* sddm theme at /usr/share/sddm/themes/ and change /etc/sddm.conf
* copy rofi theme to ~/.local/share/rofi/themes/ and change to it by `$ rofi-theme-selector`
