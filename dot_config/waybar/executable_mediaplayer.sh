#!/bin/sh

# Get the current playing artsit and song, make it uppercase

player_status=$(playerctl status 2> /dev/null)
if [ "$player_status" = "Playing" ]; then
    echo "$(playerctl metadata artist) => $(playerctl metadata title)" | tr [a-z] [A-Z]
elif [ "$player_status" = "Paused" ]; then
    echo "⏸️  $(playerctl metadata artist) => $(playerctl metadata title)" | tr [a-z] [A-Z]
fi
