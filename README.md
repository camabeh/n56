n56
===

Asus N56VJ Fn key scripts (Archlinux)

1. edit variable HOME in the scripts
2. map script to the key

To get keycode:
<code>$
xev | grep -A2 --line-buffered '^KeyRelease' | sed -n '/keycode /s/^.\*keycode \\\([0-9]\*\\\).\* (.\*, \\\(.\*\\\)).\*$/\1 \2/p'</code>




