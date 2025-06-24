#!/bin/sh

BLANK='#1D1616'
CLEAR='#1D1616'
DEFAULT='#8E1616'
TEXT='#DA0037'
WRONG='#CF0A0A'
VERIFYING='#000000'

# Uncomment if i want to have backgrounds
#BG=~/Pictures/myBackgrounds/redcloudsbg.png
#[ -f "$BG" ] || { echo "Image not found!"; exit 1; }

~/i3lock-color/build/i3lock \
  --insidever-color=$CLEAR \
  --ringver-color=$VERIFYING \
  \
  --insidewrong-color=$CLEAR \
  --ringwrong-color=$WRONG \
  \
  --inside-color=$BLANK \
  --ring-color=$DEFAULT \
  --line-color="#FF0B55" \
  --separator-color=$DEFAULT \
  \
  --verif-color=$TEXT \
  --wrong-color=$TEXT \
  --time-color=$TEXT \
  --date-color=$TEXT \
  --layout-color=$TEXT \
  --keyhl-color=$VERIFYING \
  --bshl-color=$WRONG \
  \
  --screen 1 \
  --blur 10 \
  --clock \
  --indicator \
  --time-str="%I:%M-%p" \
  --date-str="%d-%m-%Y" \
  --radius=160 \
  --ring-width=20 \
#  --image=$BG
