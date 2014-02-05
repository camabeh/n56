#!/bin/bash
case "$1" in
    ''|*[!0-9]*) exit 1 ;;
        *)  ;;
esac

JUMP="$1"
STATUS=`amixer get Master | grep 'Front Left:' | awk '{print $5}' | grep -o '[[:digit:]]' | sed ':a;N;$!ba;s/\n//g'`
let MIN=0+$1

if [ "$STATUS" -gt $MIN ]; then
    let STATUS=STATUS-$JUMP;
    amixer set -q Master $STATUS\% 
else
    let STATUS=$MIN-$1
    amixer set -q Master $STATUS\%
fi

echo $STATUS
