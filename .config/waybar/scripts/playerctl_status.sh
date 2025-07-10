#!/bin/bash

MAX_LENGTH=40  # Adjust to fit your bar width

player_status=$(playerctl status 2>/dev/null)

if [[ "$player_status" == "Playing" || "$player_status" == "Paused" ]]; then
    title=$(playerctl metadata title 2>/dev/null)
    artist=$(playerctl metadata artist 2>/dev/null)
    full="$title - $artist"

    # Truncate if too long
    if [ ${#full} -gt $MAX_LENGTH ]; then
        full="${full:0:$MAX_LENGTH}…"
    fi

    echo "{\"text\": \"$full\", \"tooltip\": \"$title - $artist\"}"
else
    echo "{\"text\": \"No media\"}"
fi



