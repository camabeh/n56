#!/bin/bash

case "$1" in
    ''|*[!0-9]*) echo 'Usage: volume_up.sh 5, where 5 is step'; exit 1 ;;
        *)  ;;
esac

JUMP="$1"
STATUS=`amixer get Master | grep 'Front Left:' | awk '{print $5}' | grep -o '[[:digit:]]' | sed ':a;N;$!ba;s/\n//g'`
let MAX=100-$1

if [ "$STATUS" -lt $MAX ]; then
    let STATUS=STATUS+$JUMP;
    amixer set -q Master $STATUS\% 
else
    let STATUS=$MAX+$1
    amixer set -q Master $STATUS\%
fi

echo $STATUS

