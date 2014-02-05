#!/bin/bash

HOME=/home/jacob/bin/n56
WRITE=/sys/devices/platform/asus-nb-wmi/leds/asus\:\:kbd_backlight/brightness
STATUS=`cat "$WRITE"`

if [ "$STATUS" -gt 0 ]; then
    ((STATUS--))
    sudo $HOME/lights_.sh $STATUS
fi
