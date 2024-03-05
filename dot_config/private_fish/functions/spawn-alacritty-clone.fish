function spawn-alacritty-clone
    hyprctl dispatch exec -- alacritty --working-directory $PWD &; disown
    # alacritty --working-directory $PWD -e fish -c "nvim"
end


