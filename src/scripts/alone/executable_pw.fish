#! /bin/fish

# set pw zZz/pw

# pass $pw | wl-copy -n
# wtype (pass zZz/pw)

hyprctl dispatch exec wtype (pass zZz/pw)
