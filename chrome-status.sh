#!/bin/bash

while true; do
    # Get the current time
    current_time=$(date +"%Y-%m-%d %H:%M:%S")

    # Check if Google Chrome is running using pgrep
    if pgrep -x "chrome" > /dev/null
    then
        echo "[$current_time] Google Chrome is running." >> /home/hp/Pradeep-practice/linux/chrome-status.txt
    else
        echo "[$current_time] Google Chrome is not running." >> /home/hp/Pradeep-practice/linux/chrome-status.txt
    fi

    # Wait for 5 seconds before repeating the loop
    sleep 5
done
