#! /bin/fish

set COLORS /home/tildavimer/src/scripts/app-specific/hyprpicker/colors.txt

bat $COLORS | while read -l colors
pastel color $colors
end
