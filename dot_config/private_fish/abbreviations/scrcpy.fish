# scrcpy
# abbr -a spy '$HOME/src/scripts/app-specific/scrcpy/scrcpy_adb_connect.fish'
# abbr -a spy 'kitty $HOME/src/scripts/app-specific/scrcpy/scrcpy_adb_connect.fish'
abbr -a spy 'adb kill-server && hyprctl dispatch exec scrcpy'
