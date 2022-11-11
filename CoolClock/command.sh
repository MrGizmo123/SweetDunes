#!/bin/bash

#This script updates the wallpaper clock
#it must be called every minute

#working directory
WD=~/SweetDunes/CoolClock
WIDTH=1920
HEIGHT=1080

#escape the slashes (/) for sed to work
WDESC=$(echo $WD | sed 's_/_\\/_g')

#The argument for sed to substitute the working directory into the html text
RPLCTXT="s/\$WD/$WDESC/g"

#substitute the value of WD into the html
FLTXT=$(sed "$RPLCTXT" $WD/layout.html)

#substitute time into html text (date), render html (wkhtmltoimage), set as wallpaper (feh) 
date +"$FLTXT" | wkhtmltoimage --log-level none --enable-local-file-access --width $WIDTH --height $HEIGHT - - | feh --no-fehbg --bg-scale -
