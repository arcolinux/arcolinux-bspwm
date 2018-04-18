#!/usr/bin/env bash
st="floating"
read -r X Y W H < <(slop -f "%x %y %w %h" -b 1 -t 0 -q)
g=${W}x${H}+${X}+${Y}

if [ "$1" == "-p" ]; then st="pseudo_tiled"; fi
bspc rule -a Termite -o state=$st
termite --geometry $g
