#! /bin/fish

set CMD hyprctl dispatch layoutmsg

set TOP orientationtop
set LEFT orientationleft
set BOT orientationbottom
set RIGHT orientationright

set -gx MODE $argv
echo $MODE

switch $MODE
  case 0
    set DIRECTION $TOP
  case 1
    set DIRECTION $LEFT
end

$CMD $DIRECTION
# hyprctl dispatch layoutmsg orientationright
# hyprctl dispatch layoutmsg orientationtop
