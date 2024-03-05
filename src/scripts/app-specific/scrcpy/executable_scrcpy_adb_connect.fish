#! /usr/bin/env fish

set IP (adb shell ip route | awk '{print $9}')
set PORT 5037
set ADR $IP:$PORT

adb kill-server

sleep 1

adb connect $ADR

hyprctl dispatch exec scrcpy -- -e


