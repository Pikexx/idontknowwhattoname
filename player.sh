#!/bin/bash

# Check status for Spotify and mpv
spotify_status=$(playerctl --player=spotify status 2>/dev/null)
mpv_status=$(playerctl --player=mpv status 2>/dev/null)

if [[ $spotify_status == "Playing" || $spotify_status == "Paused" ]]; then
    artist=$(playerctl --player=spotify metadata artist)
    title=$(playerctl --player=spotify metadata title)
    echo "󰎆 $artist - $title"
elif [[ $mpv_status == "Playing" || $mpv_status == "Paused" ]]; then
    artist=$(playerctl --player=mpv metadata artist)
    title=$(playerctl --player=mpv metadata title)
    echo "󰎆 $artist - $title"
else
    echo "No Myusik"
fi
