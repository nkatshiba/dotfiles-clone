function quick_config

    set OPT conf.d/ hyprland qute fish nvim qute-profiles kittycat nvim-plugins way keyd mako tmux "\*_cols_\*" "\*_self_\*"
    set CHOICE (string split " " $OPT | fzf)
    echo $CHOICE

    set CFG $HOME/.config
    set HYPR $HOME/.config/hypr/conf.d
    set HYPRLAND $HOME/.config/hypr/
    # set FIFU $HOME/.config/fish/functions
    # set WHABB $HOME/.config/fish/abbreviations
    set FISH $HOME/.config/fish
    set QUTE $HOME/.config/qutebrowser
    set QUTE_PROFILES $HOME/.config/qutebrowser/qbpm_profiles
    set NVIM $HOME/.config/nvim
    set NVIM_PLUGINS $HOME/.config/nvim/lua/custom/plugins
    set KITTYCAT $HOME/.config/kitty
    set WAY $HOME/.config/waybar
    set MAKO $HOME/.config/mako
    set TMUX $HOME/.config/tmux
    set COLS $HOME/.nb/colors/QUICK_CONFIG_COLORS
    set KEYD_FILE $HOME/.sydf/etc/keyd/default.conf
    set KEYD_FILE_SYDF $HOME/.sydf/etc/keyd/default.conf 

    switch $CHOICE


        case "hyprland"
            cd $HYPRLAND
            cme hyprland.conf
        case "conf.d/"
            cd $HYPR
            # cme (ls | fzf)
            cme (eza --classify --sort modified --reverse | fzf)

        case "fish"
            cd $FISH
            cme config.fish

        # case "fifu"
        #     cd $FIFU
        #     cme (eza --classify --sort modified --reverse | fzf)
        #
        # case "whabb"
        #     cd $WHABB
        #     cme (eza --classify --sort modified --reverse | fzf)

        case "qute"
            cd $QUTE
            set QUTE_OPT "config.py userscripts/ quickmarks"
            set QUTE_CHOICE (string split " " $QUTE_OPT | fzf)
            if test -d $QUTE_CHOICE
                cd $QUTE_CHOICE
                cme (eza --sort modified --reverse | fzf)
            else
                cme $QUTE_CHOICE
            end

        case "qute-profiles"
            cd $QUTE_PROFILES
            # cme config
            # makoctl reload
            set DIR (eza --classify --sort modified --reverse | fzf)
            cd "$DIR/config"
            echo "c.colors.webpage.darkmode.enabled = False" | wl-copy -n
            cme config.py


        case "nvim"
            cd $NVIM
            cme init.lua

        case "nvim-plugins"
            cd $NVIM_PLUGINS
            cme (eza --classify --sort modified --reverse | fzf)

        case "way"
            cd $WAY

            cme (eza -F *aoc* *benq* config style.css colors.css --sort modified --reverse | fzf)
            # set WAY_OPT (eza -F *aoc* *benq* config style.css colors.css --sort modified --reverse | fzf)
            # set WAY_CHOICE (string split " " $WAY_OPT | fzf)
            # eza --sort modified --reverse 
                cme (eza --sort modified --reverse | fzf)
            # else
                # cme $WAY_CHOICE
            # end

        case "kittycat"
            cd $KITTYCAT
            cme (eza --classify --sort modified --reverse kitty.conf grab.conf | fzf)

        case "way"
            cd $WAY

            cme (eza -F *aoc* *benq* config style.css colors.css --sort modified --reverse | fzf)
            # set WAY_OPT (eza -F *aoc* *benq* config style.css colors.css --sort modified --reverse | fzf)
            # set WAY_CHOICE (string split " " $WAY_OPT | fzf)
            # eza --sort modified --reverse 
                cme (eza --sort modified --reverse | fzf)
            # else
                # cme $WAY_CHOICE
            # end

        case "keyd"
            vi $KEYD_FILE
            chezmoi add $KEYD_FILE_SYDF

        case "mako"
            cd $MAKO
            cme config
            makoctl reload
            notify-send -r 464 -c reload "[MAKO]" "RELOADED MAKO"

        case "tmux"
            cd $TMUX
            cme tmux.conf
            tmux kill-server
            tmux
            notify-send -r 484 -c reload "[TMUX]" "RELOADED TMUX"

        # *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** ***
        # *** *** *** *** *** *** *** *** *** *** *** *** *** *** *** ***
        case \*_cols_\*
            cd $COLS
            # cme (eza --classify --sort modified --reverse | fzf)
            cme $HOME/.nb/colors/QUICK_CONFIG_COLORS/quick_colors.fish

        case \*_self_\*
            cme $HOME/.config/fish/functions/quick_config.fish

    end
end
