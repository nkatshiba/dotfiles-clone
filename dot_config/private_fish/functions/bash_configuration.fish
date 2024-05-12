function bash_configuration

    set BASH_CONF_DIR $HOME/.bash_conf
    set BASH_FUNCTIONS_DIR $HOME/.bash_functions
    set BASH_FTBANG "# vim: ft=sh:"
    set BASH_SHEBANG "#!/usr/bin/env bash"

    set OPTIONS .bashrc aliases functions/ conf/ ftbang shebang

    for OPT in $OPTIONS
        echo $OPT
    end | fzf | read -l CHOICE

    switch $CHOICE

        case .bashrc
            chezmoi edit $HOME/.bashrc

        case aliases
            chezmoi edit $BASH_CONF_DIR/aliases

        case conf/
            cd $BASH_CONF_DIR
            chezmoi edit (eza --classify --sort modified -1 | fzf --tac)

        case functions/
            cd $BASH_FUNCTIONS_DIR
            chezmoi edit (eza --classify --sort modified -1 | fzf --tac)

        case ftbang
            echo $BASH_FTBANG | wl-copy -n

        case shebang
            echo $BASH_SHEBANG | wl-copy -n

    end
    

end


