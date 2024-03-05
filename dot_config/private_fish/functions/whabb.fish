function whabb

    set FUNCS $HOME/.config/fish/functions
    set ABBRS $HOME/.config/fish/abbreviations

    function rg_abbrs
        echo "ABBRS:"
        rg --no-ignore --hidden "$argv[1]" $ABBRS
    end

    function rg_funcs
        echo "FUNCS:"
        rg --no-ignore --hidden "$argv[1]" $FUNCS
    end

    clear -x

    switch $argv[2]
        case -f
            cd $FUNCS
            rg_funcs "$argv[1]"
        case -ea
            pass
        case -ef
            pass
        case '*'
            cd $ABBRS
            rg_abbrs "$argv[1]"
    end
end
