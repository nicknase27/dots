#!/bin/bash

MAX_LENGTH=40  # You can tweak this depending on your screen width

# Get the first active player that includes "Feishin"
player=$(playerctl -l 2>/dev/null | grep -i "Feishin" | head -n 1)

# If no matching player found
if [[ -z "$player" ]]; then
    echo ""
    exit 0
fi

# Check if it's playing or paused
status=$(playerctl --player="$player" status 2>/dev/null)
if [[ "$status" != "Playing" && "$status" != "Paused" ]]; then
    echo ""
    exit 0
fi

# Get metadata
title=$(playerctl --player="$player" metadata title 2>/dev/null)
artist=$(playerctl --player="$player" metadata artist 2>/dev/null)
info="$title - $artist"

# Trim long info
if [ ${#info} -gt $MAX_LENGTH ]; then
    info="${info:0:$MAX_LENGTH}…"
fi

echo "$info"

