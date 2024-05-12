function log
    set LOGFILE (eza --classify --sort created logs/ | fzf --tac)
    while true
        clear -x
        cat "logs/$LOGFILE"
        sleep 2
    end
    # commandline -i "$LOGFILE"
end
