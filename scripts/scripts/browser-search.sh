#!/usr/bin/env bash

# Prompt for search query using rofi
query=$(rofi -dmenu -p "Search" -theme-str 'window {width: 50%;} listview {lines: 0;}')

# If user entered something, search with Zen Browser
if [ -n "$query" ]; then
    zen-beta --search "$query"
fi
