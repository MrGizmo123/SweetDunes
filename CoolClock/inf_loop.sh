#!/bin/bash

#working directory
WD=/home/liquidcat/Desktop/cool_clock

#execute once at startup so wallpaper is immediately visible
$WD/command.sh

#keep checking when a minute ends (the seconds equal 0) and update the wallpaper
while true
do
	if [ $(date +%S) -eq 0 ]; then
		$WD/command.sh
	fi

	sleep 0.5
done
