#!/usr/bin/env bash

# Get current keyboard layout and display short code

layout=$(hyprctl devices -j | jq -r '.keyboards[0].active_keymap')

case "$layout" in
    *"English"*|*"US"*)
        echo "US"
        ;;
    *"Khmer"*|*"Cambodia"*)
        echo "KH"
        ;;
    *)
        echo "??"
        ;;
esac
