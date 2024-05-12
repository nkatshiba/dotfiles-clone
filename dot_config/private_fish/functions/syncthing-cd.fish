function syncthing-cd
    set -l DATA $HOME/syncthing

    cd $DATA 
    pwdcp

    while true
        if test -n "$(ls -D)"
            set SUB_DIR (eza -D --classify --sort modified -1 | fzf --tac)
            cd $SUB_DIR
        else
            break
        end
    end

    echo ""
    ls

    abbr -a stm 'command mpv *'

    abbr -a stm-new 'mpv (eza --classify --sort modified -1)'
    abbr -a stm-old 'mpv (eza --classify --sort modified -1 --reverse)'
end
