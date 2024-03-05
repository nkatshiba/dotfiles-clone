function blank
    set BLANK_DIR $HOME/Pictures/wallpapers/blank
    set COLOR (eza --classify --sort name --reverse $BLANK_DIR | fzf | bat -)
    set COLOR_PATH $BLANK_DIR"/"$COLOR

    kitten @ launch --type os-window --title "title" fish -c "hyprctl dispatch exec imv $COLOR_PATH && hyprctl dispatch exec imv $COLOR_PATH"
    kitten @ close-window --self
    
end
