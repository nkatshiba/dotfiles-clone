#! /bin/fish
# cliphist list | fzf -d \t --with-nth 2 --reverse | cliphist decode | wl-copy
cliphist list | fzf -d \t --with-nth 2 | cliphist decode | wl-copy
hyprctl dispatch closewindow title:cliphist-fzf
