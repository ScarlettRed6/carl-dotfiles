#!/bin/bash

# MY CUSTOM BLUETOOTH ON OR OFF TOGGLE EYO

# check status first
status=$(bluetoothctl show | grep "Powered" | awk '{print $2}')

if [ "$1" = "toggle" ]; then
	if [ "$status" = "yes" ]; then
		bluetoothctl power off
	else
		bluetoothctl power on
	fi
else
	# Display update icon based on the state
	if [ "$status" = "yes" ]; then
		echo "%{F#FF0000}%{T1}%{F-} On%{T-}"
	else
		echo "%{F#FF0000}%{T1}%{F-} Off%{T-}"
	fi
fi
