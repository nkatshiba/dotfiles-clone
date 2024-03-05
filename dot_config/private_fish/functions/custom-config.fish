function __cd_to_dir
    set APPS CD HYPRLAND QUTE KITTY FISH TMUX NVIM WAYBAR ALACRITTY SELF
    j ~/
    clear -x


    switch (gum filter --fuzzy --header="Select DIR" --placeholder="" $APPS)

        case "$APPS[1]"  # cd
            set DIR $HOME/.config
            cd $DIR
            return 0

        case "$APPS[2]"  # hypr
            set DIR $HOME/.config/hypr/conf.d
            set APP "$APPS[2]"

        case "$APPS[3]"  # qute
            set DIR $HOME/.config/qutebrowser
            set APP "$APPS[3]"

        case "$APPS[4]"  # kitty
            set DIR $HOME/.config/kitty
            set APP "$APPS[4]"

        case "$APPS[5]"  # fish
            set DIR $HOME/.config/fish
            set APP "$APPS[5]"

        case "$APPS[6]"  # tmux
            set DIR $HOME/.config/tmux
            set APP "$APPS[6]"

        case "$APPS[7]"  # nvim
            set DIR $HOME/.config/nvim
            set APP "$APPS[7]"

        case "$APPS[8]"  # waybar
            set DIR $HOME/.config/waybar
            set APP "$APPS[8]"

        case "$APPS[9]"  # alacritty
            set DIR $HOME/.config/alacritty
            set APP "$APPS[9]"

        case "$APPS[-1]"  # self
            set FILE $HOME/.config/fish/functions/custom-config.fish
            vi $FILE
            chezmoi add $FILE
            return 0
    end

    set -g DIR $DIR
    set -g APP $APP
    cd $DIR

end


function __action


    switch $APP

        case HYPRLAND
            set OPT (gum filter --fuzzy "(conf.d)" "hyprland.conf")
            if test "$OPT" = "(conf.d)"
                set -g FILE (gum filter --fuzzy (ls))
            else
                jj .config/hypr
                set -g FILE "hyprland.conf"
            end
            hyprland_action

        case QUTE
            set OPT (gum filter --fuzzy "config.py" "(qbpm)" "(greasemonkey)" "(userscripts)")
            if test "$OPT" = "config.py"
                set -g FILE "$OPT"
            else if test "$OPT" = "(qbpm)"
                jj ~/k/qute-profiles
                set DIR (gum filter --fuzzy (ls))
                set CONFIG "$DIR/config"
                cd $CONFIG
                set -g FILE "config.py"
            else if test "$OPT" = "(greasemonkey)"
                jj ~/.config/qutebrowser/greasemonkey
                set -g FILE (gum filter --fuzzy (ls))
            else if test "$OPT" = "(userscripts)"
                jj ~/.config/qutebrowser/userscripts
                set -g FILE (gum filter --fuzzy (ls))
            end
            qute_action

        case KITTY
            set OPT (gum filter --fuzzy "kitty.conf" "(others)")
            if test "$OPT" = "kitty.conf"
                set -g FILE "kitty.conf"
            else
                set -g FILE (gum filter --fuzzy (ls))
            end
            kitty_action

        case FISH
            set OPT (gum filter --fuzzy "config.fish" "<ABBRS>" "<FUN>")
            if test "$OPT" = "config.fish"
                set -g FILE "$OPT"
            else if test "$OPT" = "<ABBRS>"
                jj fish abbrev
                set CMD (gum filter --fuzzy  "<BROWSE>" "<SEARCH>")
                    if test "$CMD" = "<BROWSE>"
                        set -g FILE (gum filter --fuzzy (ls))
                    else if test "$CMD" = "<SEARCH>"
                        set RG_STR (gum input --header "rg [str] in abbr" --placeholder "str")
                        rg --context 2 "$RG_STR"
                        return 0
                    end
            else if test "$OPT" = "<FUN>"
                jj fish fun
                set CMD (gum filter --fuzzy "<BROWSE>" "<SEARCH>")
                    if test "$CMD" = "<BROWSE>"
                        set -g FILE (gum filter --fuzzy (ls))
                    else if test "$CMD" = "<SEARCH>"
                        set RG_STR (gum input --header "rg [str] in abbr" --placeholder "str")
                        rg --context 2 "$RG_STR"
                        return 0
                    end
            end
            fish_action

        case TMUX
            set -g FILE "tmux.conf"
            tmux_action

        case NVIM
            set OPT (gum filter --fuzzy "init.lua" "(plugins)")
            if test "$OPT" = "init.lua"
                set -g FILE "$OPT"
            else
                jj nvim lua custom plugins
                set -g FILE (gum filter --fuzzy (ls))
            end
            nvim_action

        case WAYBAR
            set -g FILE (gum filter --fuzzy (ls))
            waybar_action

        case ALACRITTY
            set -g FILE "alacritty.yml"
            alacritty_action
    end

end

function hyprland_action
    nvim $FILE
    chezmoi add $FILE
end

function qute_action
    nvim -c "LspStop 0" $FILE
    chezmoi add $FILE
end

function kitty_action
    nvim $FILE
    chezmoi add $FILE
end

function fish_action
    nvim $FILE
    chezmoi add $FILE
end

function tmux_action
    nvim $FILE
    chezmoi add $FILE
end

function nvim_action
    nvim $FILE
    chezmoi add $FILE
end

function waybar_action
    nvim $FILE
    chezmoi add $FILE
end

function alacritty_action
    nvim $FILE
    chezmoi add $FILE
end


function custom-config
    __cd_to_dir
    __action
end
