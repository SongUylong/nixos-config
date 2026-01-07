#!/usr/bin/env bash

# Prompt for search query using rofi with clean minimal styling
query=$(rofi -dmenu -p " " -theme-str '
    window {
        width: 600px;
        height: 60px;
        border: 2px;
        border-color: #89b4fa;
        background-color: #1e1e2e;
        location: center;
    }
    mainbox {
        background-color: #1e1e2e;
        children: [inputbar];
    }
    inputbar {
        children: [prompt, entry];
        background-color: #1e1e2e;
        padding: 12px;
    }
    prompt {
        background-color: #a6e3a1;
        padding: 8px 12px;
        text-color: #1e1e2e;
        font: "Maple Mono Bold 14";
        enabled: true;
    }
    entry {
        padding: 8px 12px;
        text-color: #cdd6f4;
        background-color: #181825;
        font: "Maple Mono 14";
        placeholder: "Search the web...";
        placeholder-color: #6c7086;
    }
    listview {
        enabled: false;
    }
')

# If user entered something, search with Zen Browser
if [ -n "$query" ]; then
    zen-beta --search "$query"
fi
