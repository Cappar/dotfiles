#!/bin/bash

lockfile="/tmp/.i3lock.lock"

if [[ -f "$lockfile" ]]; then
	echo "Screen already locked"
	exit 1
else
	echo "Locking screen"
fi

trap 'rm "$lockfile"' EXIT
echo $$ > "${lockfile}"

scrot /tmp/screen.png
convert /tmp/screen.png -scale 10% -scale 1000% /tmp/screen.png
[[ -f $HOME/Pictures/Icons/lock.png ]] && convert /tmp/screen.png $HOME/Pictures/Icons/lock.png -gravity center -composite -matte /tmp/screen.png
i3lock -u -n -i /tmp/screen.png
