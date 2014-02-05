#!/bin/bash

# 'xinput list' to get ID (17)

if [ $(xinput list-props 17 | grep 'Device Enabled'|awk '{print $4}') = 1 ]; then
    xinput disable 'ETPS/2 Elantech Touchpad'
    notify-send " " --icon touchpad-disabled-symbolic
else
    xinput enable 'ETPS/2 Elantech Touchpad'
    notify-send " " --icon input-touchpad-symbolic
fi


