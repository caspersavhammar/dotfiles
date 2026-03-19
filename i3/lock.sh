#!/bin/sh

if [ -n "$SWAYSOCK" ]; then
    swaylock
else
    i3lock
fi
