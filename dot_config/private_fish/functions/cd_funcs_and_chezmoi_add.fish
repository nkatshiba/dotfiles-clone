function cd_funcs_and_chezmoi_add

    cd $HOME/.config/fish/functions

    # get file
    set FILE (ls | gum filter)

    # edit file
    nvim $FILE

    # dunstify
    dunstify "$FILE > cm"

    # cm add file
    chezmoi add $FILE

end
