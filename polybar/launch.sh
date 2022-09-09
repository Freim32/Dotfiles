#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

# Launch main bar
polybar main &

# Launch second bar
if [[ $(xrandr -q | grep 'HDMI-A-0 connected') ]]; then
    polybar external &
fi