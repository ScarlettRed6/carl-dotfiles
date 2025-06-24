#!/usr/bin/env bash

# kill all polybar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u "$UID" -x polybar >/dev/null; do sleep 0.5; done

# set monitor
MONITOR=$(polybar --list-monitors | head -n1 | cut -d':' -f1)
export MONITOR
# Launch polybar
# first launch the spacer to avoid overlapping with i3 windows
polybar top-spacer --config=~/.config/polybar-custom/config.ini &
polybar top-left --config=~/.config/polybar-custom/config.ini &
polybar top-center --config=~/.config/polybar-custom/config.ini &
polybar top-right --config=~/.config/polybar-custom/config.ini &
