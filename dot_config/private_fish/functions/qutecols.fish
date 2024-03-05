function qutecols
    set COLORS $HOME/.config/qutebrowser/qute_colors.txt
    bat $COLORS | while read -l colors
    pastel color $colors
    end
end
