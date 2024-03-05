# hyprctl
## general
abbr -a h hyprctl
abbr -a hm 'hyprctl monitors'
# abbr -a hw 'hyprctl workspaces'
abbr -a hwiki 'hyprwiki'
abbr -a hw 'hyprctl workspaces'
abbr -a hd 'hyprctl dispatch'
abbr -a hde 'hyprctl dispatch exec'
abbr -a hcr 'hyprctl clients | rg'
abbr -a hct 'hyprctl clients | rg "title"'
abbr -a hcc 'hyprctl clients | rg "class"'
abbr -a hr 'hyprctl reload'
abbr -a hdE 'hyprctl dispatch exit'
abbr -a hdw 'hyprctl dispatch workspace'

abbr -a hn 'hyprctl notify -1 10000 rgb(ff1ea3) && commandline -a '
abbr -a hns 'notify-send -t 750 -r 164 -c wlp "$CUR"'
abbr -a hdl 'hyprctl dispatch layoutmsg'

# layout
# abbr -a hdl 'hyprctl dispatch layoutmsg orientationtop'
# abbr -a hwl 'hyprctl dispatch layoutmsg orientationleft'
# abbr -a hwb 'hyprctl dispatch layoutmsg orientationbottom'
# abbr -a hwr 'hyprctl dispatch layoutmsg orientationright'
# hyprctl dispatch workspace 11

abbr -a back "hyprctl dispatch exec 'sleep 2 && wtype -k backslash' && exit"
abbr -a pin '$HOME/src/scripts/alone/pin.fish;exit'
abbr -a haw 'sleep 2 && hyprctl activewindow && exit'
