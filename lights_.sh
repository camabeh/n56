#!/bin/bash

if [ $# -ne 1 ]; then
    echo 'Usage: n56_lights.sh (0, 1, 2, 3)';
    echo '      0 - keyboard backlight off';
    echo '      1 - keyboard backlight on (level 1)';
    echo '      2 - keyboard backlight on (level 2)';
    echo '      3 - keyboard backlight on (level 3)';
    exit 1 
fi

echo $1 > /sys/devices/platform/asus-nb-wmi/leds/asus\:\:kbd_backlight/brightness
