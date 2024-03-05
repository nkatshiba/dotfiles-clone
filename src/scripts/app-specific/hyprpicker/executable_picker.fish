#! /bin/fish

set ARG $argv
set COLORS /home/tildavimer/src/scripts/app-specific/hyprpicker/colors.txt
set DISPLAY /home/tildavimer/src/scripts/app-specific/hyprpicker/display.fish
# set DATE $($HOME/src/scripts/system-specific/date/getdate.fish 1)



function display_color
    pastel color $argv
end

function copy_color
    echo $argv | wl-copy -n
end

function is_it_trimmed
  set BOOL $argv[1]


  if test $BOOL -eq 1
    echo "TRUE"
  else if test $BOOL -eq 0
    echo "FALSE"
  else
    echo "SHOW"
  end

end

function main

  set CONDITION (is_it_trimmed $ARG)

  if test $CONDITION = "TRUE"
    set COLOR_FULL $(hyprpicker)
    set COLOR_CLEAN (string trim $COLOR_FULL -c '#')
    display_color $COLOR_CLEAN
    copy_color $COLOR_CLEAN
    wl-paste >> $COLORS

  else if test $CONDITION = "FALSE" 
    exec $DISPLAY
  else if test $CONDITION = "SHOW" 
    exec bat $COLORS
  end

end

main
