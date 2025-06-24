#!/bin/bash

MAX_LENGTH=30
STEP=1
DELAY=0.3
title=$(xdotool getwindowfocus getwindowname)

# If title is short, just print it
[ ${#title} -le $MAX_LENGTH ] && echo "$title" && exit 0

# Save position in temp file
posfile="/tmp/polybar_title_scroll_pos"
[ ! -f "$posfile" ] && echo "0" > "$posfile"
pos=$(<"$posfile")

# Cut the title
output="${title:$pos:$MAX_LENGTH}"
echo "$output..."

# Update position
((pos+=STEP))
[ $pos -ge $((${#title} - MAX_LENGTH + 1)) ] && pos=0
echo "$pos" > "$posfile"
