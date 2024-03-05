function cd_abbrs_and_chezmoi_add

    cd $HOME/.config/fish/abbreviations

    # get file
    set FILE (ls | gum filter)

    # edit file
    nvim $FILE

    # dunstify
    dunstify "$FILE > cm"

    # cm add file
    chezmoi add $FILE



end
