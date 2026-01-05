#!/usr/bin/env bash

dir="$HOME/Videos/Recordings"
pidfile="/tmp/wf-recorder.pid"
time=$(date +'%Y_%m_%d_at_%Hh%Mm%Ss')
file="${dir}/Recording_${time}.mp4"

start_recording() {
    if [[ -f "$pidfile" ]]; then
        notify-send -u normal "Screen Recording" "Recording is already in progress"
        exit 1
    fi

    if [[ ! -d "$dir" ]]; then
        mkdir -p "$dir"
    fi

    # Start wf-recorder with area selection and audio
    wf-recorder -g "$(slurp)" -a -f "$file" &
    echo $! > "$pidfile"
    
    notify-send -u normal "Screen Recording" "Recording started"
}

stop_recording() {
    if [[ ! -f "$pidfile" ]]; then
        notify-send -u critical "Screen Recording" "No recording in progress"
        exit 1
    fi

    pid=$(cat "$pidfile")
    kill -INT "$pid" 2>/dev/null
    rm "$pidfile"
    
    notify-send -u normal "Screen Recording" "Recording saved to:\n$file"
}

if [[ "$1" == "--start" ]]; then
    start_recording
elif [[ "$1" == "--stop" ]]; then
    stop_recording
else
    # Toggle: stop if recording, start if not
    if [[ -f "$pidfile" ]]; then
        stop_recording
    else
        start_recording
    fi
fi

exit 0
