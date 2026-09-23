#!/bin/sh
powerprofilesctl set power-saver
swaymsg "output * power off"

# Runs once: on the first input after the screen is black, restore everything and quit
exec swayidle -w timeout 1 'true' \
    resume 'swaymsg "output * power on"; powerprofilesctl set balanced; pkill -f "swayidle -w timeout 1 true"'
