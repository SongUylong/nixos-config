#!/usr/bin/env bash

# Prompt for search query using rofi with clean minimal styling
query=$(rofi -dmenu -p " " -theme-str '
    window {
        width: 700px;
        height: 80px;
        border: 3px;
        border-color: #89b4fa;
        background-color: #1e1e2e;
        location: center;
        border-radius: 12px;
    }
    mainbox {
        background-color: #1e1e2e;
        children: [inputbar];
    }
    inputbar {
        children: [prompt, entry];
        background-color: #1e1e2e;
        padding: 16px;
        spacing: 12px;
    }
    prompt {
        background-color: #a6e3a1;
        padding: 12px 16px;
        text-color: #1e1e2e;
        font: "Maple Mono Bold 16";
        enabled: true;
        border-radius: 8px;
    }
    entry {
        padding: 12px 16px;
        text-color: #cdd6f4;
        background-color: #181825;
        font: "Maple Mono 16";
        placeholder: "Search the web...";
        placeholder-color: #6c7086;
        border-radius: 8px;
    }
    listview {
        enabled: false;
    }
')

# If user entered something, search with Zen Browser
if [ -n "$query" ]; then
    zen-beta --search "$query"
fi
