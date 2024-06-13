#!/usr/bin/bash
#===============================================================================
# Configuration

TARGET_LINK="https://docs.google.com/presentation/d/e/2PACX-1vSwNsTygYKXvzJn2uKJUnSRNpU_xZe7IKSKJFvGxHobxuRVYGFseqzwX7adX2hHza1r1-Usdli5IflP/pub?start=true&loop=true&delayms=10000&slide=id.g28f81d2bf08_4_0"

#===============================================================================

sleep 3
chromium-browser "$TARGET_LINK" --kiosk --noerrdialogs --disable-infobars --no-first-run --start-maximized --no-sandbox &
sleep 5
export Display=:0
export XAUTHORITY=/root/.Xauthority
count="0"
xdotool mousemove 0 10000
xdotool click --delay 0 --repeat 1 1
while true
do
  ((count++))
  sleep 1
  xdotool mousemove 10000 10000
  xdotool mousemove 0 10000
  if ((count > 300)); then
    xdotool key ctrl+r
    ((count2++))
    count="0"
    clear
  fi
  if ((count2 > 1000)); then
    sudo apt update
    sudo apt upgrade -y
    count2="0"
  fi
done
