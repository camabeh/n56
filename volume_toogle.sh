#!/bin/bash

STATUS=`amixer get Master | grep off`

if [ $? -eq 0 ]; then
	amixer -q set Master unmute
else
	amixer -q set Master mute
fi
