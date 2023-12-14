#!/bin/bash

calculate_duration() {
    local start_time=$1
    local end_time=$2

    local start_seconds=$(date -d "$start_time" '+%s')
    local end_seconds=$(date -d "$end_time" '+%s')
    local duration_seconds=$((end_seconds - start_seconds))

    
    local hours=$((duration_seconds / 3600))
    local minutes=$(( (duration_seconds % 3600) / 60 ))

    echo "$hours hours and $minutes minutes"
}

if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <start_time> <end_time>"
    exit 1
fi

start_time=$1
end_time=$2

duration=$(calculate_duration "$start_time" "$end_time")

echo $duration
