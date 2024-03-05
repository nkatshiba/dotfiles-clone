#! /usr/bin/env fish

# command fuzzel -I --terminal="kitty" --tabs="4" --background="#0E0A12ff" --text-color="#ffd4ffff" --match-color="#f9d726ff" --selection-color="#6cee97ff" --selection-text-color="#0E0A12ff" --selection-match-color="#f92672ff" --border-color="#f9d726ff" --border-width="2" --border-radius="5" --layer="overlay" --font="FiraCode Nerd Font Mono:weight=semibold:size=10" $argv

set CMD fuzzel
set ICON --no-icons
set TERMINAL --terminal="kitty"
set TABS --tabs="4"
set BORDER_ARGS --border-width="2" --border-radius="5"
set MODE --layer="overlay"
set FONT --font="FiraCode Nerd Font Mono:weight=semibold:size=10"

set NOT_COL_ARGS $ICON $TERMINAL $TABS $BORDER_ARGS $MODE $FONT
# colors
set BG --background="#0E0A12ff"
set FG --text-color="#a271a9ff"
set SEL_BG --selection-color="#4B1659ff"
set SEL_FG --selection-text-color="#ffd4ffff"
set SEL_MATCH --selection-match-color="#f92672ff"
set MATCH --match-color="#6cee97ff"
set BORDER --border-color="#f9d726ff"
set COL_ARGS $BG $FG $MATCH $SEL_BG $SEL_FG $SEL_MATCH $BORDER
command $CMD $NOT_COL_ARGS $COL_ARGS $argv
